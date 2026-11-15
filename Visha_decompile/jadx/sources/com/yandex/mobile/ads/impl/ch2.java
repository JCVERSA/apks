package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

final class ch2 extends Lambda implements s74 {
    final hh2 b;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[iy.h.a.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ch2(hh2 hh2Var) {
        super(2);
        this.b = hh2Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        iy.h.a aVar = (iy.h.a) obj;
        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
        y45.j(aVar, "switchType");
        if (a.a[aVar.ordinal()] == 1) {
            this.b.a.invoke(new dy.e(zBooleanValue));
        }
        return zfb.a;
    }
}
