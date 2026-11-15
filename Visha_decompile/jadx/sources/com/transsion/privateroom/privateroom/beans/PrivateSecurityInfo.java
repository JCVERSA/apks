package com.transsion.privateroom.privateroom.beans;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;

@Keep
public class PrivateSecurityInfo {
    private static final String TAG = "PrivateSecurityInfo";
    private String mEncryptedEmail;
    private String mEncryptedPassword;

    public void clear() {
        this.mEncryptedPassword = "";
        this.mEncryptedEmail = "";
    }

    public String getEncryptedEmail() {
        return this.mEncryptedEmail;
    }

    public String getEncryptedPassword() {
        return this.mEncryptedPassword;
    }

    public void setEncryptedEmail(String str) {
        this.mEncryptedEmail = str;
    }

    public void setEncryptedPassword(String str) {
        this.mEncryptedPassword = str;
    }

    @NonNull
    public String toString() {
        return "PrivateSecurityInfo{mEncryptedPassword='" + this.mEncryptedPassword + "', mEncryptedEmail='" + this.mEncryptedEmail + "'}";
    }
}
