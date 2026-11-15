package defpackage;

public class vn9 {
    public final float a;

    public static class a {
        public final int a;
        public final int b;
        public final float c;

        public a(int i, int i2, float f) {
            this.a = i;
            this.b = i2;
            this.c = f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && Float.compare(aVar.c, this.c) == 0;
        }

        public int hashCode() {
            int i = ((this.a * 31) + this.b) * 31;
            float f = this.c;
            return i + (f != 0.0f ? Float.floatToIntBits(f) : 0);
        }

        public String toString() {
            return "Size{width=" + this.a + ", height=" + this.b + ", scaleFactor=" + this.c + '}';
        }
    }

    public vn9(float f) {
        this.a = f;
    }

    public final int a(float f) {
        return (int) Math.ceil(f / this.a);
    }

    public boolean b(int i, int i2) {
        return a((float) i2) == 0 || a((float) i) == 0;
    }

    public final int c(int i) {
        int i2 = i % 64;
        return i2 == 0 ? i : (i - i2) + 64;
    }

    public a d(int i, int i2) {
        float f = i;
        int iC = c(a(f));
        float f2 = f / iC;
        return new a(iC, (int) Math.ceil(i2 / f2), f2);
    }
}
