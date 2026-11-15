package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import o4.n;
import s4.b;
import s4.o;
import t4.c;

public class PolystarShape implements c {

    private final String f17174a;

    private final Type f17175b;

    private final b f17176c;

    private final o f17177d;

    private final b f17178e;

    private final b f17179f;

    private final b f17180g;

    private final b f17181h;

    private final b f17182i;

    private final boolean f17183j;

    private final boolean f17184k;

    public enum Type {
        STAR(1),
        POLYGON(2);

        private final int value;

        Type(int i10) {
            this.value = i10;
        }

        public static Type forValue(int i10) {
            for (Type type : values()) {
                if (type.value == i10) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, b bVar, o oVar, b bVar2, b bVar3, b bVar4, b bVar5, b bVar6, boolean z10, boolean z11) {
        this.f17174a = str;
        this.f17175b = type;
        this.f17176c = bVar;
        this.f17177d = oVar;
        this.f17178e = bVar2;
        this.f17179f = bVar3;
        this.f17180g = bVar4;
        this.f17181h = bVar5;
        this.f17182i = bVar6;
        this.f17183j = z10;
        this.f17184k = z11;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new n(lottieDrawable, aVar, this);
    }

    public b b() {
        return this.f17179f;
    }

    public b c() {
        return this.f17181h;
    }

    public String d() {
        return this.f17174a;
    }

    public b e() {
        return this.f17180g;
    }

    public b f() {
        return this.f17182i;
    }

    public b g() {
        return this.f17176c;
    }

    public o h() {
        return this.f17177d;
    }

    public b i() {
        return this.f17178e;
    }

    public Type j() {
        return this.f17175b;
    }

    public boolean k() {
        return this.f17183j;
    }

    public boolean l() {
        return this.f17184k;
    }
}
