package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;

public class Sj {

    static class C0208Sj {
        static final Random Sj = Sj.TKC();
    }

    public static JSONObject Sj(JSONObject jSONObject) {
        return jSONObject == null ? new JSONObject() : Sj(jSONObject.toString());
    }

    public static String TKC(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String strSj = Sj(str.substring(1, 33), 32);
        String strSubstring = str.substring(33, 49);
        return (strSubstring == null || strSj == null) ? str : com.bytedance.sdk.component.EjP.Sj.sP(str.substring(49), strSubstring, strSj);
    }

    public static String sP(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strSj = Sj();
        String strSj2 = Sj(strSj, 32);
        String strSP = sP();
        return 3 + strSj + strSP + ((strSj2 == null || strSP == null) ? null : com.bytedance.sdk.component.EjP.Sj.Sj(str, strSP, strSj2));
    }

    public static JSONObject Sj(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            try {
                String strSP = sP(str);
                if (!TextUtils.isEmpty(strSP)) {
                    jSONObject.put("message", strSP);
                    jSONObject.put("cypher", 3);
                } else {
                    jSONObject.put("message", str);
                    jSONObject.put("cypher", 0);
                }
            } catch (Throwable th2) {
                th2.getMessage();
            }
        } catch (Throwable unused) {
            jSONObject.put("message", str);
            jSONObject.put("cypher", 0);
        }
        return jSONObject;
    }

    public static Random TKC() {
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                return SecureRandom.getInstanceStrong();
            } catch (Throwable unused) {
                return new SecureRandom();
            }
        }
        return new SecureRandom();
    }

    public static String sP() {
        String strSj = Sj(8);
        if (strSj == null || strSj.length() != 16) {
            return null;
        }
        return strSj;
    }

    public static String Sj() {
        String strSj = Sj(16);
        if (strSj == null || strSj.length() != 32) {
            return null;
        }
        return strSj;
    }

    public static String Sj(String str, int i10) {
        if (str == null || str.length() != i10) {
            return null;
        }
        int i11 = i10 / 2;
        return str.substring(i11, i10) + str.substring(0, i11);
    }

    public static String Sj(int i10) {
        try {
            byte[] bArr = new byte[i10];
            C0208Sj.Sj.nextBytes(bArr);
            return HiB.Sj(bArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
