package com.transsion.usercenter.edit;

import com.transsnet.loginapi.bean.UserInfo;

public interface b {
    void onEditProfile(boolean z10);

    void onError(String str, String str2);

    void onUserInfo(UserInfo userInfo);
}
