package defpackage;

public final class omh implements iqe {
    public final float a;
    public final float b;

    public omh(float f, float f2) {
        boolean z = false;
        if (f >= -90.0f && f <= 90.0f && f2 >= -180.0f && f2 <= 180.0f) {
            z = true;
        }
        n7g.e(z, "Invalid latitude or longitude");
        this.a = f;
        this.b = f2;
    }

    @Override
    public final void a(une uneVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && omh.class == obj.getClass()) {
            omh omhVar = (omh) obj;
            if (this.a == omhVar.a && this.b == omhVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.a).hashCode() + 527) * 31) + Float.valueOf(this.b).hashCode();
    }

    public final String toString() {
        return "xyz: latitude=" + this.a + ", longitude=" + this.b;
    }
}
