package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class g91 implements gk0 {
    final i91 a;
    final s41 b;
    final sj0 c;
    final defpackage.cr0 d;

    public g91(i91 i91Var, s41 s41Var, sj0 sj0Var, CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = i91Var;
        this.b = s41Var;
        this.c = sj0Var;
        this.d = cancellableContinuationImpl;
    }

    @Override
    public final void a(String str, Bitmap bitmap) {
        y45.j(str, "url");
        y45.j(bitmap, "bitmap");
    }

    @Override
    public final void a(Map<String, Bitmap> map) {
        y45.j(map, "images");
        this.a.a.a(f5.q);
        o8<?> o8VarB = this.b.b();
        if (!y45.e(o8VarB.E(), c91.c.a()) && !y45.e(o8VarB.E(), c91.d.a())) {
            ck0 ck0Var = this.a.c;
            s41 s41Var = this.b;
            ck0Var.getClass();
            y45.j(s41Var, "nativeAdBlock");
            y45.j(map, "images");
            Iterator<g41> it = s41Var.c().e().iterator();
            while (it.hasNext()) {
                List<ig<?>> listB = it.next().b();
                if (!listB.isEmpty()) {
                    ck0Var.a(listB, map);
                }
            }
            bh bhVar = this.a.b;
            s41 s41Var2 = this.b;
            bhVar.getClass();
            y45.j(s41Var2, "nativeAdBlock");
            y45.j(map, "images");
            for (g41 g41Var : s41Var2.c().e()) {
                List<ig<?>> listB2 = g41Var.b();
                if (!listB2.isEmpty()) {
                    g41Var.a(bhVar.a(listB2, map));
                }
            }
        }
        this.c.a(map);
        if (this.d.isActive()) {
            defpackage.cr0 cr0Var = this.d;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(zfb.a));
        }
    }
}
