package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class ua0 implements fn0 {
    private static final int f = R.drawable.monetization_ads_internal_instream_adtune_control_v2;
    private final ig<?> a;
    private final mg b;
    private final mg2 c;
    private final yb d;
    private final r20 e;

    public ua0(ig<?> igVar, mg mgVar, mg2 mg2Var, yb ybVar, r20 r20Var) {
        y45.j(mgVar, "assetClickConfigurator");
        y45.j(mg2Var, "videoTracker");
        y45.j(ybVar, "adtuneRenderer");
        y45.j(r20Var, "divKitAdtuneRenderer");
        this.a = igVar;
        this.b = mgVar;
        this.c = mg2Var;
        this.d = ybVar;
        this.e = r20Var;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        ImageView imageViewH = ob2Var.h();
        if (imageViewH != null) {
            Drawable drawable = imageViewH.getDrawable();
            if (drawable == null) {
                drawable = ContextCompat.getDrawable(imageViewH.getContext(), f);
            }
            imageViewH.setImageDrawable(drawable);
            imageViewH.setVisibility(a() != null ? 0 : 8);
            gk gkVarA = a();
            if (gkVarA == null) {
                this.b.a(imageViewH, this.a);
                return;
            }
            Context context = imageViewH.getContext();
            y45.i(context, "getContext(...)");
            imageViewH.setOnClickListener(new ta0(gkVarA, this.d, this.e, this.c, new re2(context)));
        }
    }

    private final gk a() {
        x xVar;
        vr0 vr0VarA;
        List<x> listA;
        Object next;
        x xVar2;
        ig<?> igVar = this.a;
        if (igVar == null || (vr0VarA = igVar.a()) == null || (listA = vr0VarA.a()) == null) {
            xVar = null;
        } else {
            Iterator<T> it = listA.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                xVar2 = (x) next;
                if (y45.e(xVar2.a(), "adtune")) {
                    break;
                }
            } while (!y45.e(xVar2.a(), "divkit_adtune"));
            xVar = (x) next;
        }
        if (xVar instanceof gk) {
            return (gk) xVar;
        }
        return null;
    }
}
