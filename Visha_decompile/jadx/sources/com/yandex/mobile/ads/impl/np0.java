package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.MainThread;
import androidx.media3.exoplayer.RendererCapabilities;
import com.yandex.mobile.ads.impl.np0;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;

@MainThread
public abstract class np0 extends RelativeLayout {
    private final o3 a;
    private final ht0 b;
    private final lt0 c;
    private final pw1 d;
    private final aj e;
    private final op0 f;
    private final ArrayList g;
    private int h;
    private int i;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public np0(Context context, AttributeSet attributeSet, int i, o3 o3Var) {
        this(context, attributeSet, i, o3Var, null, null, null, null, null, 496, null);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
    }

    private final op0 a() {
        return pp0.a(this, this.e);
    }

    public abstract aj a(Context context, zi ziVar, g5 g5Var);

    public final void addVisibilityChangeListener(xh2 xh2Var) {
        y45.j(xh2Var, "listener");
        this.g.add(xh2Var);
    }

    public final String c() {
        this.c.a();
        return this.e.B();
    }

    public final qe2 d() {
        this.c.a();
        return this.e.D();
    }

    public void destroy() {
        this.c.a();
        this.b.a();
        this.g.clear();
        int i = oa.b;
        if (oa.a((ro) this.e)) {
            return;
        }
        this.e.e();
    }

    public final o3 getAdConfiguration$mobileads_externalRelease() {
        return this.a;
    }

    public final int getHeightMeasureSpec$mobileads_externalRelease() {
        return this.i;
    }

    public final int getWidthMeasureSpec$mobileads_externalRelease() {
        return this.h;
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getClass().toString();
        sp0.d(new Object[0]);
        op0 op0Var = this.f;
        Context context = getContext();
        y45.i(context, "getContext(...)");
        op0Var.b(context);
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        y45.j(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        int i2 = oa.b;
        if (!oa.a((ro) this.e)) {
            if (this.e.z()) {
                i = 0;
            } else {
                v7 v7VarA = this.a.a();
                if (v7VarA != null) {
                    a(v7VarA);
                }
                i = 8;
            }
            setVisibility(i);
        }
        Objects.toString(configuration);
        sp0.d(new Object[0]);
    }

    @Override
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getClass().toString();
        sp0.d(new Object[0]);
        op0 op0Var = this.f;
        Context context = getContext();
        y45.i(context, "getContext(...)");
        op0Var.a(context);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.h = i;
        this.i = i2;
    }

    @Override
    public final void onVisibilityChanged(View view, int i) {
        y45.j(view, "changedView");
        super.onVisibilityChanged(view, i);
        if (this.d == null) {
            return;
        }
        Objects.toString(view);
        sp0.d(new Object[0]);
        pw1 pw1Var = this.d;
        Context context = getContext();
        y45.i(context, "getContext(...)");
        ju1 ju1VarA = pw1Var.a(context);
        if (ju1VarA == null || !ju1VarA.k0()) {
            a(i);
        } else if (this == view) {
            a(i);
        }
    }

    @Override
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        getVisibility();
        sp0.d(new Object[0]);
        a((i == 0 && getVisibility() == 0) ? 0 : 8);
    }

    public final void removeVisibilityChangeListener(xh2 xh2Var) {
        y45.j(xh2Var, "listener");
        this.g.remove(xh2Var);
    }

    public void setAdUnitId(String str) {
        this.c.a();
        this.e.a(str);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public np0(Context context, AttributeSet attributeSet, int i, o3 o3Var, ht0 ht0Var) {
        this(context, attributeSet, i, o3Var, ht0Var, null, null, null, null, 480, null);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ht0Var, "mainThreadExecutor");
    }

    public final void a(final v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.c.a();
        this.b.a(new Runnable() {
            @Override
            public final void run() {
                np0.a(this.b, v7Var);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002c  */
    public final zs b() {
        gz1 gz1VarQ;
        this.c.a();
        aj ajVar = this.e;
        y45.j(ajVar, "<this>");
        o8<String> o8VarK = ajVar.k();
        if (o8VarK == null || (gz1VarQ = o8VarK.M()) == null) {
            gz1VarQ = ajVar.q();
        } else {
            y45.j(gz1VarQ, "<this>");
            if (gz1VarQ.getWidth() == 0 && gz1VarQ.getHeight() == 0) {
                gz1VarQ = null;
            }
            if (gz1VarQ == null) {
                gz1VarQ = ajVar.q();
            }
        }
        if (gz1VarQ != null) {
            return new zs(gz1VarQ);
        }
        return null;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public np0(Context context, AttributeSet attributeSet, int i, o3 o3Var, ht0 ht0Var, lt0 lt0Var) {
        this(context, attributeSet, i, o3Var, ht0Var, lt0Var, null, null, null, 448, null);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(lt0Var, "mainThreadUsageValidator");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public np0(Context context, AttributeSet attributeSet, int i, o3 o3Var, ht0 ht0Var, lt0 lt0Var, g5 g5Var) {
        this(context, attributeSet, i, o3Var, ht0Var, lt0Var, g5Var, null, null, RendererCapabilities.DECODER_SUPPORT_MASK, null);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(g5Var, "adLoadingPhasesManager");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public np0(Context context, AttributeSet attributeSet, int i, o3 o3Var, ht0 ht0Var, lt0 lt0Var, g5 g5Var, zi ziVar) {
        this(context, attributeSet, i, o3Var, ht0Var, lt0Var, g5Var, ziVar, null, 256, null);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(ziVar, "bannerAdListener");
    }

    public static final void a(np0 np0Var, v7 v7Var) {
        y45.j(np0Var, "this$0");
        y45.j(v7Var, "$adRequestData");
        np0Var.e.b(v7Var);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public np0(Context context, AttributeSet attributeSet, int i, o3 o3Var, ht0 ht0Var, lt0 lt0Var, g5 g5Var, zi ziVar, pw1 pw1Var) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(lt0Var, "mainThreadUsageValidator");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(ziVar, "bannerAdListener");
        this.a = o3Var;
        this.b = ht0Var;
        this.c = lt0Var;
        this.d = pw1Var;
        this.g = new ArrayList();
        lt0Var.a();
        aj ajVarA = a(context, ziVar, g5Var);
        this.e = ajVarA;
        ziVar.a(ajVarA.f());
        op0 op0VarA = a();
        this.f = op0VarA;
        op0VarA.a(context, this);
    }

    private final void a(int i) {
        sp0.d(new Object[0]);
        int i2 = oa.b;
        if (oa.a((ro) this.e)) {
            return;
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            ((xh2) it.next()).a(i);
        }
    }

    public final void a(ys ysVar) {
        this.c.a();
        this.e.a(ysVar);
    }

    public final void a(zs zsVar) {
        this.c.a();
        this.e.a(zsVar.a());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public np0(Context context, AttributeSet attributeSet, int i, o3 o3Var, ht0 ht0Var, lt0 lt0Var, g5 g5Var, zi ziVar, pw1 pw1Var, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        pw1 pw1VarA;
        AttributeSet attributeSet2 = (i2 & 2) != 0 ? null : attributeSet;
        int i3 = (i2 & 4) != 0 ? 0 : i;
        ht0 ht0Var2 = (i2 & 16) != 0 ? new ht0() : ht0Var;
        lt0 lt0Var2 = (i2 & 32) != 0 ? new lt0(context) : lt0Var;
        g5 g5Var2 = (i2 & 64) != 0 ? new g5() : g5Var;
        zi ziVar2 = (i2 & 128) != 0 ? new zi(context, o3Var, g5Var2) : ziVar;
        if ((i2 & 256) != 0) {
            int i4 = pw1.l;
            pw1VarA = pw1.a.a();
        } else {
            pw1VarA = pw1Var;
        }
        this(context, attributeSet2, i3, o3Var, ht0Var2, lt0Var2, g5Var2, ziVar2, pw1VarA);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public np0(Context context, AttributeSet attributeSet, o3 o3Var) {
        this(context, attributeSet, 0, o3Var, null, null, null, null, null, 500, null);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public np0(Context context, o3 o3Var) {
        this(context, null, 0, o3Var, null, null, null, null, null, 502, null);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
    }
}
