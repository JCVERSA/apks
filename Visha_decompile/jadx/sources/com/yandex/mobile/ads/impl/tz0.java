package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.R;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class tz0 {
    private final Context a;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[sz0.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public tz0(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final String a(sz0 sz0Var) {
        int i = sz0Var == null ? -1 : a.a[sz0Var.ordinal()];
        if (i == -1) {
            return null;
        }
        if (i == 1) {
            return this.a.getString(R.string.invalid_mediation_adapter_version);
        }
        throw new NoWhenBranchMatchedException();
    }
}
