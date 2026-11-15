package androidx.compose.material.ripple;

public final class c {

    private final float f3186a;

    private final float f3187b;

    private final float f3188c;

    private final float f3189d;

    public c(float f10, float f11, float f12, float f13) {
        this.f3186a = f10;
        this.f3187b = f11;
        this.f3188c = f12;
        this.f3189d = f13;
    }

    public final float a() {
        return this.f3186a;
    }

    public final float b() {
        return this.f3187b;
    }

    public final float c() {
        return this.f3188c;
    }

    public final float d() {
        return this.f3189d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f3186a == cVar.f3186a && this.f3187b == cVar.f3187b && this.f3188c == cVar.f3188c && this.f3189d == cVar.f3189d;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f3186a) * 31) + Float.floatToIntBits(this.f3187b)) * 31) + Float.floatToIntBits(this.f3188c)) * 31) + Float.floatToIntBits(this.f3189d);
    }

    public String toString() {
        return "RippleAlpha(draggedAlpha=" + this.f3186a + ", focusedAlpha=" + this.f3187b + ", hoveredAlpha=" + this.f3188c + ", pressedAlpha=" + this.f3189d + ')';
    }
}
