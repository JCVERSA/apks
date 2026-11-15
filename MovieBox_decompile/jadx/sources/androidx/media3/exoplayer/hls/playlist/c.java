package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.common.DrmInitData;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public final class c extends b2.d {

    public final int f11559d;

    public final long f11560e;

    public final boolean f11561f;

    public final boolean f11562g;

    public final long f11563h;

    public final boolean f11564i;

    public final int f11565j;

    public final long f11566k;

    public final int f11567l;

    public final long f11568m;

    public final long f11569n;

    public final boolean f11570o;

    public final boolean f11571p;

    public final DrmInitData f11572q;

    public final List f11573r;

    public final List f11574s;

    public final Map f11575t;

    public final long f11576u;

    public final h f11577v;

    public final ImmutableList f11578w;

    public static final class C0093c {

        public final String f11583a;

        public final Uri f11584b;

        public final Uri f11585c;

        public final long f11586d;

        public final long f11587e;

        public final long f11588f;

        public final long f11589g;

        public final List f11590h;

        public final boolean f11591i;

        public final long f11592j;

        public final long f11593k;

        public final ImmutableList f11594l;

        public final ImmutableList f11595m;

        public final ImmutableList f11596n;

        public C0093c(String str, Uri uri, Uri uri2, long j10, long j11, long j12, long j13, List list, boolean z10, long j14, long j15, List list2, List list3, List list4) {
            androidx.media3.common.util.a.a((uri == null || uri2 == null) && !(uri == null && uri2 == null));
            this.f11583a = str;
            this.f11584b = uri;
            this.f11585c = uri2;
            this.f11586d = j10;
            this.f11587e = j11;
            this.f11588f = j12;
            this.f11589g = j13;
            this.f11590h = list;
            this.f11591i = z10;
            this.f11592j = j14;
            this.f11593k = j15;
            this.f11594l = ImmutableList.copyOf((Collection) list2);
            this.f11595m = ImmutableList.copyOf((Collection) list3);
            this.f11596n = ImmutableList.copyOf((Collection) list4);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0093c)) {
                return false;
            }
            C0093c c0093c = (C0093c) obj;
            return this.f11586d == c0093c.f11586d && this.f11587e == c0093c.f11587e && this.f11588f == c0093c.f11588f && this.f11589g == c0093c.f11589g && this.f11591i == c0093c.f11591i && this.f11592j == c0093c.f11592j && this.f11593k == c0093c.f11593k && Objects.equals(this.f11583a, c0093c.f11583a) && Objects.equals(this.f11584b, c0093c.f11584b) && Objects.equals(this.f11585c, c0093c.f11585c) && Objects.equals(this.f11590h, c0093c.f11590h) && Objects.equals(this.f11594l, c0093c.f11594l) && Objects.equals(this.f11595m, c0093c.f11595m) && Objects.equals(this.f11596n, c0093c.f11596n);
        }

        public int hashCode() {
            return Objects.hash(this.f11583a, this.f11584b, this.f11585c, Long.valueOf(this.f11586d), Long.valueOf(this.f11587e), Long.valueOf(this.f11588f), Long.valueOf(this.f11589g), this.f11590h, Boolean.valueOf(this.f11591i), Long.valueOf(this.f11592j), Long.valueOf(this.f11593k), this.f11594l, this.f11595m, this.f11596n);
        }
    }

    public static final class d extends g {

        public final boolean f11597l;

        public final boolean f11598m;

        public d(String str, f fVar, long j10, int i10, long j11, DrmInitData drmInitData, String str2, String str3, long j12, long j13, boolean z10, boolean z11, boolean z12) {
            super(str, fVar, j10, i10, j11, drmInitData, str2, str3, j12, j13, z10);
            this.f11597l = z11;
            this.f11598m = z12;
        }

        public d b(long j10, int i10) {
            return new d(this.f11604a, this.f11605b, this.f11606c, i10, j10, this.f11609f, this.f11610g, this.f11611h, this.f11612i, this.f11613j, this.f11614k, this.f11597l, this.f11598m);
        }
    }

    public static final class e {

        public final Uri f11599a;

        public final long f11600b;

        public final int f11601c;

        public e(Uri uri, long j10, int i10) {
            this.f11599a = uri;
            this.f11600b = j10;
            this.f11601c = i10;
        }
    }

    public static class g implements Comparable {

        public final String f11604a;

        public final f f11605b;

        public final long f11606c;

        public final int f11607d;

        public final long f11608e;

        public final DrmInitData f11609f;

        public final String f11610g;

        public final String f11611h;

        public final long f11612i;

        public final long f11613j;

        public final boolean f11614k;

        @Override
        public int compareTo(Long l10) {
            if (this.f11608e > l10.longValue()) {
                return 1;
            }
            return this.f11608e < l10.longValue() ? -1 : 0;
        }

        private g(String str, f fVar, long j10, int i10, long j11, DrmInitData drmInitData, String str2, String str3, long j12, long j13, boolean z10) {
            this.f11604a = str;
            this.f11605b = fVar;
            this.f11606c = j10;
            this.f11607d = i10;
            this.f11608e = j11;
            this.f11609f = drmInitData;
            this.f11610g = str2;
            this.f11611h = str3;
            this.f11612i = j12;
            this.f11613j = j13;
            this.f11614k = z10;
        }
    }

    public static final class h {

        public final long f11615a;

        public final boolean f11616b;

        public final long f11617c;

        public final long f11618d;

        public final boolean f11619e;

        public h(long j10, boolean z10, long j11, long j12, boolean z11) {
            this.f11615a = j10;
            this.f11616b = z10;
            this.f11617c = j11;
            this.f11618d = j12;
            this.f11619e = z11;
        }
    }

    public c(int i10, String str, List list, long j10, boolean z10, long j11, boolean z11, int i11, long j12, int i12, long j13, long j14, boolean z12, boolean z13, boolean z14, DrmInitData drmInitData, List list2, List list3, h hVar, Map map, List list4) {
        super(str, list, z12);
        this.f11559d = i10;
        this.f11563h = j11;
        this.f11562g = z10;
        this.f11564i = z11;
        this.f11565j = i11;
        this.f11566k = j12;
        this.f11567l = i12;
        this.f11568m = j13;
        this.f11569n = j14;
        this.f11570o = z13;
        this.f11571p = z14;
        this.f11572q = drmInitData;
        this.f11573r = ImmutableList.copyOf((Collection) list2);
        this.f11574s = ImmutableList.copyOf((Collection) list3);
        this.f11575t = ImmutableMap.copyOf(map);
        this.f11578w = ImmutableList.copyOf((Collection) list4);
        if (!list3.isEmpty()) {
            d dVar = (d) g3.g(list3);
            this.f11576u = dVar.f11608e + dVar.f11606c;
        } else if (list2.isEmpty()) {
            this.f11576u = 0L;
        } else {
            f fVar = (f) g3.g(list2);
            this.f11576u = fVar.f11608e + fVar.f11606c;
        }
        this.f11560e = j10 != C.TIME_UNSET ? j10 >= 0 ? Math.min(this.f11576u, j10) : Math.max(0L, this.f11576u + j10) : C.TIME_UNSET;
        this.f11561f = j10 >= 0;
        this.f11577v = hVar;
    }

    public c b(long j10, int i10) {
        return new c(this.f11559d, this.f15504a, this.f15505b, this.f11560e, this.f11562g, j10, true, i10, this.f11566k, this.f11567l, this.f11568m, this.f11569n, this.f15506c, this.f11570o, this.f11571p, this.f11572q, this.f11573r, this.f11574s, this.f11577v, this.f11575t, this.f11578w);
    }

    public c c() {
        return this.f11570o ? this : new c(this.f11559d, this.f15504a, this.f15505b, this.f11560e, this.f11562g, this.f11563h, this.f11564i, this.f11565j, this.f11566k, this.f11567l, this.f11568m, this.f11569n, this.f15506c, true, this.f11571p, this.f11572q, this.f11573r, this.f11574s, this.f11577v, this.f11575t, this.f11578w);
    }

    public long d() {
        return this.f11563h + this.f11576u;
    }

    public boolean e(c cVar) {
        if (cVar == null) {
            return true;
        }
        long j10 = this.f11566k;
        long j11 = cVar.f11566k;
        if (j10 > j11) {
            return true;
        }
        if (j10 < j11) {
            return false;
        }
        int size = this.f11573r.size() - cVar.f11573r.size();
        if (size != 0) {
            return size > 0;
        }
        int size2 = this.f11574s.size();
        int size3 = cVar.f11574s.size();
        if (size2 <= size3) {
            return size2 == size3 && this.f11570o && !cVar.f11570o;
        }
        return true;
    }

    public static final class f extends g {

        public final String f11602l;

        public final List f11603m;

        public f(String str, long j10, long j11, String str2, String str3) {
            this(str, null, "", 0L, -1, C.TIME_UNSET, null, str2, str3, j10, j11, false, ImmutableList.of());
        }

        public f b(long j10, int i10) {
            ArrayList arrayList = new ArrayList();
            long j11 = j10;
            for (int i11 = 0; i11 < this.f11603m.size(); i11++) {
                d dVar = (d) this.f11603m.get(i11);
                arrayList.add(dVar.b(j11, i10));
                j11 += dVar.f11606c;
            }
            return new f(this.f11604a, this.f11605b, this.f11602l, this.f11606c, i10, j10, this.f11609f, this.f11610g, this.f11611h, this.f11612i, this.f11613j, this.f11614k, arrayList);
        }

        public f(String str, f fVar, String str2, long j10, int i10, long j11, DrmInitData drmInitData, String str3, String str4, long j12, long j13, boolean z10, List list) {
            super(str, fVar, j10, i10, j11, drmInitData, str3, str4, j12, j13, z10);
            this.f11602l = str2;
            this.f11603m = ImmutableList.copyOf((Collection) list);
        }
    }

    public static class b {

        public final String f11579a;

        public final int f11580b;

        private final double f11581c;

        private final String f11582d;

        public b(String str, double d10) {
            this.f11579a = str;
            this.f11580b = 2;
            this.f11581c = d10;
            this.f11582d = null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f11580b == bVar.f11580b && Double.compare(this.f11581c, bVar.f11581c) == 0 && Objects.equals(this.f11579a, bVar.f11579a) && Objects.equals(this.f11582d, bVar.f11582d);
        }

        public int hashCode() {
            return Objects.hash(this.f11579a, Integer.valueOf(this.f11580b), Double.valueOf(this.f11581c), this.f11582d);
        }

        public b(String str, String str2, int i10) {
            boolean z10 = true;
            if (i10 == 1 && !str2.startsWith("0x") && !str2.startsWith("0X")) {
                z10 = false;
            }
            androidx.media3.common.util.a.g(z10);
            this.f11579a = str;
            this.f11580b = i10;
            this.f11582d = str2;
            this.f11581c = 0.0d;
        }
    }

    @Override
    public c copy(List list) {
        return this;
    }
}
