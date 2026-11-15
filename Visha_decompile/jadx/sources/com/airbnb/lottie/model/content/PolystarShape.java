package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import defpackage.ah1;
import defpackage.bg1;
import defpackage.dc;
import defpackage.tc;
import defpackage.ur5;
import defpackage.wc8;

public class PolystarShape implements ah1 {
    public final String a;
    public final Type b;
    public final dc c;
    public final tc d;
    public final dc e;
    public final dc f;
    public final dc g;
    public final dc h;
    public final dc i;
    public final boolean j;
    public final boolean k;

    public enum Type {
        STAR(1),
        POLYGON(2);

        private final int value;

        Type(int i) {
            this.value = i;
        }

        public static Type forValue(int i) {
            for (Type type : values()) {
                if (type.value == i) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, dc dcVar, tc tcVar, dc dcVar2, dc dcVar3, dc dcVar4, dc dcVar5, dc dcVar6, boolean z, boolean z2) {
        this.a = str;
        this.b = type;
        this.c = dcVar;
        this.d = tcVar;
        this.e = dcVar2;
        this.f = dcVar3;
        this.g = dcVar4;
        this.h = dcVar5;
        this.i = dcVar6;
        this.j = z;
        this.k = z2;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, com.airbnb.lottie.model.layer.a aVar) {
        return new wc8(lottieDrawable, aVar, this);
    }

    public dc b() {
        return this.f;
    }

    public dc c() {
        return this.h;
    }

    public String d() {
        return this.a;
    }

    public dc e() {
        return this.g;
    }

    public dc f() {
        return this.i;
    }

    public dc g() {
        return this.c;
    }

    public tc h() {
        return this.d;
    }

    public dc i() {
        return this.e;
    }

    public Type j() {
        return this.b;
    }

    public boolean k() {
        return this.j;
    }

    public boolean l() {
        return this.k;
    }
}
