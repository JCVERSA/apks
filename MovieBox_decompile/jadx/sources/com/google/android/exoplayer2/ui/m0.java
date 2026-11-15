package com.google.android.exoplayer2.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;

abstract class m0 {
    public static boolean c(Object obj) {
        return !(obj instanceof ha.b);
    }

    public static boolean d(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    public static void e(da.b.C0703b c0703b) {
        c0703b.b();
        if (c0703b.e() instanceof Spanned) {
            if (!(c0703b.e() instanceof Spannable)) {
                c0703b.o(SpannableString.valueOf(c0703b.e()));
            }
            g((Spannable) com.google.android.exoplayer2.util.a.e(c0703b.e()), new com.google.common.base.n() {
                @Override
                public final boolean apply(Object obj) {
                    return m0.c(obj);
                }
            });
        }
        f(c0703b);
    }

    public static void f(da.b.C0703b c0703b) {
        c0703b.q(-3.4028235E38f, Integer.MIN_VALUE);
        if (c0703b.e() instanceof Spanned) {
            if (!(c0703b.e() instanceof Spannable)) {
                c0703b.o(SpannableString.valueOf(c0703b.e()));
            }
            g((Spannable) com.google.android.exoplayer2.util.a.e(c0703b.e()), new com.google.common.base.n() {
                @Override
                public final boolean apply(Object obj) {
                    return m0.d(obj);
                }
            });
        }
    }

    private static void g(Spannable spannable, com.google.common.base.n nVar) {
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (nVar.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }

    public static float h(int i10, float f10, int i11, int i12) {
        float f11;
        if (f10 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i10 == 0) {
            f11 = i12;
        } else {
            if (i10 != 1) {
                if (i10 != 2) {
                    return -3.4028235E38f;
                }
                return f10;
            }
            f11 = i11;
        }
        return f10 * f11;
    }
}
