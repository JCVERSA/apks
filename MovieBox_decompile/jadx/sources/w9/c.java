package w9;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;

public final class c implements k {

    public static final c f74222g = new c(null, new a[0], 0, C.TIME_UNSET, 0);

    private static final a f74223h = new a(0).j(0);

    public static final k.a f74224i = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return c.b(bundle);
        }
    };

    public final Object f74225a;

    public final int f74226b;

    public final long f74227c;

    public final long f74228d;

    public final int f74229e;

    private final a[] f74230f;

    public static final class a implements k {

        public static final k.a f74231h = new k.a() {
            @Override
            public final k a(Bundle bundle) {
                return c.a.d(bundle);
            }
        };

        public final long f74232a;

        public final int f74233b;

        public final Uri[] f74234c;

        public final int[] f74235d;

        public final long[] f74236e;

        public final long f74237f;

        public final boolean f74238g;

        public a(long j10) {
            this(j10, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        private static long[] b(long[] jArr, int i10) {
            int length = jArr.length;
            int iMax = Math.max(i10, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, C.TIME_UNSET);
            return jArrCopyOf;
        }

        private static int[] c(int[] iArr, int i10) {
            int length = iArr.length;
            int iMax = Math.max(i10, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        public static a d(Bundle bundle) {
            long j10 = bundle.getLong(h(0));
            int i10 = bundle.getInt(h(1), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(h(2));
            int[] intArray = bundle.getIntArray(h(3));
            long[] longArray = bundle.getLongArray(h(4));
            long j11 = bundle.getLong(h(5));
            boolean z10 = bundle.getBoolean(h(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            return new a(j10, i10, intArray, parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, j11, z10);
        }

        private static String h(int i10) {
            return Integer.toString(i10, 36);
        }

        public int e() {
            return f(-1);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f74232a == aVar.f74232a && this.f74233b == aVar.f74233b && Arrays.equals(this.f74234c, aVar.f74234c) && Arrays.equals(this.f74235d, aVar.f74235d) && Arrays.equals(this.f74236e, aVar.f74236e) && this.f74237f == aVar.f74237f && this.f74238g == aVar.f74238g;
        }

        public int f(int i10) {
            int i11;
            int i12 = i10 + 1;
            while (true) {
                int[] iArr = this.f74235d;
                if (i12 >= iArr.length || this.f74238g || (i11 = iArr[i12]) == 0 || i11 == 1) {
                    break;
                }
                i12++;
            }
            return i12;
        }

        public boolean g() {
            if (this.f74233b == -1) {
                return true;
            }
            for (int i10 = 0; i10 < this.f74233b; i10++) {
                int i11 = this.f74235d[i10];
                if (i11 == 0 || i11 == 1) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i10 = this.f74233b * 31;
            long j10 = this.f74232a;
            int iHashCode = (((((((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.f74234c)) * 31) + Arrays.hashCode(this.f74235d)) * 31) + Arrays.hashCode(this.f74236e)) * 31;
            long j11 = this.f74237f;
            return ((iHashCode + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f74238g ? 1 : 0);
        }

        public boolean i() {
            return this.f74233b == -1 || e() < this.f74233b;
        }

        public a j(int i10) {
            int[] iArrC = c(this.f74235d, i10);
            long[] jArrB = b(this.f74236e, i10);
            return new a(this.f74232a, i10, iArrC, (Uri[]) Arrays.copyOf(this.f74234c, i10), jArrB, this.f74237f, this.f74238g);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(h(0), this.f74232a);
            bundle.putInt(h(1), this.f74233b);
            bundle.putParcelableArrayList(h(2), new ArrayList<>(Arrays.asList(this.f74234c)));
            bundle.putIntArray(h(3), this.f74235d);
            bundle.putLongArray(h(4), this.f74236e);
            bundle.putLong(h(5), this.f74237f);
            bundle.putBoolean(h(6), this.f74238g);
            return bundle;
        }

        private a(long j10, int i10, int[] iArr, Uri[] uriArr, long[] jArr, long j11, boolean z10) {
            com.google.android.exoplayer2.util.a.a(iArr.length == uriArr.length);
            this.f74232a = j10;
            this.f74233b = i10;
            this.f74235d = iArr;
            this.f74234c = uriArr;
            this.f74236e = jArr;
            this.f74237f = j11;
            this.f74238g = z10;
        }
    }

    private c(Object obj, a[] aVarArr, long j10, long j11, int i10) {
        this.f74225a = obj;
        this.f74227c = j10;
        this.f74228d = j11;
        this.f74226b = aVarArr.length + i10;
        this.f74230f = aVarArr;
        this.f74229e = i10;
    }

    public static c b(Bundle bundle) {
        a[] aVarArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(g(1));
        if (parcelableArrayList == null) {
            aVarArr = new a[0];
        } else {
            a[] aVarArr2 = new a[parcelableArrayList.size()];
            for (int i10 = 0; i10 < parcelableArrayList.size(); i10++) {
                aVarArr2[i10] = (a) a.f74231h.a((Bundle) parcelableArrayList.get(i10));
            }
            aVarArr = aVarArr2;
        }
        return new c(null, aVarArr, bundle.getLong(g(2), 0L), bundle.getLong(g(3), C.TIME_UNSET), bundle.getInt(g(4)));
    }

    private boolean f(long j10, long j11, int i10) {
        if (j10 == Long.MIN_VALUE) {
            return false;
        }
        long j12 = c(i10).f74232a;
        if (j12 == Long.MIN_VALUE) {
            return j11 == C.TIME_UNSET || j10 < j11;
        }
        return j10 < j12;
    }

    private static String g(int i10) {
        return Integer.toString(i10, 36);
    }

    public a c(int i10) {
        int i11 = this.f74229e;
        return i10 < i11 ? f74223h : this.f74230f[i10 - i11];
    }

    public int d(long j10, long j11) {
        if (j10 == Long.MIN_VALUE) {
            return -1;
        }
        if (j11 != C.TIME_UNSET && j10 >= j11) {
            return -1;
        }
        int i10 = this.f74229e;
        while (i10 < this.f74226b && ((c(i10).f74232a != Long.MIN_VALUE && c(i10).f74232a <= j10) || !c(i10).i())) {
            i10++;
        }
        if (i10 < this.f74226b) {
            return i10;
        }
        return -1;
    }

    public int e(long j10, long j11) {
        int i10 = this.f74226b - 1;
        while (i10 >= 0 && f(j10, j11, i10)) {
            i10--;
        }
        if (i10 < 0 || !c(i10).g()) {
            return -1;
        }
        return i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return p0.c(this.f74225a, cVar.f74225a) && this.f74226b == cVar.f74226b && this.f74227c == cVar.f74227c && this.f74228d == cVar.f74228d && this.f74229e == cVar.f74229e && Arrays.equals(this.f74230f, cVar.f74230f);
    }

    public int hashCode() {
        int i10 = this.f74226b * 31;
        Object obj = this.f74225a;
        return ((((((((i10 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f74227c)) * 31) + ((int) this.f74228d)) * 31) + this.f74229e) * 31) + Arrays.hashCode(this.f74230f);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (a aVar : this.f74230f) {
            arrayList.add(aVar.toBundle());
        }
        bundle.putParcelableArrayList(g(1), arrayList);
        bundle.putLong(g(2), this.f74227c);
        bundle.putLong(g(3), this.f74228d);
        bundle.putInt(g(4), this.f74229e);
        return bundle;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdPlaybackState(adsId=");
        sb2.append(this.f74225a);
        sb2.append(", adResumePositionUs=");
        sb2.append(this.f74227c);
        sb2.append(", adGroups=[");
        for (int i10 = 0; i10 < this.f74230f.length; i10++) {
            sb2.append("adGroup(timeUs=");
            sb2.append(this.f74230f[i10].f74232a);
            sb2.append(", ads=[");
            for (int i11 = 0; i11 < this.f74230f[i10].f74235d.length; i11++) {
                sb2.append("ad(state=");
                int i12 = this.f74230f[i10].f74235d[i11];
                if (i12 == 0) {
                    sb2.append('_');
                } else if (i12 == 1) {
                    sb2.append('R');
                } else if (i12 == 2) {
                    sb2.append('S');
                } else if (i12 == 3) {
                    sb2.append('P');
                } else if (i12 != 4) {
                    sb2.append('?');
                } else {
                    sb2.append('!');
                }
                sb2.append(", durationUs=");
                sb2.append(this.f74230f[i10].f74236e[i11]);
                sb2.append(')');
                if (i11 < this.f74230f[i10].f74235d.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i10 < this.f74230f.length - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
