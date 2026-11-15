package defpackage;

public final class zv7 implements uv2.a {
    public final int a;

    public zv7(int i) {
        this.a = i;
    }

    public final int a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zv7) && this.a == ((zv7) obj).a;
    }

    public int hashCode() {
        return Integer.hashCode(this.a);
    }

    public String toString() {
        return "PagerState(currentPageIndex=" + this.a + ')';
    }
}
