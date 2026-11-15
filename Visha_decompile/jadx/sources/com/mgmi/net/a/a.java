package com.mgmi.net.a;

import android.content.Context;
import android.text.TextUtils;
import com.mgadplus.mgutil.SourceKitLogger;
import defpackage.g4d;
import defpackage.mpd;
import defpackage.n4d;

public class a {
    private String a;
    private int d;
    private int b = 15000;
    private int c = 15000;
    private boolean e = false;

    public static String b(String str) {
        String str2;
        String[] strArrSplit = str.split("&");
        if (strArrSplit != null && strArrSplit.length > 0) {
            int i = 0;
            while (true) {
                if (i >= strArrSplit.length) {
                    str2 = null;
                    break;
                }
                if (strArrSplit[i].startsWith("id=")) {
                    str2 = strArrSplit[i];
                    break;
                }
                i++;
            }
        } else {
            str2 = null;
            break;
        }
        if (str2 == null) {
            return str2;
        }
        try {
            return str2.length() > 3 ? str2.substring(3) : str2;
        } catch (Throwable unused) {
            return str2;
        }
    }

    public String a() {
        return this.a;
    }

    public a a(String str) {
        this.a = str;
        return this;
    }

    public a a(int i) {
        this.d = i;
        return this;
    }

    public a a(Context context) {
        if (this.a.contains("y.da.hunantv.com")) {
            String strI = g4d.i(mpd.F(context));
            String strB = b(this.a);
            String strJ = null;
            if (!TextUtils.isEmpty(strB)) {
                try {
                    strJ = n4d.j(strI + "^" + String.valueOf(System.currentTimeMillis() / 1000), strB);
                } catch (Exception unused) {
                }
            }
            if (!TextUtils.isEmpty(strJ)) {
                this.a += "&auver=v1";
                this.a += "&au=" + g4d.b(strJ);
            } else {
                SourceKitLogger.a("mgmi", "FDSAFDS");
            }
        }
        return this;
    }

    public static String a(String str, Context context) {
        if (TextUtils.isEmpty(str) || !str.contains("y.da.hunantv.com")) {
            return str;
        }
        String strI = g4d.i(mpd.F(context));
        String strB = b(str);
        String strJ = null;
        if (!TextUtils.isEmpty(strB)) {
            try {
                strJ = n4d.j(strI + "^" + String.valueOf(System.currentTimeMillis() / 1000), strB);
            } catch (Exception unused) {
            }
        }
        if (TextUtils.isEmpty(strJ)) {
            return str;
        }
        return (str + "&auver=v1") + "&au=" + g4d.b(strJ);
    }
}
