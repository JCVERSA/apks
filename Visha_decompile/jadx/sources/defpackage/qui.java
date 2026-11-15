package defpackage;

import com.google.android.gms.internal.ads.ha;
import com.google.android.gms.internal.ads.ja;
import com.google.android.gms.internal.ads.zzgwn;
import com.google.android.gms.internal.ads.zzgyj;
import java.util.Arrays;

public final class qui {
    public static final qui f = new qui(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d;
    public boolean e;

    public qui(int i, int[] iArr, Object[] objArr, boolean z) {
        this.d = -1;
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public static qui c() {
        return f;
    }

    public static qui e(qui quiVar, qui quiVar2) {
        int i = quiVar.a + quiVar2.a;
        int[] iArrCopyOf = Arrays.copyOf(quiVar.b, i);
        System.arraycopy(quiVar2.b, 0, iArrCopyOf, quiVar.a, quiVar2.a);
        Object[] objArrCopyOf = Arrays.copyOf(quiVar.c, i);
        System.arraycopy(quiVar2.c, 0, objArrCopyOf, quiVar.a, quiVar2.a);
        return new qui(i, iArrCopyOf, objArrCopyOf, true);
    }

    public static qui f() {
        return new qui();
    }

    public final int a() {
        int iE;
        int iF;
        int iE2;
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
                    iE2 = ha.e(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzgwn zzgwnVar = (zzgwn) this.c[i3];
                    int iE3 = ha.e(i7);
                    int iZzd = zzgwnVar.zzd();
                    iE2 = iE3 + ha.e(iZzd) + iZzd;
                } else if (i6 == 3) {
                    int iE4 = ha.e(i5 << 3);
                    iE = iE4 + iE4;
                    iF = ((qui) this.c[i3]).a();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(new zzgyj("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.c[i3]).intValue();
                    iE2 = ha.e(i5 << 3) + 4;
                }
                i2 += iE2;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.c[i3]).longValue();
                iE = ha.e(i8);
                iF = ha.f(jLongValue);
            }
            iE2 = iE + iF;
            i2 += iE2;
        }
        this.d = i2;
        return i2;
    }

    public final int b() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int iE = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = this.b[i2] >>> 3;
            zzgwn zzgwnVar = (zzgwn) this.c[i2];
            int iE2 = ha.e(8);
            int iE3 = ha.e(16) + ha.e(i3);
            int iE4 = ha.e(24);
            int iZzd = zzgwnVar.zzd();
            iE += iE2 + iE2 + iE3 + iE4 + ha.e(iZzd) + iZzd;
        }
        this.d = iE;
        return iE;
    }

    public final qui d(qui quiVar) {
        if (quiVar.equals(f)) {
            return this;
        }
        g();
        int i = this.a + quiVar.a;
        l(i);
        System.arraycopy(quiVar.b, 0, this.b, this.a, quiVar.a);
        System.arraycopy(quiVar.c, 0, this.c, this.a, quiVar.a);
        this.a = i;
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof qui)) {
            return false;
        }
        qui quiVar = (qui) obj;
        int i = this.a;
        if (i == quiVar.a) {
            int[] iArr = this.b;
            int[] iArr2 = quiVar.b;
            for (int i2 = 0; i2 < i; i2++) {
                if (iArr[i2] == iArr2[i2]) {
                }
            }
            Object[] objArr = this.c;
            Object[] objArr2 = quiVar.c;
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
            ja.b(sb, i, String.valueOf(this.b[i2] >>> 3), this.c[i2]);
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

    public final void k(bvi bviVar) {
        if (this.a != 0) {
            for (int i = 0; i < this.a; i++) {
                int i2 = this.b[i];
                Object obj = this.c[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    bviVar.n(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    bviVar.l(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    bviVar.v(i4, (zzgwn) obj);
                } else if (i3 == 3) {
                    bviVar.x(i4);
                    ((qui) obj).k(bviVar);
                    bviVar.zzh(i4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new zzgyj("Protocol message tag had invalid wire type."));
                    }
                    bviVar.f(i4, ((Integer) obj).intValue());
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

    public qui() {
        this(0, new int[8], new Object[8], true);
    }
}
