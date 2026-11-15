package kotlin.ranges;

final class c implements OpenEndRange {

    private final float f64407a;

    private final float f64408b;

    public c(float f10, float f11) {
        this.f64407a = f10;
        this.f64408b = f11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean a(Comparable comparable) {
        return b(((Number) comparable).floatValue());
    }

    public boolean b(float f10) {
        return f10 >= this.f64407a && f10 < this.f64408b;
    }

    public boolean c() {
        return this.f64407a >= this.f64408b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!c() || !((c) obj).c()) {
                c cVar = (c) obj;
                if (this.f64407a != cVar.f64407a || this.f64408b != cVar.f64408b) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (c()) {
            return -1;
        }
        return (Float.floatToIntBits(this.f64407a) * 31) + Float.floatToIntBits(this.f64408b);
    }

    public String toString() {
        return this.f64407a + "..<" + this.f64408b;
    }
}
