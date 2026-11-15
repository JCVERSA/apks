package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzha;
import java.util.Arrays;

public final class i3j {
    public static final i3j f = new i3j(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d = -1;
    public boolean e;

    public i3j(int i, int[] iArr, Object[] objArr, boolean z) {
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static i3j c() {
        return f;
    }

    public static i3j e(i3j i3jVar, i3j i3jVar2) {
        int i = i3jVar.a + i3jVar2.a;
        int[] iArrCopyOf = Arrays.copyOf(i3jVar.b, i);
        System.arraycopy(i3jVar2.b, 0, iArrCopyOf, i3jVar.a, i3jVar2.a);
        Object[] objArrCopyOf = Arrays.copyOf(i3jVar.c, i);
        System.arraycopy(i3jVar2.c, 0, objArrCopyOf, i3jVar.a, i3jVar2.a);
        return new i3j(i, iArrCopyOf, objArrCopyOf, true);
    }

    public static i3j f() {
        return new i3j(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iW;
        int iX;
        int iW2;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.a; i3++) {
            int i4 = this.b[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.c[i3]).longValue();
                    iW2 = o4i.w(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzfp zzfpVar = (zzfp) this.c[i3];
                    int iW3 = o4i.w(i7);
                    int iZzd = zzfpVar.zzd();
                    iW2 = iW3 + o4i.w(iZzd) + iZzd;
                } else if (i6 == 3) {
                    int iW4 = o4i.w(i5 << 3);
                    iW = iW4 + iW4;
                    iX = ((i3j) this.c[i3]).a();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(new zzha("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.c[i3]).intValue();
                    iW2 = o4i.w(i5 << 3) + 4;
                }
                i2 += iW2;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.c[i3]).longValue();
                iW = o4i.w(i8);
                iX = o4i.x(jLongValue);
            }
            iW2 = iW + iX;
            i2 += iW2;
        }
        this.d = i2;
        return i2;
    }

    public final int b() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iW = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2] >>> 3;
            zzfp zzfpVar = (zzfp) this.c[i2];
            int iW2 = o4i.w(8);
            int iW3 = o4i.w(16) + o4i.w(i3);
            int iW4 = o4i.w(24);
            int iZzd = zzfpVar.zzd();
            iW += iW2 + iW2 + iW3 + iW4 + o4i.w(iZzd) + iZzd;
        }
        this.d = iW;
        return iW;
    }

    public final i3j d(i3j i3jVar) {
        if (i3jVar.equals(f)) {
            return this;
        }
        g();
        int i = this.a + i3jVar.a;
        l(i);
        System.arraycopy(i3jVar.b, 0, this.b, this.a, i3jVar.a);
        System.arraycopy(i3jVar.c, 0, this.c, this.a, i3jVar.a);
        this.a = i;
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof i3j)) {
            return false;
        }
        i3j i3jVar = (i3j) obj;
        int i = this.a;
        if (i == i3jVar.a) {
            int[] iArr = this.b;
            int[] iArr2 = i3jVar.b;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.c;
            Object[] objArr2 = i3jVar.c;
            int i3 = this.a;
            for (int i4 = 0; i4 < i3; i4++) {
                if (objArr[i4].equals(objArr2[i4])) {
                }
            }
            return true;
        }
        return false;
    }

    public final void g() {
        if (!this.e) {
            throw new UnsupportedOperationException();
        }
    }

    public final void h() {
        if (this.e) {
            this.e = false;
        }
    }

    public final int hashCode() {
        int i = this.a;
        int i2 = i + 527;
        int[] iArr = this.b;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = ((i2 * 31) + i3) * 31;
        Object[] objArr = this.c;
        int i6 = this.a;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    public final void i(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.a; i2++) {
            n0j.b(sb, i, String.valueOf(this.b[i2] >>> 3), this.c[i2]);
        }
    }

    public final void j(int i, Object obj) {
        g();
        l(this.a + 1);
        int[] iArr = this.b;
        int i2 = this.a;
        iArr[i2] = i;
        this.c[i2] = obj;
        this.a = i2 + 1;
    }

    public final void k(a5j a5jVar) {
        if (this.a != 0) {
            for (int i = 0; i < this.a; i++) {
                int i2 = this.b[i];
                Object obj = this.c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    a5jVar.n(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    a5jVar.l(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    a5jVar.D(i3, (zzfp) obj);
                } else if (i4 == 3) {
                    a5jVar.zzG(i3);
                    ((i3j) obj).k(a5jVar);
                    a5jVar.zzh(i3);
                } else {
                    if (i4 != 5) {
                        throw new RuntimeException(new zzha("Protocol message tag had invalid wire type."));
                    }
                    a5jVar.f(i3, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final void l(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.a;
            int i3 = i2 + (i2 / 2);
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.c = Arrays.copyOf(this.c, i);
        }
    }
}
