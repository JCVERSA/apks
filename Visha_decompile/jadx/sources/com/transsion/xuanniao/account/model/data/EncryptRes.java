package com.transsion.xuanniao.account.model.data;

import android.text.TextUtils;
import com.google.gson.Gson;
import defpackage.mk7;
import defpackage.nr7;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptRes implements Serializable {
    public String responseData;
    public String responseSign;

    public boolean checkSign() {
        byte[] bArrDigest;
        if (!TextUtils.isEmpty(this.responseData) && !TextUtils.isEmpty(this.responseSign)) {
            try {
                byte[] bArrC = nr7.c(this.responseData);
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                    messageDigest.update(bArrC);
                    bArrDigest = messageDigest.digest();
                } catch (NoSuchAlgorithmException e) {
                    e.printStackTrace();
                    bArrDigest = null;
                }
                return nr7.b(bArrDigest, this.responseSign, Key.PUBLIC_KEY);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public String dataJson(mk7 mk7Var) {
        if (mk7Var == null) {
            return "";
        }
        try {
            return new String(mk7Var.a(nr7.c(this.responseData)));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public boolean isSafe(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        BaseEncryptRes baseEncryptRes = (BaseEncryptRes) new Gson().fromJson(str, BaseEncryptRes.class);
        if (TextUtils.isEmpty(baseEncryptRes.verifyId)) {
            return true;
        }
        return TextUtils.equals(baseEncryptRes.verifyId, str2);
    }
}
