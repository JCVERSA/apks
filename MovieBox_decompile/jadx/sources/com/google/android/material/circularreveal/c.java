package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;

public interface c extends com.google.android.material.circularreveal.b.a {

    public static class b implements TypeEvaluator {

        public static final TypeEvaluator f27927b = new b();

        private final e f27928a = new e();

        @Override
        public e evaluate(float f10, e eVar, e eVar2) {
            this.f27928a.b(xa.a.d(eVar.f27931a, eVar2.f27931a, f10), xa.a.d(eVar.f27932b, eVar2.f27932b, f10), xa.a.d(eVar.f27933c, eVar2.f27933c, f10));
            return this.f27928a;
        }
    }

    public static class C0370c extends Property {

        public static final Property f27929a = new C0370c("circularReveal");

        private C0370c(String str) {
            super(e.class, str);
        }

        @Override
        public e get(c cVar) {
            return cVar.getRevealInfo();
        }

        @Override
        public void set(c cVar, e eVar) {
            cVar.setRevealInfo(eVar);
        }
    }

    public static class d extends Property {

        public static final Property f27930a = new d("circularRevealScrimColor");

        private d(String str) {
            super(Integer.class, str);
        }

        @Override
        public Integer get(c cVar) {
            return Integer.valueOf(cVar.getCircularRevealScrimColor());
        }

        @Override
        public void set(c cVar, Integer num) {
            cVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {

        public float f27931a;

        public float f27932b;

        public float f27933c;

        public boolean a() {
            return this.f27933c == Float.MAX_VALUE;
        }

        public void b(float f10, float f11, float f12) {
            this.f27931a = f10;
            this.f27932b = f11;
            this.f27933c = f12;
        }

        public void c(e eVar) {
            b(eVar.f27931a, eVar.f27932b, eVar.f27933c);
        }

        private e() {
        }

        public e(float f10, float f11, float f12) {
            this.f27931a = f10;
            this.f27932b = f11;
            this.f27933c = f12;
        }

        public e(e eVar) {
            this(eVar.f27931a, eVar.f27932b, eVar.f27933c);
        }
    }

    void buildCircularRevealCache();

    void destroyCircularRevealCache();

    int getCircularRevealScrimColor();

    e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i10);

    void setRevealInfo(e eVar);
}
