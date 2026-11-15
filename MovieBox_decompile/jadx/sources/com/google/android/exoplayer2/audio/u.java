package com.google.android.exoplayer2.audio;

public final class u {

    public final int f24082a;

    public final float f24083b;

    public u(int i10, float f10) {
        this.f24082a = i10;
        this.f24083b = f10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u.class != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        return this.f24082a == uVar.f24082a && Float.compare(uVar.f24083b, this.f24083b) == 0;
    }

    public int hashCode() {
        return ((527 + this.f24082a) * 31) + Float.floatToIntBits(this.f24083b);
    }
}
