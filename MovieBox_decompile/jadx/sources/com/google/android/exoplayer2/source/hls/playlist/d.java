package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class d extends aa.d {

    public final int f25465d;

    public final long f25466e;

    public final boolean f25467f;

    public final boolean f25468g;

    public final long f25469h;

    public final boolean f25470i;

    public final int f25471j;

    public final long f25472k;

    public final int f25473l;

    public final long f25474m;

    public final long f25475n;

    public final boolean f25476o;

    public final boolean f25477p;

    public final DrmInitData f25478q;

    public final List f25479r;

    public final List f25480s;

    public final Map f25481t;

    public final long f25482u;

    public final f f25483v;

    public static final class b extends e {

        public final boolean f25484l;

        public final boolean f25485m;

        public b(String str, C0350d c0350d, long j10, int i10, long j11, DrmInitData drmInitData, String str2, String str3, long j12, long j13, boolean z10, boolean z11, boolean z12) {
            super(str, c0350d, j10, i10, j11, drmInitData, str2, str3, j12, j13, z10);
            this.f25484l = z11;
            this.f25485m = z12;
        }

        public b b(long j10, int i10) {
            return new b(this.f25491a, this.f25492b, this.f25493c, i10, j10, this.f25496f, this.f25497g, this.f25498h, this.f25499i, this.f25500j, this.f25501k, this.f25484l, this.f25485m);
        }
    }

    public static final class c {

        public final Uri f25486a;

        public final long f25487b;

        public final int f25488c;

        public c(Uri uri, long j10, int i10) {
            this.f25486a = uri;
            this.f25487b = j10;
            this.f25488c = i10;
        }
    }

    public static class e implements Comparable {

        public final String f25491a;

        public final C0350d f25492b;

        public final long f25493c;

        public final int f25494d;

        public final long f25495e;

        public final DrmInitData f25496f;

        public final String f25497g;

        public final String f25498h;

        public final long f25499i;

        public final long f25500j;

        public final boolean f25501k;

        @Override
        public int compareTo(Long l10) {
            if (this.f25495e > l10.longValue()) {
                return 1;
            }
            return this.f25495e < l10.longValue() ? -1 : 0;
        }

        private e(String str, C0350d c0350d, long j10, int i10, long j11, DrmInitData drmInitData, String str2, String str3, long j12, long j13, boolean z10) {
            this.f25491a = str;
            this.f25492b = c0350d;
            this.f25493c = j10;
            this.f25494d = i10;
            this.f25495e = j11;
            this.f25496f = drmInitData;
            this.f25497g = str2;
            this.f25498h = str3;
            this.f25499i = j12;
            this.f25500j = j13;
            this.f25501k = z10;
        }
    }

    public static final class f {

        public final long f25502a;

        public final boolean f25503b;

        public final long f25504c;

        public final long f25505d;

        public final boolean f25506e;

        public f(long j10, boolean z10, long j11, long j12, boolean z11) {
            this.f25502a = j10;
            this.f25503b = z10;
            this.f25504c = j11;
            this.f25505d = j12;
            this.f25506e = z11;
        }
    }

    public d(int i10, String str, List list, long j10, boolean z10, long j11, boolean z11, int i11, long j12, int i12, long j13, long j14, boolean z12, boolean z13, boolean z14, DrmInitData drmInitData, List list2, List list3, f fVar, Map map) {
        super(str, list, z12);
        this.f25465d = i10;
        this.f25469h = j11;
        this.f25468g = z10;
        this.f25470i = z11;
        this.f25471j = i11;
        this.f25472k = j12;
        this.f25473l = i12;
        this.f25474m = j13;
        this.f25475n = j14;
        this.f25476o = z13;
        this.f25477p = z14;
        this.f25478q = drmInitData;
        this.f25479r = ImmutableList.copyOf((Collection) list2);
        this.f25480s = ImmutableList.copyOf((Collection) list3);
        this.f25481t = ImmutableMap.copyOf(map);
        if (!list3.isEmpty()) {
            b bVar = (b) g3.g(list3);
            this.f25482u = bVar.f25495e + bVar.f25493c;
        } else if (list2.isEmpty()) {
            this.f25482u = 0L;
        } else {
            C0350d c0350d = (C0350d) g3.g(list2);
            this.f25482u = c0350d.f25495e + c0350d.f25493c;
        }
        this.f25466e = j10 != C.TIME_UNSET ? j10 >= 0 ? Math.min(this.f25482u, j10) : Math.max(0L, this.f25482u + j10) : C.TIME_UNSET;
        this.f25467f = j10 >= 0;
        this.f25483v = fVar;
    }

    public d b(long j10, int i10) {
        return new d(this.f25465d, this.f260a, this.f261b, this.f25466e, this.f25468g, j10, true, i10, this.f25472k, this.f25473l, this.f25474m, this.f25475n, this.f262c, this.f25476o, this.f25477p, this.f25478q, this.f25479r, this.f25480s, this.f25483v, this.f25481t);
    }

    public d c() {
        return this.f25476o ? this : new d(this.f25465d, this.f260a, this.f261b, this.f25466e, this.f25468g, this.f25469h, this.f25470i, this.f25471j, this.f25472k, this.f25473l, this.f25474m, this.f25475n, this.f262c, true, this.f25477p, this.f25478q, this.f25479r, this.f25480s, this.f25483v, this.f25481t);
    }

    public long d() {
        return this.f25469h + this.f25482u;
    }

    public boolean e(d dVar) {
        if (dVar == null) {
            return true;
        }
        long j10 = this.f25472k;
        long j11 = dVar.f25472k;
        if (j10 > j11) {
            return true;
        }
        if (j10 < j11) {
            return false;
        }
        int size = this.f25479r.size() - dVar.f25479r.size();
        if (size != 0) {
            return size > 0;
        }
        int size2 = this.f25480s.size();
        int size3 = dVar.f25480s.size();
        if (size2 <= size3) {
            return size2 == size3 && this.f25476o && !dVar.f25476o;
        }
        return true;
    }

    public static final class C0350d extends e {

        public final String f25489l;

        public final List f25490m;

        public C0350d(String str, long j10, long j11, String str2, String str3) {
            this(str, null, "", 0L, -1, C.TIME_UNSET, null, str2, str3, j10, j11, false, ImmutableList.of());
        }

        public C0350d b(long j10, int i10) {
            ArrayList arrayList = new ArrayList();
            long j11 = j10;
            for (int i11 = 0; i11 < this.f25490m.size(); i11++) {
                b bVar = (b) this.f25490m.get(i11);
                arrayList.add(bVar.b(j11, i10));
                j11 += bVar.f25493c;
            }
            return new C0350d(this.f25491a, this.f25492b, this.f25489l, this.f25493c, i10, j10, this.f25496f, this.f25497g, this.f25498h, this.f25499i, this.f25500j, this.f25501k, arrayList);
        }

        public C0350d(String str, C0350d c0350d, String str2, long j10, int i10, long j11, DrmInitData drmInitData, String str3, String str4, long j12, long j13, boolean z10, List list) {
            super(str, c0350d, j10, i10, j11, drmInitData, str3, str4, j12, j13, z10);
            this.f25489l = str2;
            this.f25490m = ImmutableList.copyOf((Collection) list);
        }
    }

    @Override
    public d copy(List list) {
        return this;
    }
}
