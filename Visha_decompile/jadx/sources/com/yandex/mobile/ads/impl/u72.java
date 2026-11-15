package com.yandex.mobile.ads.impl;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.Map;

final class u72 {
    public static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, v72 v72Var, @Nullable s72 s72Var, Map map, int i3) {
        s72 s72Var2;
        if (v72Var.k() != -1) {
            spannableStringBuilder.setSpan(new StyleSpan(v72Var.k()), i, i2, 33);
        }
        if (v72Var.q()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (v72Var.r()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (v72Var.p()) {
            o12.a(spannableStringBuilder, new ForegroundColorSpan(v72Var.b()), i, i2);
        }
        if (v72Var.o()) {
            o12.a(spannableStringBuilder, new BackgroundColorSpan(v72Var.a()), i, i2);
        }
        if (v72Var.c() != null) {
            o12.a(spannableStringBuilder, new TypefaceSpan(v72Var.c()), i, i2);
        }
        if (v72Var.n() != null) {
            v72Var.n().getClass();
            o12.a(spannableStringBuilder, new s42(), i, i2);
        }
        int i4 = v72Var.i();
        if (i4 == 2) {
            while (true) {
                s72Var2 = null;
                if (s72Var == null) {
                    s72Var = null;
                    break;
                }
                v72 v72VarA = a(s72Var.f, s72Var.c(), map);
                if (v72VarA != null && v72VarA.i() == 1) {
                    break;
                } else {
                    s72Var = s72Var.j;
                }
            }
            if (s72Var != null) {
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(s72Var);
                while (!arrayDeque.isEmpty()) {
                    s72 s72Var3 = (s72) arrayDeque.pop();
                    v72 v72VarA2 = a(s72Var3.f, s72Var3.c(), map);
                    if (v72VarA2 != null && v72VarA2.i() == 3) {
                        s72Var2 = s72Var3;
                        break;
                    }
                    for (int iA = s72Var3.a() - 1; iA >= 0; iA--) {
                        arrayDeque.push(s72Var3.a(iA));
                    }
                }
                if (s72Var2 != null) {
                    if (s72Var2.a() != 1 || s72Var2.a(0).b == null) {
                        et0.c("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                    } else {
                        String str = s72Var2.a(0).b;
                        int i5 = f92.a;
                        v72 v72VarA3 = a(s72Var2.f, s72Var2.c(), map);
                        if (v72VarA3 == null || v72VarA3.h() == -1) {
                            a(s72Var.f, s72Var.c(), map);
                        }
                        spannableStringBuilder.setSpan(new zs1(), i, i2, 33);
                    }
                }
            }
        } else if (i4 == 3 || i4 == 4) {
            spannableStringBuilder.setSpan(new z00(), i, i2, 33);
        }
        if (v72Var.m()) {
            o12.a(spannableStringBuilder, new yf0(), i, i2);
        }
        int iE = v72Var.e();
        if (iE == 1) {
            o12.a(spannableStringBuilder, new AbsoluteSizeSpan((int) v72Var.d(), true), i, i2);
        } else if (iE == 2) {
            o12.a(spannableStringBuilder, new RelativeSizeSpan(v72Var.d()), i, i2);
        } else {
            if (iE != 3) {
                return;
            }
            o12.a(spannableStringBuilder, new RelativeSizeSpan(v72Var.d() / 100.0f), i, i2);
        }
    }

    @Nullable
    public static v72 a(@Nullable v72 v72Var, @Nullable String[] strArr, Map<String, v72> map) {
        int i = 0;
        if (v72Var == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                v72 v72Var2 = new v72();
                int length = strArr.length;
                while (i < length) {
                    v72Var2.a(map.get(strArr[i]));
                    i++;
                }
                return v72Var2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return v72Var.a(map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    v72Var.a(map.get(strArr[i]));
                    i++;
                }
            }
        }
        return v72Var;
    }
}
