package com.mgtv.irouting.okhttp;

import android.text.TextUtils;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

public class d {
    private static String[] a = new String[0];

    public static HostnameVerifier a() {
        return new HostnameVerifier() {
            @Override
            public boolean verify(String str, SSLSession sSLSession) {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                return !Arrays.asList(d.a).contains(str);
            }
        };
    }
}
