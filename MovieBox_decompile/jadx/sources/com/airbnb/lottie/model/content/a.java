package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import java.util.List;
import o4.i;
import s4.b;
import s4.d;
import s4.f;
import t4.c;

public class a implements c {

    private final String f17203a;

    private final GradientType f17204b;

    private final s4.c f17205c;

    private final d f17206d;

    private final f f17207e;

    private final f f17208f;

    private final b f17209g;

    private final ShapeStroke.LineCapType f17210h;

    private final ShapeStroke.LineJoinType f17211i;

    private final float f17212j;

    private final List f17213k;

    private final b f17214l;

    private final boolean f17215m;

    public a(String str, GradientType gradientType, s4.c cVar, d dVar, f fVar, f fVar2, b bVar, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f10, List list, b bVar2, boolean z10) {
        this.f17203a = str;
        this.f17204b = gradientType;
        this.f17205c = cVar;
        this.f17206d = dVar;
        this.f17207e = fVar;
        this.f17208f = fVar2;
        this.f17209g = bVar;
        this.f17210h = lineCapType;
        this.f17211i = lineJoinType;
        this.f17212j = f10;
        this.f17213k = list;
        this.f17214l = bVar2;
        this.f17215m = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new i(lottieDrawable, aVar, this);
    }

    public ShapeStroke.LineCapType b() {
        return this.f17210h;
    }

    public b c() {
        return this.f17214l;
    }

    public f d() {
        return this.f17208f;
    }

    public s4.c e() {
        return this.f17205c;
    }

    public GradientType f() {
        return this.f17204b;
    }

    public ShapeStroke.LineJoinType g() {
        return this.f17211i;
    }

    public List h() {
        return this.f17213k;
    }

    public float i() {
        return this.f17212j;
    }

    public String j() {
        return this.f17203a;
    }

    public d k() {
        return this.f17206d;
    }

    public f l() {
        return this.f17207e;
    }

    public b m() {
        return this.f17209g;
    }

    public boolean n() {
        return this.f17215m;
    }
}
