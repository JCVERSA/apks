package androidx.compose.ui.layout;

public final class g implements e {

    private final float f4877b;

    public g(float f10) {
        this.f4877b = f10;
    }

    @Override
    public long a(long j10, long j11) {
        float f10 = this.f4877b;
        return m0.a(f10, f10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && Float.compare(this.f4877b, ((g) obj).f4877b) == 0;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f4877b);
    }

    public String toString() {
        return "FixedScale(value=" + this.f4877b + ')';
    }
}
