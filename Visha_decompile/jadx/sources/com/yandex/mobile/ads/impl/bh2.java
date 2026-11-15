package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

final class bh2 extends Lambda implements e74 {
    public static final bh2 b = new bh2();

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[iy.c.a.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public bh2() {
        super(1);
    }

    @Override
    public final Object invoke(Object obj) {
        iy.c.a aVar = (iy.c.a) obj;
        y45.j(aVar, "actionType");
        int i = a.a[aVar.ordinal()];
        return zfb.a;
    }
}
