package defpackage;

public class v94 implements rc8 {
    public final int[] a;

    public v94(int[] iArr) {
        this.a = ci.h(iArr);
    }

    @Override
    public int[] a() {
        return ci.h(this.a);
    }

    @Override
    public int b() {
        int[] iArr = this.a;
        return iArr[iArr.length - 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof v94) {
            return ci.d(this.a, ((v94) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return ci.y(this.a);
    }
}
