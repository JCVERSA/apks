package defpackage;

import java.util.Arrays;

public final class z77 {
    public final float[] a;
    public final int[] b;
    public final float c;

    public z77(float[] fArr, int[] iArr, float f) {
        y45.j(fArr, "positions");
        y45.j(iArr, "colors");
        this.a = fArr;
        this.b = iArr;
        this.c = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z77)) {
            return false;
        }
        z77 z77Var = (z77) obj;
        return y45.e(this.a, z77Var.a) && y45.e(this.b, z77Var.b) && Float.compare(this.c, z77Var.c) == 0;
    }

    public final int[] getColors() {
        return this.b;
    }

    public final float[] getPositions() {
        return this.a;
    }

    public final float getRotationDegrees() {
        return this.c;
    }

    public int hashCode() {
        return (((Arrays.hashCode(this.a) * 31) + Arrays.hashCode(this.b)) * 31) + Float.hashCode(this.c);
    }

    public String toString() {
        return "OSLiquidSuperfluidSweepStops(positions=" + Arrays.toString(this.a) + ", colors=" + Arrays.toString(this.b) + ", rotationDegrees=" + this.c + ")";
    }
}
