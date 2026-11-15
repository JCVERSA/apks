package androidx.media3.common;

import android.net.Uri;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Objects;

public final class b {

    public static final b f9561g = new b(null, new a[0], 0, C.TIME_UNSET, 0);

    private static final a f9562h = new a(0).h(0);

    private static final String f9563i = a1.C0(1);

    private static final String f9564j = a1.C0(2);

    private static final String f9565k = a1.C0(3);

    private static final String f9566l = a1.C0(4);

    public final Object f9567a;

    public final int f9568b;

    public final long f9569c;

    public final long f9570d;

    public final int f9571e;

    private final a[] f9572f;

    public static final class a {

        private static final String f9573l = a1.C0(0);

        private static final String f9574m = a1.C0(1);

        private static final String f9575n = a1.C0(2);

        private static final String f9576o = a1.C0(3);

        private static final String f9577p = a1.C0(4);

        private static final String f9578q = a1.C0(5);

        private static final String f9579r = a1.C0(6);

        private static final String f9580s = a1.C0(7);

        static final String f9581t = a1.C0(8);

        static final String f9582u = a1.C0(9);

        static final String f9583v = a1.C0(10);

        public final long f9584a;

        public final int f9585b;

        public final int f9586c;

        public final Uri[] f9587d;

        public final t[] f9588e;

        public final int[] f9589f;

        public final long[] f9590g;

        public final String[] f9591h;

        public final long f9592i;

        public final boolean f9593j;

        public final boolean f9594k;

        public a(long j10) {
            this(j10, -1, -1, new int[0], new t[0], new long[0], 0L, false, new String[0], false);
        }

        private static long[] a(long[] jArr, int i10) {
            int length = jArr.length;
            int iMax = Math.max(i10, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, C.TIME_UNSET);
            return jArrCopyOf;
        }

        private static int[] b(int[] iArr, int i10) {
            int length = iArr.length;
            int iMax = Math.max(i10, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        public int c() {
            return d(-1);
        }

        public int d(int i10) {
            int i11;
            int i12 = i10 + 1;
            while (true) {
                int[] iArr = this.f9589f;
                if (i12 >= iArr.length || this.f9593j || (i11 = iArr[i12]) == 0 || i11 == 1) {
                    break;
                }
                i12++;
            }
            return i12;
        }

        public boolean e() {
            if (this.f9585b == -1) {
                return true;
            }
            for (int i10 = 0; i10 < this.f9585b; i10++) {
                int i11 = this.f9589f[i10];
                if (i11 == 0 || i11 == 1) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f9584a == aVar.f9584a && this.f9585b == aVar.f9585b && this.f9586c == aVar.f9586c && Arrays.equals(this.f9588e, aVar.f9588e) && Arrays.equals(this.f9589f, aVar.f9589f) && Arrays.equals(this.f9590g, aVar.f9590g) && this.f9592i == aVar.f9592i && this.f9593j == aVar.f9593j && Arrays.equals(this.f9591h, aVar.f9591h) && this.f9594k == aVar.f9594k;
        }

        public boolean f() {
            return this.f9594k && this.f9584a == Long.MIN_VALUE && this.f9585b == -1;
        }

        public boolean g() {
            return this.f9585b == -1 || c() < this.f9585b;
        }

        public a h(int i10) {
            int[] iArrB = b(this.f9589f, i10);
            long[] jArrA = a(this.f9590g, i10);
            return new a(this.f9584a, i10, this.f9586c, iArrB, (t[]) Arrays.copyOf(this.f9588e, i10), jArrA, this.f9592i, this.f9593j, (String[]) Arrays.copyOf(this.f9591h, i10), this.f9594k);
        }

        public int hashCode() {
            int i10 = ((this.f9585b * 31) + this.f9586c) * 31;
            long j10 = this.f9584a;
            int iHashCode = (((((((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.f9588e)) * 31) + Arrays.hashCode(this.f9589f)) * 31) + Arrays.hashCode(this.f9590g)) * 31;
            long j11 = this.f9592i;
            return ((((((iHashCode + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f9593j ? 1 : 0)) * 31) + Arrays.hashCode(this.f9591h)) * 31) + (this.f9594k ? 1 : 0);
        }

        private a(long j10, int i10, int i11, int[] iArr, t[] tVarArr, long[] jArr, long j11, boolean z10, String[] strArr, boolean z11) {
            int i12 = 0;
            androidx.media3.common.util.a.a(iArr.length == tVarArr.length);
            this.f9584a = j10;
            this.f9585b = i10;
            this.f9586c = i11;
            this.f9589f = iArr;
            this.f9588e = tVarArr;
            this.f9590g = jArr;
            this.f9592i = j11;
            this.f9593j = z10;
            this.f9587d = new Uri[tVarArr.length];
            while (true) {
                Uri[] uriArr = this.f9587d;
                if (i12 >= uriArr.length) {
                    this.f9591h = strArr;
                    this.f9594k = z11;
                    return;
                } else {
                    t tVar = tVarArr[i12];
                    uriArr[i12] = tVar == null ? null : ((t.h) androidx.media3.common.util.a.e(tVar.f9899b)).f9991a;
                    i12++;
                }
            }
        }
    }

    private b(Object obj, a[] aVarArr, long j10, long j11, int i10) {
        this.f9567a = obj;
        this.f9569c = j10;
        this.f9570d = j11;
        this.f9568b = aVarArr.length + i10;
        this.f9572f = aVarArr;
        this.f9571e = i10;
    }

    private boolean e(long j10, long j11, int i10) {
        if (j10 == Long.MIN_VALUE) {
            return false;
        }
        a aVarA = a(i10);
        long j12 = aVarA.f9584a;
        if (j12 == Long.MIN_VALUE) {
            return j11 == C.TIME_UNSET || aVarA.f() || j10 < j11;
        }
        return j10 < j12;
    }

    public a a(int i10) {
        int i11 = this.f9571e;
        return i10 < i11 ? f9562h : this.f9572f[i10 - i11];
    }

    public int b(long j10, long j11) {
        if (j10 == Long.MIN_VALUE) {
            return -1;
        }
        if (j11 != C.TIME_UNSET && j10 >= j11) {
            return -1;
        }
        int i10 = this.f9571e;
        while (i10 < this.f9568b && ((a(i10).f9584a != Long.MIN_VALUE && a(i10).f9584a <= j10) || !a(i10).g())) {
            i10++;
        }
        if (i10 < this.f9568b) {
            return i10;
        }
        return -1;
    }

    public int c(long j10, long j11) {
        int i10 = this.f9568b - 1;
        int i11 = i10 - (d(i10) ? 1 : 0);
        while (i11 >= 0 && e(j10, j11, i11)) {
            i11--;
        }
        if (i11 < 0 || !a(i11).e()) {
            return -1;
        }
        return i11;
    }

    public boolean d(int i10) {
        return i10 == this.f9568b - 1 && a(i10).f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return Objects.equals(this.f9567a, bVar.f9567a) && this.f9568b == bVar.f9568b && this.f9569c == bVar.f9569c && this.f9570d == bVar.f9570d && this.f9571e == bVar.f9571e && Arrays.equals(this.f9572f, bVar.f9572f);
    }

    public int hashCode() {
        int i10 = this.f9568b * 31;
        Object obj = this.f9567a;
        return ((((((((i10 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f9569c)) * 31) + ((int) this.f9570d)) * 31) + this.f9571e) * 31) + Arrays.hashCode(this.f9572f);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdPlaybackState(adsId=");
        sb2.append(this.f9567a);
        sb2.append(", adResumePositionUs=");
        sb2.append(this.f9569c);
        sb2.append(", adGroups=[");
        for (int i10 = 0; i10 < this.f9572f.length; i10++) {
            sb2.append("adGroup(timeUs=");
            sb2.append(this.f9572f[i10].f9584a);
            sb2.append(", ads=[");
            for (int i11 = 0; i11 < this.f9572f[i10].f9589f.length; i11++) {
                sb2.append("ad(state=");
                int i12 = this.f9572f[i10].f9589f[i11];
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
                sb2.append(this.f9572f[i10].f9590g[i11]);
                sb2.append(')');
                if (i11 < this.f9572f[i10].f9589f.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i10 < this.f9572f.length - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
