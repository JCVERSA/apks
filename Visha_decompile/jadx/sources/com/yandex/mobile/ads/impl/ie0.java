package com.yandex.mobile.ads.impl;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ie0 {
    private static final Pattern c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int a = -1;
    public int b = -1;

    public final void a(k01 k01Var) {
        for (int i = 0; i < k01Var.c(); i++) {
            k01.b bVarA = k01Var.a(i);
            if (bVarA instanceof tq) {
                tq tqVar = (tq) bVarA;
                if ("iTunSMPB".equals(tqVar.d) && a(tqVar.e)) {
                    return;
                }
            } else if (bVarA instanceof qp0) {
                qp0 qp0Var = (qp0) bVarA;
                if ("com.apple.iTunes".equals(qp0Var.c) && "iTunSMPB".equals(qp0Var.d) && a(qp0Var.e)) {
                    return;
                }
            } else {
                continue;
            }
        }
    }

    private boolean a(String str) {
        Matcher matcher = c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            String strGroup = matcher.group(1);
            int i = f92.a;
            int i2 = Integer.parseInt(strGroup, 16);
            int i3 = Integer.parseInt(matcher.group(2), 16);
            if (i2 <= 0 && i3 <= 0) {
                return false;
            }
            this.a = i2;
            this.b = i3;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
