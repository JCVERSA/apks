package com.yandex.mobile.ads.impl;

import defpackage.g1a;
import defpackage.y45;
import java.io.IOException;
import java.net.ProtocolException;

public final class t22 {
    public final mm1 a;
    public final int b;
    public final String c;

    public static final class a {
        public static t22 a(String str) throws IOException {
            mm1 mm1Var;
            int i;
            String strSubstring;
            y45.j(str, "statusLine");
            if (g1a.R(str, "HTTP/1.", false, 2, null)) {
                i = 9;
                if (str.length() < 9 || str.charAt(8) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                int iCharAt = str.charAt(7) - '0';
                if (iCharAt == 0) {
                    mm1Var = mm1.d;
                } else {
                    if (iCharAt != 1) {
                        throw new ProtocolException("Unexpected status line: " + str);
                    }
                    mm1Var = mm1.e;
                }
            } else {
                if (!g1a.R(str, "ICY ", false, 2, null)) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                mm1Var = mm1.d;
                i = 4;
            }
            int i2 = i + 3;
            if (str.length() < i2) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            try {
                String strSubstring2 = str.substring(i, i2);
                y45.i(strSubstring2, "substring(...)");
                int i3 = Integer.parseInt(strSubstring2);
                if (str.length() <= i2) {
                    strSubstring = "";
                } else {
                    if (str.charAt(i2) != ' ') {
                        throw new ProtocolException("Unexpected status line: " + str);
                    }
                    strSubstring = str.substring(i + 4);
                    y45.i(strSubstring, "substring(...)");
                }
                return new t22(mm1Var, i3, strSubstring);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        }
    }

    public t22(mm1 mm1Var, int i, String str) {
        y45.j(mm1Var, "protocol");
        y45.j(str, "message");
        this.a = mm1Var;
        this.b = i;
        this.c = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.a == mm1.d) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.b);
        sb.append(' ');
        sb.append(this.c);
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
