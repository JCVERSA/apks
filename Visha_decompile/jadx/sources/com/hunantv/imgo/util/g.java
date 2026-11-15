package com.hunantv.imgo.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.alibaba.android.arouter.utils.Consts;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Locale;
import java.util.Random;
import java.util.UUID;

public final class g {
    private static final HashSet<String> a;
    private static String b;
    private static volatile g c;
    private String d = d();
    private String e = e();
    private String f = b();
    private String g = c();

    static {
        HashSet<String> hashSet = new HashSet<>();
        a = hashSet;
        b = null;
        hashSet.add("000000000000000");
        hashSet.add("012345678912345");
        hashSet.add("812345678912345");
        hashSet.add("867731020001006");
        hashSet.add("865407010000009");
        hashSet.add("00000000");
        hashSet.add("812345678912343");
        hashSet.add("0");
        hashSet.add("111111111111111");
        hashSet.add("111111111111119");
        hashSet.add("865166026030406");
        hashSet.add("864892020288317");
    }

    private g() {
    }

    private boolean a(char c2) {
        return (c2 >= '0' && c2 <= '9') || (c2 >= 'A' && c2 <= 'Z') || (c2 >= 'a' && c2 <= 'z');
    }

    public static String f() {
        return ("Mozilla/5.0 (Linux; " + h() + "; " + g() + " Build/" + i() + "; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/62.0.3202.84 Mobile Safari/537.36") + " MgSsp_" + b.A() + "/2.0.6" + Consts.DOT + f.a(new SimpleDateFormat("yyMMdd", Locale.CHINA));
    }

    public static String g() {
        return Build.MODEL;
    }

    public static String h() {
        String str = Build.VERSION.RELEASE;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("Android")) {
            return str;
        }
        return "Android " + str;
    }

    public static String i() {
        return Build.ID;
    }

    private char j() {
        int iNextInt;
        Random random = new Random();
        int iNextInt2 = random.nextInt(3);
        if (iNextInt2 == 0) {
            iNextInt = random.nextInt(10) + 48;
        } else {
            iNextInt = 1 == iNextInt2 ? random.nextInt(26) + 65 : random.nextInt(26) + 97;
        }
        return (char) iNextInt;
    }

    public String b() {
        if (!TextUtils.isEmpty(this.f)) {
            return this.f;
        }
        String strC = com.hunantv.imgo.safe.a.a().c();
        this.f = strC;
        if (TextUtils.isEmpty(strC)) {
            this.f = "0";
        }
        return this.f;
    }

    public String c() {
        if (!TextUtils.isEmpty(this.g)) {
            return this.g;
        }
        String strB = com.hunantv.imgo.safe.a.a().b();
        this.g = strB;
        if (TextUtils.isEmpty(strB)) {
            this.g = "0";
        }
        return this.g;
    }

    public String d() {
        String string;
        if (!TextUtils.isEmpty(this.d)) {
            return this.d;
        }
        try {
            string = c();
        } catch (Exception e) {
            e.printStackTrace();
            string = null;
        }
        if (TextUtils.isEmpty(string) || a.contains(string)) {
            string = UUID.randomUUID().toString();
        }
        String strA = u.a(string);
        this.d = strA;
        PreferencesUtil.b("pref_device_info_unique_id_v1", strA);
        return this.d;
    }

    public String e() {
        if (!TextUtils.isEmpty(this.e)) {
            return this.e;
        }
        String strC = com.hunantv.imgo.safe.a.a().c();
        if (TextUtils.isEmpty(strC)) {
            strC = com.hunantv.imgo.safe.a.a().b();
        }
        if (TextUtils.isEmpty(strC) || a.contains(strC)) {
            if (TextUtils.isEmpty(PreferencesUtil.a("pref_device_info_unique_id_v1_none_i"))) {
                String string = UUID.randomUUID().toString();
                PreferencesUtil.b("pref_device_info_unique_id_v1_none_i", string);
                strC = string;
            } else {
                strC = PreferencesUtil.a("pref_device_info_unique_id_v1_none_i");
            }
        }
        if (strC == null) {
            strC = "";
        }
        int length = strC.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char cCharAt = strC.charAt(i);
            if (a(cCharAt)) {
                sb.append(cCharAt);
            } else {
                sb.append(j());
            }
        }
        String string2 = sb.toString();
        this.e = string2;
        return string2;
    }

    public static g a() {
        if (c == null) {
            synchronized (g.class) {
                try {
                    if (c == null) {
                        c = new g();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(b)) {
            a(context);
            String strC = PreferencesUtil.c("PREF_KEY_UA", "");
            if (!TextUtils.isEmpty(strC)) {
                String str = strC + " MgSsp_" + b.A() + "/2.0.6" + Consts.DOT + f.a(new SimpleDateFormat("yyMMdd", Locale.CHINA));
                b = str;
                return str;
            }
            return f();
        }
        return b;
    }

    public static void a(Context context) {
        String userAgentString;
        String string = "";
        if (TextUtils.isEmpty(PreferencesUtil.c("PREF_KEY_UA", ""))) {
            try {
                userAgentString = WebSettings.getDefaultUserAgent(context);
            } catch (Exception e) {
                try {
                    userAgentString = new WebView(context).getSettings().getUserAgentString();
                } catch (Exception e2) {
                    String property = System.getProperty("http.agent");
                    e2.printStackTrace();
                    userAgentString = property;
                }
                e.printStackTrace();
            }
            if (!TextUtils.isEmpty(userAgentString)) {
                StringBuilder sb = new StringBuilder();
                int length = userAgentString.length();
                for (int i = 0; i < length; i++) {
                    char cCharAt = userAgentString.charAt(i);
                    if (cCharAt > 31 && cCharAt < 127) {
                        sb.append(cCharAt);
                    } else {
                        sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                    }
                }
                string = sb.toString();
            }
            PreferencesUtil.a("PREF_KEY_UA", string);
            b = string + " ImgoTV-aphone/" + b.e() + Consts.DOT + f.a(new SimpleDateFormat("yyMMdd", Locale.CHINA));
        }
    }
}
