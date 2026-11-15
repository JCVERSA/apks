package com.yandex.div.internal.widget.indicator;

public interface a {

    public static final class C0302a implements a {
        public final float a;

        public C0302a(float f) {
            this.a = f;
        }

        public final float a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0302a) && Float.compare(this.a, ((C0302a) obj).a) == 0;
        }

        public int hashCode() {
            return Float.hashCode(this.a);
        }

        public String toString() {
            return "Default(spaceBetweenCenters=" + this.a + ')';
        }
    }

    public static final class b implements a {
        public final float a;
        public final int b;

        public b(float f, int i) {
            this.a = f;
            this.b = i;
        }

        public final float a() {
            return this.a;
        }

        public final int b() {
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
            return Float.compare(this.a, bVar.a) == 0 && this.b == bVar.b;
        }

        public int hashCode() {
            return (Float.hashCode(this.a) * 31) + Integer.hashCode(this.b);
        }

        public String toString() {
            return "Stretch(itemSpacing=" + this.a + ", maxVisibleItems=" + this.b + ')';
        }
    }
}
