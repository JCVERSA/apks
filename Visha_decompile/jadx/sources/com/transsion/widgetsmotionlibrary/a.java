package com.transsion.widgetsmotionlibrary;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {
    public static final C0270a e = new C0270a(null);
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public static final class C0270a {
        public C0270a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(float f) {
            return new a(f, f, f, f);
        }

        public C0270a() {
        }
    }

    public a(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    public static final a c(float f) {
        return e.a(f);
    }

    public final boolean a() {
        return this.a > 0.0f || this.b > 0.0f || this.c > 0.0f || this.d > 0.0f;
    }

    public final float[] b() {
        float f = this.a;
        float f2 = this.b;
        float f3 = this.c;
        float f4 = this.d;
        return new float[]{f, f, f2, f2, f3, f3, f4, f4};
    }

    public a(float f, float f2, float f3, float f4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? 0.0f : f3, (i & 8) != 0 ? 0.0f : f4);
    }
}
