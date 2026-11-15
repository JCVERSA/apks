package m0;

import java.util.Map;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private int[] f66186a;

    private Object[] f66187b;

    private int f66188c;

    @JvmOverloads
    public c() {
        this(0, 1, null);
    }

    public final boolean a(Object obj) {
        return d(obj) >= 0;
    }

    public final Object b(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return this.f66187b[(iD << 1) + 1];
        }
        return null;
    }

    protected final int c(Object obj, int i10) {
        int i11 = this.f66188c;
        if (i11 == 0) {
            return -1;
        }
        int iA = a.a(this.f66186a, i11, i10);
        if (iA < 0 || Intrinsics.c(obj, this.f66187b[iA << 1])) {
            return iA;
        }
        int i12 = iA + 1;
        while (i12 < i11 && this.f66186a[i12] == i10) {
            if (Intrinsics.c(obj, this.f66187b[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iA - 1; i13 >= 0 && this.f66186a[i13] == i10; i13--) {
            if (Intrinsics.c(obj, this.f66187b[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    public final int d(Object obj) {
        return obj == null ? e() : c(obj, obj.hashCode());
    }

    protected final int e() {
        int i10 = this.f66188c;
        if (i10 == 0) {
            return -1;
        }
        int iA = a.a(this.f66186a, i10, 0);
        if (iA < 0 || this.f66187b[iA << 1] == null) {
            return iA;
        }
        int i11 = iA + 1;
        while (i11 < i10 && this.f66186a[i11] == 0) {
            if (this.f66187b[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iA - 1; i12 >= 0 && this.f66186a[i12] == 0; i12--) {
            if (this.f66187b[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof c) {
                c cVar = (c) obj;
                int i10 = this.f66188c;
                if (i10 != cVar.f66188c) {
                    return false;
                }
                for (int i11 = 0; i11 < i10; i11++) {
                    Object objG = g(i11);
                    Object objH = h(i11);
                    Object objB = cVar.b(objG);
                    if (objH == null) {
                        if (objB != null || !cVar.a(objG)) {
                            return false;
                        }
                    } else if (!Intrinsics.c(objH, objB)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.f66188c != ((Map) obj).size()) {
                return false;
            }
            int i12 = this.f66188c;
            for (int i13 = 0; i13 < i12; i13++) {
                Object objG2 = g(i13);
                Object objH2 = h(i13);
                Object obj2 = ((Map) obj).get(objG2);
                if (objH2 == null) {
                    if (obj2 != null || !((Map) obj).containsKey(objG2)) {
                        return false;
                    }
                } else if (!Intrinsics.c(objH2, obj2)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final boolean f() {
        return this.f66188c <= 0;
    }

    public final Object g(int i10) {
        return this.f66187b[i10 << 1];
    }

    public final Object h(int i10) {
        return this.f66187b[(i10 << 1) + 1];
    }

    public int hashCode() {
        int[] iArr = this.f66186a;
        Object[] objArr = this.f66187b;
        int i10 = this.f66188c;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    public String toString() {
        if (f()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f66188c * 28);
        sb2.append('{');
        int i10 = this.f66188c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            Object objG = g(i11);
            if (objG != this) {
                sb2.append(objG);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            Object objH = h(i11);
            if (objH != this) {
                sb2.append(objH);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public c(int i10) {
        if (i10 == 0) {
            this.f66186a = a.f66174a;
            this.f66187b = a.f66175b;
        } else {
            this.f66186a = new int[i10];
            this.f66187b = new Object[i10 << 1];
        }
        this.f66188c = 0;
    }

    public c(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
