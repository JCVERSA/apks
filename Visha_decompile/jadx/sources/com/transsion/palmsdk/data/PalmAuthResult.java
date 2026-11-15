package com.transsion.palmsdk.data;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import java.io.Serializable;
import org.json.JSONObject;

public class PalmAuthResult implements Serializable {
    private PalmAuthInfo authInfo;
    private PalmUserInfo userInfo;

    public PalmAuthResult(Bundle bundle) {
        String string = bundle.getString("user_info");
        if (!TextUtils.isEmpty(string)) {
            if (string.contains("phone") || string.contains(NotificationCompat.CATEGORY_EMAIL)) {
                this.userInfo = new PalmAccountInfo(string);
            } else {
                this.userInfo = new PalmUserInfo(string);
            }
        }
        String string2 = bundle.getString(SniffSoucreBean.JSON_KEY_TOKEN_INFO);
        if (TextUtils.isEmpty(string2)) {
            return;
        }
        if (string2.contains(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE)) {
            this.authInfo = new PalmAuthCodeInfo(string2);
        } else {
            this.authInfo = new PalmTokenInfo(string2);
        }
    }

    public String getAccessToken() {
        PalmAuthInfo palmAuthInfo = this.authInfo;
        if (palmAuthInfo instanceof PalmTokenInfo) {
            return ((PalmTokenInfo) palmAuthInfo).access_token;
        }
        return null;
    }

    public String getAuthCode() {
        PalmAuthInfo palmAuthInfo = this.authInfo;
        if (palmAuthInfo instanceof PalmAuthCodeInfo) {
            return ((PalmAuthCodeInfo) palmAuthInfo).authCode;
        }
        return null;
    }

    public String getAvatarUrl() {
        PalmUserInfo palmUserInfo = this.userInfo;
        if (palmUserInfo != null) {
            return palmUserInfo.avatarUrl;
        }
        return null;
    }

    public int getExpiresIn() {
        PalmAuthInfo palmAuthInfo = this.authInfo;
        if (palmAuthInfo instanceof PalmTokenInfo) {
            return ((PalmTokenInfo) palmAuthInfo).expires_in;
        }
        return 0;
    }

    public String getNickName() {
        PalmUserInfo palmUserInfo = this.userInfo;
        if (palmUserInfo != null) {
            return palmUserInfo.nickName;
        }
        return null;
    }

    public String getOpenid() {
        PalmAuthInfo palmAuthInfo = this.authInfo;
        if (palmAuthInfo instanceof PalmAuthCodeInfo) {
            return ((PalmAuthCodeInfo) palmAuthInfo).openid;
        }
        if (palmAuthInfo instanceof PalmTokenInfo) {
            return ((PalmTokenInfo) palmAuthInfo).openid;
        }
        return null;
    }

    public String getRefreshToken() {
        PalmAuthInfo palmAuthInfo = this.authInfo;
        if (palmAuthInfo instanceof PalmTokenInfo) {
            return ((PalmTokenInfo) palmAuthInfo).refresh_token;
        }
        return null;
    }

    public String getUniqueId() {
        PalmAuthInfo palmAuthInfo = this.authInfo;
        if (palmAuthInfo instanceof PalmTokenInfo) {
            return ((PalmTokenInfo) palmAuthInfo).uniqueId;
        }
        return null;
    }

    public String getUserName() {
        PalmUserInfo palmUserInfo = this.userInfo;
        if (palmUserInfo != null) {
            return palmUserInfo.userName;
        }
        return null;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.userInfo != null) {
            sb.append("userName = ");
            sb.append(this.userInfo.userName);
            sb.append(ProcessInfo.SPLIT_NEW_VERSION);
            sb.append("nickName = ");
            sb.append(this.userInfo.nickName);
            sb.append(ProcessInfo.SPLIT_NEW_VERSION);
        }
        PalmAuthInfo palmAuthInfo = this.authInfo;
        if (palmAuthInfo != null) {
            if (palmAuthInfo instanceof PalmAuthCodeInfo) {
                sb.append("auth_code = ");
                sb.append(((PalmAuthCodeInfo) palmAuthInfo).authCode);
                sb.append(ProcessInfo.SPLIT_NEW_VERSION);
            } else {
                sb.append("access_token = ");
                sb.append(((PalmTokenInfo) palmAuthInfo).access_token);
                sb.append(ProcessInfo.SPLIT_NEW_VERSION);
            }
        }
        return sb.toString();
    }

    public PalmAuthResult(String str, String str2) {
        String str3;
        String str4;
        if (TextUtils.isEmpty(str2)) {
            str3 = null;
            str4 = null;
        } else {
            PalmAccountInfo palmAccountInfo = new PalmAccountInfo(str2);
            str3 = palmAccountInfo.openId;
            str4 = palmAccountInfo.uniqueId;
            this.userInfo = palmAccountInfo;
        }
        try {
            this.authInfo = new PalmTokenInfo(new JSONObject().put("access_token", str).put("open_id", str3).put("unique_id", str4).toString());
        } catch (Exception unused) {
        }
    }
}
