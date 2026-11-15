package z0;

import android.graphics.Insets;
import android.graphics.Rect;

public final class c {

    public static final c f76464e = new c(0, 0, 0, 0);

    public final int f76465a;

    public final int f76466b;

    public final int f76467c;

    public final int f76468d;

    static class a {
        static Insets a(int i10, int i11, int i12, int i13) {
            return Insets.of(i10, i11, i12, i13);
        }
    }

    private c(int i10, int i11, int i12, int i13) {
        this.f76465a = i10;
        this.f76466b = i11;
        this.f76467c = i12;
        this.f76468d = i13;
    }

    public static c a(c cVar, c cVar2) {
        return c(Math.max(cVar.f76465a, cVar2.f76465a), Math.max(cVar.f76466b, cVar2.f76466b), Math.max(cVar.f76467c, cVar2.f76467c), Math.max(cVar.f76468d, cVar2.f76468d));
    }

    public static c b(c cVar, c cVar2) {
        return c(Math.min(cVar.f76465a, cVar2.f76465a), Math.min(cVar.f76466b, cVar2.f76466b), Math.min(cVar.f76467c, cVar2.f76467c), Math.min(cVar.f76468d, cVar2.f76468d));
    }

    public static c c(int i10, int i11, int i12, int i13) {
        return (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) ? f76464e : new c(i10, i11, i12, i13);
    }

    public static c d(Rect rect) {
        return c(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static c e(c cVar, c cVar2) {
        return c(cVar.f76465a - cVar2.f76465a, cVar.f76466b - cVar2.f76466b, cVar.f76467c - cVar2.f76467c, cVar.f76468d - cVar2.f76468d);
    }

    public static c f(Insets insets) {
        return c(insets.left, insets.top, insets.right, insets.bottom);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f76468d == cVar.f76468d && this.f76465a == cVar.f76465a && this.f76467c == cVar.f76467c && this.f76466b == cVar.f76466b;
    }

    public Insets g() {
        return a.a(this.f76465a, this.f76466b, this.f76467c, this.f76468d);
    }

    public int hashCode() {
        return (((((this.f76465a * 31) + this.f76466b) * 31) + this.f76467c) * 31) + this.f76468d;
    }

    public String toString() {
        return "Insets{left=" + this.f76465a + ", top=" + this.f76466b + ", right=" + this.f76467c + ", bottom=" + this.f76468d + '}';
    }
}
