package com.yandex.div.internal.widget.indicator;

import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class c {

    public static final class a extends c {
        public final int a;
        public final com.yandex.div.internal.widget.indicator.b.a b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i, com.yandex.div.internal.widget.indicator.b.a aVar) {
            super(null);
            y45.j(aVar, "itemSize");
            this.a = i;
            this.b = aVar;
        }

        @Override
        public int c() {
            return this.a;
        }

        @Override
        public com.yandex.div.internal.widget.indicator.b.a d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && y45.e(this.b, aVar.b);
        }

        public int hashCode() {
            return (Integer.hashCode(this.a) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "Circle(color=" + this.a + ", itemSize=" + this.b + ')';
        }
    }

    public static final class b extends c {
        public final int a;
        public final com.yandex.div.internal.widget.indicator.b.C0303b b;
        public final float c;
        public final int d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i, com.yandex.div.internal.widget.indicator.b.C0303b c0303b, float f, int i2) {
            super(null);
            y45.j(c0303b, "itemSize");
            this.a = i;
            this.b = c0303b;
            this.c = f;
            this.d = i2;
        }

        @Override
        public int c() {
            return this.a;
        }

        @Override
        public com.yandex.div.internal.widget.indicator.b.C0303b d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && y45.e(this.b, bVar.b) && Float.compare(this.c, bVar.c) == 0 && this.d == bVar.d;
        }

        public final int f() {
            return this.d;
        }

        public final float g() {
            return this.c;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Float.hashCode(this.c)) * 31) + Integer.hashCode(this.d);
        }

        public String toString() {
            return "RoundedRect(color=" + this.a + ", itemSize=" + this.b + ", strokeWidth=" + this.c + ", strokeColor=" + this.d + ')';
        }
    }

    public c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final int a() {
        if (this instanceof b) {
            return ((b) this).f();
        }
        return 0;
    }

    public final float b() {
        if (this instanceof b) {
            return ((b) this).g();
        }
        return 0.0f;
    }

    public abstract int c();

    public abstract com.yandex.div.internal.widget.indicator.b d();

    public c() {
    }
}
