package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.alibaba.android.arouter.utils.Consts;

public final class t30 {
    public final String a;

    private t30(String str) {
        this.a = str;
    }

    @Nullable
    public static t30 a(ag1 ag1Var) {
        String str;
        ag1Var.f(2);
        int iT = ag1Var.t();
        int i = iT >> 1;
        int iT2 = ((ag1Var.t() >> 3) & 31) | ((iT & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else {
            if (i != 9) {
                return null;
            }
            str = "avc3";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(iT2 >= 10 ? Consts.DOT : ".0");
        sb.append(iT2);
        return new t30(sb.toString());
    }
}
