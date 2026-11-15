package androidx.media3.common;

public final class f {

    public final int f9655a;

    public final float f9656b;

    public f(int i10, float f10) {
        this.f9655a = i10;
        this.f9656b = f10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return this.f9655a == fVar.f9655a && Float.compare(fVar.f9656b, this.f9656b) == 0;
    }

    public int hashCode() {
        return ((527 + this.f9655a) * 31) + Float.floatToIntBits(this.f9656b);
    }
}
