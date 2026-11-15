package defpackage;

public final class mde implements iqe {
    public final float a;
    public final int b;

    public mde(float f, int i) {
        this.a = f;
        this.b = i;
    }

    @Override
    public final void a(une uneVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && mde.class == obj.getClass()) {
            mde mdeVar = (mde) obj;
            if (this.a == mdeVar.a && this.b == mdeVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.a).hashCode() + 527) * 31) + this.b;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.a + ", svcTemporalLayerCount=" + this.b;
    }
}
