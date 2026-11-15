package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import o4.u;
import s4.b;
import t4.c;

public class ShapeTrimPath implements c {

    private final String f17197a;

    private final Type f17198b;

    private final b f17199c;

    private final b f17200d;

    private final b f17201e;

    private final boolean f17202f;

    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i10) {
            if (i10 == 1) {
                return SIMULTANEOUSLY;
            }
            if (i10 == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i10);
        }
    }

    public ShapeTrimPath(String str, Type type, b bVar, b bVar2, b bVar3, boolean z10) {
        this.f17197a = str;
        this.f17198b = type;
        this.f17199c = bVar;
        this.f17200d = bVar2;
        this.f17201e = bVar3;
        this.f17202f = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new u(aVar, this);
    }

    public b b() {
        return this.f17200d;
    }

    public String c() {
        return this.f17197a;
    }

    public b d() {
        return this.f17201e;
    }

    public b e() {
        return this.f17199c;
    }

    public Type f() {
        return this.f17198b;
    }

    public boolean g() {
        return this.f17202f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f17199c + ", end: " + this.f17200d + ", offset: " + this.f17201e + "}";
    }
}
