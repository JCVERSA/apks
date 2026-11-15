package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import defpackage.ah1;
import defpackage.bab;
import defpackage.bg1;
import defpackage.dc;
import defpackage.ur5;
import org.apache.commons.text.StringSubstitutor;

public class ShapeTrimPath implements ah1 {
    public final String a;
    public final Type b;
    public final dc c;
    public final dc d;
    public final dc e;
    public final boolean f;

    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i) {
            if (i == 1) {
                return SIMULTANEOUSLY;
            }
            if (i == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i);
        }
    }

    public ShapeTrimPath(String str, Type type, dc dcVar, dc dcVar2, dc dcVar3, boolean z) {
        this.a = str;
        this.b = type;
        this.c = dcVar;
        this.d = dcVar2;
        this.e = dcVar3;
        this.f = z;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, com.airbnb.lottie.model.layer.a aVar) {
        return new bab(aVar, this);
    }

    public dc b() {
        return this.d;
    }

    public String c() {
        return this.a;
    }

    public dc d() {
        return this.e;
    }

    public dc e() {
        return this.c;
    }

    public Type f() {
        return this.b;
    }

    public boolean g() {
        return this.f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.c + ", end: " + this.d + ", offset: " + this.e + StringSubstitutor.DEFAULT_VAR_END;
    }
}
