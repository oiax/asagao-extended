require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  test "factory girl" do
    member = FactoryGirl.create(:member)
    assert_equal "Yamada Taro", member.full_name
  end

  test "authenticate" do
    member = FactoryGirl.create(:member, name: "taro",
      password: "happy", password_confirmation: "happy")
    assert_nil Member.authenticate("taro", "lucky")
    assert_equal member, Member.authenticate("taro", "happy")
  end

  test "followees" do
    taro = FactoryGirl.create(:member, name: "taro")
    jiro = FactoryGirl.create(:member, name: "jiro")
    hanako = FactoryGirl.create(:member, name: "hanako")
    taro.followees << jiro
    taro.followees << hanako
    assert_equal 2, taro.followees.count
  end

  test "followers" do
    taro = FactoryGirl.create(:member, name: "taro")
    jiro = FactoryGirl.create(:member, name: "jiro")
    hanako = FactoryGirl.create(:member, name: "hanako")
    taro.followers << jiro
    taro.followers << hanako
    assert_equal 2, taro.followers.count
  end
end
