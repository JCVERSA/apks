package kotlin.ranges;

final class b implements ClosedFloatingPointRange {

    private final float f64405a;

    private final float f64406b;

    public b(float f10, float f11) {
        this.f64405a = f10;
        this.f64406b = f11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean a(Comparable comparable) {
        return b(((Number) comparable).floatValue());
    }

    public boolean b(float f10) {
        return f10 >= this.f64405a && f10 <= this.f64406b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean c(Comparable comparable, Comparable comparable2) {
        return g(((Number) comparable).floatValue(), ((Number) comparable2).floatValue());
    }

    @Override
    public Float e() {
        return Float.valueOf(this.f64406b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            if (!isEmpty() || !((b) obj).isEmpty()) {
                b bVar = (b) obj;
                if (this.f64405a != bVar.f64405a || this.f64406b != bVar.f64406b) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public Float j() {
        return Float.valueOf(this.f64405a);
    }

    public boolean g(float f10, float f11) {
        return f10 <= f11;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (Float.floatToIntBits(this.f64405a) * 31) + Float.floatToIntBits(this.f64406b);
    }

    @Override
    public boolean isEmpty() {
        return this.f64405a > this.f64406b;
    }

    public String toString() {
        return this.f64405a + ".." + this.f64406b;
    }
}
