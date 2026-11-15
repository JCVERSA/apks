package com.hunantv.imgo.util;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.just.agentweb.DefaultWebClient;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class u {
    private static String a = "[一-龥]";

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes(Charset.forName("UTF-8")));
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(ProxyConfig.MATCH_HTTP) || str.startsWith(ProxyConfig.MATCH_HTTPS);
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str) || !str.contains(".apk")) {
            return false;
        }
        return str.startsWith(ProxyConfig.MATCH_HTTP) || str.startsWith(ProxyConfig.MATCH_HTTPS);
    }

    public static boolean d(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("MiniProgram");
    }

    public static boolean e(String str) {
        return (TextUtils.isEmpty(str) || str.startsWith(DefaultWebClient.HTTP_SCHEME) || str.startsWith("https://")) ? false : true;
    }

    public static boolean f(String str) {
        if (c(str) || d(str)) {
            return false;
        }
        return e(str);
    }

    public static boolean g(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("imgotv://") || str.startsWith("omgotv://");
    }

    public static String h(String str) {
        if (a((CharSequence) str)) {
            return "";
        }
        try {
            return new URL(str).getHost();
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean i(String str) {
        return str == null || "".equals(str);
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
        }
        return sb.toString();
    }

    public static String a() {
        return UUID.randomUUID().toString();
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static String a(Object obj) {
        if (obj == null) {
            return "";
        }
        return obj instanceof String ? (String) obj : obj.toString();
    }
}
