package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import defpackage.ah1;
import defpackage.bg1;
import defpackage.dc;
import defpackage.ec;
import defpackage.fc;
import defpackage.ic;
import defpackage.pj4;
import defpackage.ur5;
import java.util.List;

public class a implements ah1 {
    public final String a;
    public final GradientType b;
    public final ec c;
    public final fc d;
    public final ic e;
    public final ic f;
    public final dc g;
    public final ShapeStroke.LineCapType h;
    public final ShapeStroke.LineJoinType i;
    public final float j;
    public final List k;
    public final dc l;
    public final boolean m;

    public a(String str, GradientType gradientType, ec ecVar, fc fcVar, ic icVar, ic icVar2, dc dcVar, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f, List list, dc dcVar2, boolean z) {
        this.a = str;
        this.b = gradientType;
        this.c = ecVar;
        this.d = fcVar;
        this.e = icVar;
        this.f = icVar2;
        this.g = dcVar;
        this.h = lineCapType;
        this.i = lineJoinType;
        this.j = f;
        this.k = list;
        this.l = dcVar2;
        this.m = z;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, com.airbnb.lottie.model.layer.a aVar) {
        return new pj4(lottieDrawable, aVar, this);
    }

    public ShapeStroke.LineCapType b() {
        return this.h;
    }

    public dc c() {
        return this.l;
    }

    public ic d() {
        return this.f;
    }

    public ec e() {
        return this.c;
    }

    public GradientType f() {
        return this.b;
    }

    public ShapeStroke.LineJoinType g() {
        return this.i;
    }

    public List h() {
        return this.k;
    }

    public float i() {
        return this.j;
    }

    public String j() {
        return this.a;
    }

    public fc k() {
        return this.d;
    }

    public ic l() {
        return this.e;
    }

    public dc m() {
        return this.g;
    }

    public boolean n() {
        return this.m;
    }
}
