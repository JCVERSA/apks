package defpackage;

public final class cd4 implements uv2.a {
    public final int a;
    public final int b;

    public cd4(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cd4)) {
            return false;
        }
        cd4 cd4Var = (cd4) obj;
        return this.a == cd4Var.a && this.b == cd4Var.b;
    }

    public int hashCode() {
        return (Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b);
    }

    public String toString() {
        return "GalleryState(visibleItemIndex=" + this.a + ", scrollOffset=" + this.b + ')';
    }
}
