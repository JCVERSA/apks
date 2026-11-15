package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.media3.common.C;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.source.ads.a;
import defpackage.blb;
import defpackage.zi;
import java.util.ArrayList;
import java.util.Arrays;

public final class a implements e {
    public static final a h = new a(null, new C0082a[0], 0, C.TIME_UNSET, 0);
    public static final C0082a i = new C0082a(0).j(0);
    public static final e.a j = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return a.c(bundle);
        }
    };
    public final Object b;
    public final int c;
    public final long d;
    public final long e;
    public final int f;
    public final C0082a[] g;

    public static final class C0082a implements e {
        public static final e.a i = new e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return a.C0082a.d(bundle);
            }
        };
        public final long b;
        public final int c;
        public final Uri[] d;
        public final int[] e;
        public final long[] f;
        public final long g;
        public final boolean h;

        public C0082a(long j) {
            this(j, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        public static long[] b(long[] jArr, int i2) {
            int length = jArr.length;
            int iMax = Math.max(i2, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, C.TIME_UNSET);
            return jArrCopyOf;
        }

        public static int[] c(int[] iArr, int i2) {
            int length = iArr.length;
            int iMax = Math.max(i2, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        public static C0082a d(Bundle bundle) {
            long j = bundle.getLong(h(0));
            int i2 = bundle.getInt(h(1), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(h(2));
            int[] intArray = bundle.getIntArray(h(3));
            long[] longArray = bundle.getLongArray(h(4));
            long j2 = bundle.getLong(h(5));
            boolean z = bundle.getBoolean(h(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            return new C0082a(j, i2, intArray, parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, j2, z);
        }

        private static String h(int i2) {
            return Integer.toString(i2, 36);
        }

        public int e() {
            return f(-1);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0082a.class != obj.getClass()) {
                return false;
            }
            C0082a c0082a = (C0082a) obj;
            return this.b == c0082a.b && this.c == c0082a.c && Arrays.equals(this.d, c0082a.d) && Arrays.equals(this.e, c0082a.e) && Arrays.equals(this.f, c0082a.f) && this.g == c0082a.g && this.h == c0082a.h;
        }

        public int f(int i2) {
            int i3;
            int i4 = i2 + 1;
            while (true) {
                int[] iArr = this.e;
                if (i4 >= iArr.length || this.h || (i3 = iArr[i4]) == 0 || i3 == 1) {
                    break;
                }
                i4++;
            }
            return i4;
        }

        public boolean g() {
            if (this.c == -1) {
                return true;
            }
            for (int i2 = 0; i2 < this.c; i2++) {
                int i3 = this.e[i2];
                if (i3 == 0 || i3 == 1) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i2 = this.c * 31;
            long j = this.b;
            int iHashCode = (((((((i2 + ((int) (j ^ (j >>> 32)))) * 31) + Arrays.hashCode(this.d)) * 31) + Arrays.hashCode(this.e)) * 31) + Arrays.hashCode(this.f)) * 31;
            long j2 = this.g;
            return ((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.h ? 1 : 0);
        }

        public boolean i() {
            return this.c == -1 || e() < this.c;
        }

        public C0082a j(int i2) {
            int[] iArrC = c(this.e, i2);
            long[] jArrB = b(this.f, i2);
            return new C0082a(this.b, i2, iArrC, (Uri[]) Arrays.copyOf(this.d, i2), jArrB, this.g, this.h);
        }

        public C0082a k(int i2, int i3) {
            int i4 = this.c;
            zi.a(i4 == -1 || i3 < i4);
            int[] iArrC = c(this.e, i3 + 1);
            int i5 = iArrC[i3];
            zi.a(i5 == 0 || i5 == 1 || i5 == i2);
            long[] jArrB = this.f;
            if (jArrB.length != iArrC.length) {
                jArrB = b(jArrB, iArrC.length);
            }
            long[] jArr = jArrB;
            Uri[] uriArr = this.d;
            if (uriArr.length != iArrC.length) {
                uriArr = (Uri[]) Arrays.copyOf(uriArr, iArrC.length);
            }
            Uri[] uriArr2 = uriArr;
            iArrC[i3] = i2;
            return new C0082a(this.b, this.c, iArrC, uriArr2, jArr, this.g, this.h);
        }

        public C0082a l(Uri uri, int i2) {
            int[] iArrC = c(this.e, i2 + 1);
            long[] jArrB = this.f;
            if (jArrB.length != iArrC.length) {
                jArrB = b(jArrB, iArrC.length);
            }
            long[] jArr = jArrB;
            Uri[] uriArr = (Uri[]) Arrays.copyOf(this.d, iArrC.length);
            uriArr[i2] = uri;
            iArrC[i2] = 1;
            return new C0082a(this.b, this.c, iArrC, uriArr, jArr, this.g, this.h);
        }

        public C0082a m() {
            if (this.c == -1) {
                return new C0082a(this.b, 0, new int[0], new Uri[0], new long[0], this.g, this.h);
            }
            int[] iArr = this.e;
            int length = iArr.length;
            int[] iArrCopyOf = Arrays.copyOf(iArr, length);
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArrCopyOf[i2];
                if (i3 == 1 || i3 == 0) {
                    iArrCopyOf[i2] = 2;
                }
            }
            return new C0082a(this.b, length, iArrCopyOf, this.d, this.f, this.g, this.h);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(h(0), this.b);
            bundle.putInt(h(1), this.c);
            bundle.putParcelableArrayList(h(2), new ArrayList<>(Arrays.asList(this.d)));
            bundle.putIntArray(h(3), this.e);
            bundle.putLongArray(h(4), this.f);
            bundle.putLong(h(5), this.g);
            bundle.putBoolean(h(6), this.h);
            return bundle;
        }

        public C0082a(long j, int i2, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
            zi.a(iArr.length == uriArr.length);
            this.b = j;
            this.c = i2;
            this.e = iArr;
            this.d = uriArr;
            this.f = jArr;
            this.g = j2;
            this.h = z;
        }
    }

    public a(Object obj, long... jArr) {
        this(obj, b(jArr), 0L, C.TIME_UNSET, 0);
    }

    public static C0082a[] b(long[] jArr) {
        int length = jArr.length;
        C0082a[] c0082aArr = new C0082a[length];
        for (int i2 = 0; i2 < length; i2++) {
            c0082aArr[i2] = new C0082a(jArr[i2]);
        }
        return c0082aArr;
    }

    public static a c(Bundle bundle) {
        C0082a[] c0082aArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(i(1));
        if (parcelableArrayList == null) {
            c0082aArr = new C0082a[0];
        } else {
            C0082a[] c0082aArr2 = new C0082a[parcelableArrayList.size()];
            for (int i2 = 0; i2 < parcelableArrayList.size(); i2++) {
                c0082aArr2[i2] = (C0082a) C0082a.i.fromBundle((Bundle) parcelableArrayList.get(i2));
            }
            c0082aArr = c0082aArr2;
        }
        return new a(null, c0082aArr, bundle.getLong(i(2), 0L), bundle.getLong(i(3), C.TIME_UNSET), bundle.getInt(i(4)));
    }

    private static String i(int i2) {
        return Integer.toString(i2, 36);
    }

    public C0082a d(int i2) {
        int i3 = this.f;
        return i2 < i3 ? i : this.g[i2 - i3];
    }

    public int e(long j2, long j3) {
        if (j2 == Long.MIN_VALUE) {
            return -1;
        }
        if (j3 != C.TIME_UNSET && j2 >= j3) {
            return -1;
        }
        int i2 = this.f;
        while (i2 < this.c && ((d(i2).b != Long.MIN_VALUE && d(i2).b <= j2) || !d(i2).i())) {
            i2++;
        }
        if (i2 < this.c) {
            return i2;
        }
        return -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return blb.c(this.b, aVar.b) && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e && this.f == aVar.f && Arrays.equals(this.g, aVar.g);
    }

    public int f(long j2, long j3) {
        int i2 = this.c - 1;
        while (i2 >= 0 && h(j2, j3, i2)) {
            i2--;
        }
        if (i2 < 0 || !d(i2).g()) {
            return -1;
        }
        return i2;
    }

    public boolean g(int i2, int i3) {
        C0082a c0082aD;
        int i4;
        return i2 < this.c && (i4 = (c0082aD = d(i2)).c) != -1 && i3 < i4 && c0082aD.e[i3] == 4;
    }

    public final boolean h(long j2, long j3, int i2) {
        if (j2 == Long.MIN_VALUE) {
            return false;
        }
        long j4 = d(i2).b;
        if (j4 == Long.MIN_VALUE) {
            return j3 == C.TIME_UNSET || j2 < j3;
        }
        return j2 < j4;
    }

    public int hashCode() {
        int i2 = this.c * 31;
        Object obj = this.b;
        return ((((((((i2 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.d)) * 31) + ((int) this.e)) * 31) + this.f) * 31) + Arrays.hashCode(this.g);
    }

    public a j(int i2, int i3) {
        zi.a(i3 > 0);
        int i4 = i2 - this.f;
        C0082a[] c0082aArr = this.g;
        if (c0082aArr[i4].c == i3) {
            return this;
        }
        C0082a[] c0082aArr2 = (C0082a[]) blb.x0(c0082aArr, c0082aArr.length);
        c0082aArr2[i4] = this.g[i4].j(i3);
        return new a(this.b, c0082aArr2, this.d, this.e, this.f);
    }

    public a k(int i2, int i3) {
        int i4 = i2 - this.f;
        C0082a[] c0082aArr = this.g;
        C0082a[] c0082aArr2 = (C0082a[]) blb.x0(c0082aArr, c0082aArr.length);
        c0082aArr2[i4] = c0082aArr2[i4].k(4, i3);
        return new a(this.b, c0082aArr2, this.d, this.e, this.f);
    }

    public a l(long j2) {
        return this.d == j2 ? this : new a(this.b, this.g, j2, this.e, this.f);
    }

    public a m(int i2, int i3, Uri uri) {
        int i4 = i2 - this.f;
        C0082a[] c0082aArr = this.g;
        C0082a[] c0082aArr2 = (C0082a[]) blb.x0(c0082aArr, c0082aArr.length);
        c0082aArr2[i4] = c0082aArr2[i4].l(uri, i3);
        return new a(this.b, c0082aArr2, this.d, this.e, this.f);
    }

    public a n(long j2) {
        return this.e == j2 ? this : new a(this.b, this.g, this.d, j2, this.f);
    }

    public a o(int i2, int i3) {
        int i4 = i2 - this.f;
        C0082a[] c0082aArr = this.g;
        C0082a[] c0082aArr2 = (C0082a[]) blb.x0(c0082aArr, c0082aArr.length);
        c0082aArr2[i4] = c0082aArr2[i4].k(3, i3);
        return new a(this.b, c0082aArr2, this.d, this.e, this.f);
    }

    public a p(int i2, int i3) {
        int i4 = i2 - this.f;
        C0082a[] c0082aArr = this.g;
        C0082a[] c0082aArr2 = (C0082a[]) blb.x0(c0082aArr, c0082aArr.length);
        c0082aArr2[i4] = c0082aArr2[i4].k(2, i3);
        return new a(this.b, c0082aArr2, this.d, this.e, this.f);
    }

    public a q(int i2) {
        int i3 = i2 - this.f;
        C0082a[] c0082aArr = this.g;
        C0082a[] c0082aArr2 = (C0082a[]) blb.x0(c0082aArr, c0082aArr.length);
        c0082aArr2[i3] = c0082aArr2[i3].m();
        return new a(this.b, c0082aArr2, this.d, this.e, this.f);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (C0082a c0082a : this.g) {
            arrayList.add(c0082a.toBundle());
        }
        bundle.putParcelableArrayList(i(1), arrayList);
        bundle.putLong(i(2), this.d);
        bundle.putLong(i(3), this.e);
        bundle.putInt(i(4), this.f);
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdPlaybackState(adsId=");
        sb.append(this.b);
        sb.append(", adResumePositionUs=");
        sb.append(this.d);
        sb.append(", adGroups=[");
        for (int i2 = 0; i2 < this.g.length; i2++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.g[i2].b);
            sb.append(", ads=[");
            for (int i3 = 0; i3 < this.g[i2].e.length; i3++) {
                sb.append("ad(state=");
                int i4 = this.g[i2].e[i3];
                if (i4 == 0) {
                    sb.append('_');
                } else if (i4 == 1) {
                    sb.append('R');
                } else if (i4 == 2) {
                    sb.append('S');
                } else if (i4 == 3) {
                    sb.append('P');
                } else if (i4 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(this.g[i2].f[i3]);
                sb.append(')');
                if (i3 < this.g[i2].e.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i2 < this.g.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }

    public a(Object obj, C0082a[] c0082aArr, long j2, long j3, int i2) {
        this.b = obj;
        this.d = j2;
        this.e = j3;
        this.c = c0082aArr.length + i2;
        this.g = c0082aArr;
        this.f = i2;
    }
}
