package com.yandex.mobile.ads.impl;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.j1a;

public final class w11 {
    /* JADX WARN: Code duplicated, block: B:15:0x0037  */
    /* JADX WARN: Code duplicated, block: B:8:0x0027  */
    public static gb2 a() {
        int i;
        int i2;
        int i3 = 0;
        String[] strArr = (String[]) j1a.O0("7.12.2", new String[]{Consts.DOT}, false, 0, 6, null).toArray(new String[0]);
        if (strArr.length > 0) {
            String str = strArr[0];
            int i4 = oa.b;
            if (str != null) {
                try {
                    i = Integer.parseInt(str);
                } catch (NumberFormatException unused) {
                    i = 0;
                }
            } else {
                i = 0;
            }
        } else {
            i = 0;
        }
        if (strArr.length > 1) {
            String str2 = strArr[1];
            int i5 = oa.b;
            if (str2 != null) {
                try {
                    i2 = Integer.parseInt(str2);
                } catch (NumberFormatException unused2) {
                    i2 = 0;
                }
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        if (strArr.length > 2) {
            String str3 = strArr[2];
            int i6 = oa.b;
            if (str3 != null) {
                try {
                    i3 = Integer.parseInt(str3);
                } catch (NumberFormatException unused3) {
                }
            }
        }
        return new gb2(i, i2, i3);
    }
}
