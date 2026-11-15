package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;

public final class MutableScatterSet extends ScatterSet {

    private int f1930e;

    private final class MutableSetWrapper extends ScatterSet.a implements Set, KMutableSet {
        public MutableSetWrapper() {
            super();
        }

        @Override
        public boolean add(Object obj) {
            return MutableScatterSet.this.h(obj);
        }

        @Override
        public boolean addAll(Collection elements) {
            Intrinsics.h(elements, "elements");
            return MutableScatterSet.this.j(elements);
        }

        @Override
        public void clear() {
            MutableScatterSet.this.m();
        }

        @Override
        public Iterator iterator() {
            return new MutableScatterSet$MutableSetWrapper$iterator$1(MutableScatterSet.this);
        }

        @Override
        public boolean remove(Object obj) {
            return MutableScatterSet.this.x(obj);
        }

        @Override
        public boolean removeAll(Collection elements) {
            Intrinsics.h(elements, "elements");
            int iC = MutableScatterSet.this.c();
            Iterator it = elements.iterator();
            while (it.hasNext()) {
                MutableScatterSet.this.t(it.next());
            }
            return iC != MutableScatterSet.this.c();
        }

        @Override
        public boolean retainAll(Collection elements) {
            Intrinsics.h(elements, "elements");
            MutableScatterSet mutableScatterSet = MutableScatterSet.this;
            long[] jArr = mutableScatterSet.f1937a;
            int length = jArr.length - 2;
            boolean z10 = false;
            if (length >= 0) {
                int i10 = 0;
                boolean z11 = false;
                while (true) {
                    long j10 = jArr[i10];
                    if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        for (int i12 = 0; i12 < i11; i12++) {
                            if ((255 & j10) < 128) {
                                int i13 = (i10 << 3) + i12;
                                if (!elements.contains(mutableScatterSet.f1938b[i13])) {
                                    mutableScatterSet.y(i13);
                                    z11 = true;
                                }
                            }
                            j10 >>= 8;
                        }
                        if (i11 != 8) {
                            return z11;
                        }
                    }
                    if (i10 != length) {
                        i10++;
                    } else {
                        z10 = z11;
                    }
                }
            }
            return z10;
        }
    }

    public MutableScatterSet() {
        this(0, 1, null);
    }

    private final int o(Object obj) {
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i10 = iHashCode ^ (iHashCode << 16);
        int i11 = i10 >>> 7;
        int i12 = i10 & 127;
        int i13 = this.f1939c;
        int i14 = i11 & i13;
        int i15 = 0;
        while (true) {
            long[] jArr = this.f1937a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j10 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j11 = i12;
            int i18 = i12;
            long j12 = j10 ^ (j11 * 72340172838076673L);
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int iNumberOfTrailingZeros = (i14 + (Long.numberOfTrailingZeros(j13) >> 3)) & i13;
                if (Intrinsics.c(this.f1938b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j10) << 6) & j10 & (-9187201950435737472L)) != 0) {
                int iP = p(i11);
                if (this.f1930e == 0 && ((this.f1937a[iP >> 3] >> ((iP & 7) << 3)) & 255) != 254) {
                    k();
                    iP = p(i11);
                }
                this.f1940d++;
                int i19 = this.f1930e;
                long[] jArr2 = this.f1937a;
                int i20 = iP >> 3;
                long j14 = jArr2[i20];
                int i21 = (iP & 7) << 3;
                this.f1930e = i19 - (((j14 >> i21) & 255) == 128 ? 1 : 0);
                int i22 = this.f1939c;
                long j15 = ((~(255 << i21)) & j14) | (j11 << i21);
                jArr2[i20] = j15;
                jArr2[(((iP - 7) & i22) + (i22 & 7)) >> 3] = j15;
                return iP;
            }
            i15 += 8;
            i14 = (i14 + i15) & i13;
            i12 = i18;
        }
    }

    private final int p(int i10) {
        int i11 = this.f1939c;
        int i12 = i10 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr = this.f1937a;
            int i14 = i12 >> 3;
            int i15 = (i12 & 7) << 3;
            long j10 = ((jArr[i14 + 1] << (64 - i15)) & ((-i15) >> 63)) | (jArr[i14] >>> i15);
            long j11 = j10 & ((~j10) << 7) & (-9187201950435737472L);
            if (j11 != 0) {
                return (i12 + (Long.numberOfTrailingZeros(j11) >> 3)) & i11;
            }
            i13 += 8;
            i12 = (i12 + i13) & i11;
        }
    }

    private final void q() {
        this.f1930e = v0.c(b()) - this.f1940d;
    }

    private final void r(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = v0.f2044a;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f1937a = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        q();
    }

    private final void s(int i10) {
        int iMax = i10 > 0 ? Math.max(7, v0.f(i10)) : 0;
        this.f1939c = iMax;
        r(iMax);
        this.f1938b = new Object[iMax];
    }

    public final boolean h(Object obj) {
        int iC = c();
        this.f1938b[o(obj)] = obj;
        return c() != iC;
    }

    public final boolean i(ScatterSet elements) {
        Intrinsics.h(elements, "elements");
        int iC = c();
        u(elements);
        return iC != c();
    }

    public final boolean j(Iterable elements) {
        Intrinsics.h(elements, "elements");
        int iC = c();
        v(elements);
        return iC != c();
    }

    public final void k() {
        if (this.f1939c <= 8 || Long.compare(ULong.b(ULong.b(this.f1940d) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f1939c) * 25) ^ Long.MIN_VALUE) > 0) {
            z(v0.e(this.f1939c));
        } else {
            n();
        }
    }

    public final Set l() {
        return new MutableSetWrapper();
    }

    public final void m() {
        this.f1940d = 0;
        long[] jArr = this.f1937a;
        if (jArr != v0.f2044a) {
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f1937a;
            int i10 = this.f1939c;
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & (~j10)) | j10;
        }
        ArraysKt.u(this.f1938b, null, 0, this.f1939c);
        q();
    }

    public final void n() {
        int i10;
        long[] jArr = this.f1937a;
        int i11 = this.f1939c;
        Object[] objArr = this.f1938b;
        v0.a(jArr, i11);
        int i12 = 0;
        int i13 = 0;
        int iB = -1;
        while (i13 != i11) {
            int i14 = i13 >> 3;
            int i15 = (i13 & 7) << 3;
            long j10 = (jArr[i14] >> i15) & 255;
            if (j10 == 128) {
                iB = i13;
                i13++;
            } else {
                if (j10 == 254) {
                    Object obj = objArr[i13];
                    int iHashCode = (obj != null ? obj.hashCode() : i12) * (-862048943);
                    int i16 = iHashCode ^ (iHashCode << 16);
                    int i17 = i16 >>> 7;
                    int iP = p(i17);
                    int i18 = i17 & i11;
                    if (((iP - i18) & i11) / 8 == ((i13 - i18) & i11) / 8) {
                        jArr[i14] = (((long) (i16 & 127)) << i15) | ((~(255 << i15)) & jArr[i14]);
                        jArr[ArraysKt.X(jArr)] = (jArr[i12] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i19 = iP >> 3;
                        long j11 = jArr[i19];
                        int i20 = (iP & 7) << 3;
                        if (((j11 >> i20) & 255) == 128) {
                            int i21 = i13;
                            jArr[i19] = (((long) (i16 & 127)) << i20) | (j11 & (~(255 << i20)));
                            jArr[i14] = (jArr[i14] & (~(255 << i15))) | (128 << i15);
                            objArr[iP] = objArr[i21];
                            objArr[i21] = null;
                            i10 = i21;
                            iB = i10;
                        } else {
                            int i22 = i13;
                            jArr[i19] = (((long) (i16 & 127)) << i20) | (j11 & (~(255 << i20)));
                            if (iB == -1) {
                                iB = v0.b(jArr, i22 + 1, i11);
                            }
                            objArr[iB] = objArr[iP];
                            objArr[iP] = objArr[i22];
                            objArr[i22] = objArr[iB];
                            i10 = i22 - 1;
                        }
                        jArr[ArraysKt.X(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i13 = i10 + 1;
                        i12 = 0;
                    }
                }
                i13++;
            }
        }
        q();
    }

    public final void t(Object obj) {
        int iNumberOfTrailingZeros;
        int i10 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 & 127;
        int i13 = this.f1939c;
        int i14 = i11 >>> 7;
        loop0: while (true) {
            int i15 = i14 & i13;
            long[] jArr = this.f1937a;
            int i16 = i15 >> 3;
            int i17 = (i15 & 7) << 3;
            long j10 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j11 = (((long) i12) * 72340172838076673L) ^ j10;
            for (long j12 = (~j11) & (j11 - 72340172838076673L) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i15) & i13;
                if (Intrinsics.c(this.f1938b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            } else {
                i10 += 8;
                i14 = i15 + i10;
            }
        }
        if (iNumberOfTrailingZeros >= 0) {
            y(iNumberOfTrailingZeros);
        }
    }

    public final void u(ScatterSet elements) {
        Intrinsics.h(elements, "elements");
        Object[] objArr = elements.f1938b;
        long[] jArr = elements.f1937a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        w(objArr[(i10 << 3) + i12]);
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final void v(Iterable elements) {
        Intrinsics.h(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            w(it.next());
        }
    }

    public final void w(Object obj) {
        this.f1938b[o(obj)] = obj;
    }

    public final boolean x(Object obj) {
        int iNumberOfTrailingZeros;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i10 = iHashCode ^ (iHashCode << 16);
        int i11 = i10 & 127;
        int i12 = this.f1939c;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        loop0: while (true) {
            long[] jArr = this.f1937a;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j10 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j11 = (((long) i11) * 72340172838076673L) ^ j10;
            for (long j12 = (~j11) & (j11 - 72340172838076673L) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i13) & i12;
                if (Intrinsics.c(this.f1938b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
        boolean z10 = iNumberOfTrailingZeros >= 0;
        if (z10) {
            y(iNumberOfTrailingZeros);
        }
        return z10;
    }

    public final void y(int i10) {
        this.f1940d--;
        long[] jArr = this.f1937a;
        int i11 = this.f1939c;
        int i12 = i10 >> 3;
        int i13 = (i10 & 7) << 3;
        long j10 = (jArr[i12] & (~(255 << i13))) | (254 << i13);
        jArr[i12] = j10;
        jArr[(((i10 - 7) & i11) + (i11 & 7)) >> 3] = j10;
        this.f1938b[i10] = null;
    }

    public final void z(int i10) {
        long[] jArr = this.f1937a;
        Object[] objArr = this.f1938b;
        int i11 = this.f1939c;
        s(i10);
        long[] jArr2 = this.f1937a;
        Object[] objArr2 = this.f1938b;
        int i12 = this.f1939c;
        for (int i13 = 0; i13 < i11; i13++) {
            if (((jArr[i13 >> 3] >> ((i13 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i13];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
                int i14 = iHashCode ^ (iHashCode << 16);
                int iP = p(i14 >>> 7);
                long j10 = i14 & 127;
                int i15 = iP >> 3;
                int i16 = (iP & 7) << 3;
                long j11 = (jArr2[i15] & (~(255 << i16))) | (j10 << i16);
                jArr2[i15] = j11;
                jArr2[(((iP - 7) & i12) + (i12 & 7)) >> 3] = j11;
                objArr2[iP] = obj;
            }
        }
    }

    public MutableScatterSet(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        s(v0.g(i10));
    }

    public MutableScatterSet(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }
}
