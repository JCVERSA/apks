package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import defpackage.qv0;

public abstract class Df {
    public static final String a(C2660k9 c2660k9) {
        String string;
        StringBuilder sb = new StringBuilder("Event sent: ");
        int i = c2660k9.c;
        String str = c2660k9.d;
        byte[] bArr = c2660k9.e;
        if (i == 1) {
            string = "Attribution";
        } else if (i == 2) {
            string = "Session start";
        } else if (i == 4) {
            if (str == null) {
                str = "null";
            }
            StringBuilder sb2 = new StringBuilder(str);
            if (bArr != null) {
                String str2 = new String(bArr, qv0.b);
                if (!TextUtils.isEmpty(str2)) {
                    sb2.append(" with value ");
                    sb2.append(str2);
                }
            }
            string = sb2.toString();
        } else if (i == 5) {
            string = "Referrer";
        } else if (i == 7) {
            string = "Session heartbeat";
        } else if (i == 13) {
            string = "The very first event";
        } else if (i == 35) {
            string = "E-Commerce";
        } else if (i == 40) {
            string = "Ad revenue (ILRD)";
        } else if (i == 42) {
            string = "External attribution";
        } else if (i == 16) {
            string = "Open";
        } else if (i == 17) {
            string = "Update";
        } else if (i == 20) {
            string = "User profile update";
        } else if (i != 21) {
            switch (i) {
                case 25:
                    string = "ANR";
                    break;
                case 26:
                    string = "Crash: " + str;
                    break;
                case 27:
                    string = "Error: " + str;
                    break;
                default:
                    string = "type=" + i;
                    break;
            }
        } else {
            string = "Revenue";
        }
        sb.append(string);
        return sb.toString();
    }

    public static final String a(String str, EnumC2588hb enumC2588hb, String str2, String str3) {
        if (!C9.d.contains(EnumC2588hb.a(enumC2588hb.a))) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(": ");
        sb.append(enumC2588hb.name());
        if (C9.f.contains(enumC2588hb) && !TextUtils.isEmpty(str2)) {
            sb.append(" with name ");
            sb.append(str2);
        }
        if (C9.e.contains(enumC2588hb) && !TextUtils.isEmpty(str3)) {
            sb.append(" with value ");
            sb.append(str3);
        }
        return sb.toString();
    }
}
