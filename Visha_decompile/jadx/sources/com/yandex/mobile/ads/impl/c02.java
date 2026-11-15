package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;

public final class c02 extends f71 {
    private final j81 e;
    private final pw1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c02(Context context, j81 j81Var, xz1 xz1Var, pw1 pw1Var, o8 o8Var) {
        super(context, xz1Var, o8Var);
        y45.j(context, "context");
        y45.j(j81Var, "nativeCompositeAd");
        y45.j(xz1Var, "assetsValidator");
        y45.j(pw1Var, "sdkSettings");
        y45.j(o8Var, "adResponse");
        this.e = j81Var;
        this.f = pw1Var;
    }

    @Override
    public final n92 a(Context context, n92.a aVar, boolean z, int i) {
        int iD;
        y45.j(context, "context");
        y45.j(aVar, "status");
        if (aVar == n92.a.c) {
            y45.j(context, "context");
            List<z81> listV = defpackage.f81.V(this.e.e(), z81.class);
            if ((listV instanceof Collection) && listV.isEmpty()) {
                aVar = n92.a.g;
            } else {
                for (z81 z81Var : listV) {
                    na1 na1VarF = z81Var.f();
                    fc1 fc1VarG = z81Var.g();
                    y45.j(context, "context");
                    y45.j(na1VarF, "nativeAdValidator");
                    y45.j(fc1VarG, "nativeVisualBlock");
                    ju1 ju1VarA = this.f.a(context);
                    boolean z2 = ju1VarA == null || ju1VarA.i0();
                    Iterator<ey1> it = fc1VarG.e().iterator();
                    do {
                        if (it.hasNext()) {
                            iD = z2 ? it.next().d() : i;
                        }
                    } while ((z ? na1VarF.b(context, iD) : na1VarF.a(context, iD)).b() == n92.a.c);
                }
                aVar = n92.a.g;
            }
        }
        return new n92(aVar);
    }

    @Override
    @VisibleForTesting
    public final Pair<n92.a, String> a(Context context, int i, boolean z, boolean z2) {
        y45.j(context, "context");
        ju1 ju1VarA = this.f.a(context);
        if (ju1VarA != null && !ju1VarA.i0()) {
            return new Pair<>(n92.a.c, null);
        }
        return super.a(context, i, z, z2);
    }
}
