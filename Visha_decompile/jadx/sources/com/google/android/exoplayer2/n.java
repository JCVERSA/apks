package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.C;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.n;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import defpackage.blb;
import defpackage.zi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public final class n implements com.google.android.exoplayer2.e {
    public static final n j = new c().a();
    public static final com.google.android.exoplayer2.e.a k = new com.google.android.exoplayer2.e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return n.c(bundle);
        }
    };
    public final String b;
    public final h c;
    public final i d;
    public final g e;
    public final o f;
    public final d g;
    public final e h;
    public final j i;

    public static final class b {
    }

    public static final class c {
        public String a;
        public Uri b;
        public String c;
        public d.a d;
        public f.a e;
        public List f;
        public String g;
        public ImmutableList h;
        public Object i;
        public o j;
        public g.a k;
        public j l;

        public n a() {
            i iVar;
            zi.g(this.e.b == null || this.e.a != null);
            Uri uri = this.b;
            if (uri != null) {
                iVar = new i(uri, this.c, this.e.a != null ? this.e.i() : null, null, this.f, this.g, this.h, this.i);
            } else {
                iVar = null;
            }
            String str = this.a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            e eVarG = this.d.g();
            g gVarF = this.k.f();
            o oVar = this.j;
            if (oVar == null) {
                oVar = o.H;
            }
            return new n(str2, eVarG, iVar, gVarF, oVar, this.l);
        }

        public c b(String str) {
            this.g = str;
            return this;
        }

        public c c(g gVar) {
            this.k = gVar.b();
            return this;
        }

        public c d(String str) {
            this.a = (String) zi.e(str);
            return this;
        }

        public c e(String str) {
            this.c = str;
            return this;
        }

        public c f(List list) {
            this.f = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public c g(List list) {
            this.h = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public c h(Object obj) {
            this.i = obj;
            return this;
        }

        public c i(Uri uri) {
            this.b = uri;
            return this;
        }

        public c j(String str) {
            return i(str == null ? null : Uri.parse(str));
        }

        public c() {
            this.d = new d.a();
            this.e = new f.a();
            this.f = Collections.emptyList();
            this.h = ImmutableList.of();
            this.k = new g.a();
            this.l = j.e;
        }

        public c(n nVar) {
            f.a aVar;
            this();
            this.d = nVar.g.b();
            this.a = nVar.b;
            this.j = nVar.f;
            this.k = nVar.e.b();
            this.l = nVar.i;
            h hVar = nVar.c;
            if (hVar != null) {
                this.g = hVar.e;
                this.c = hVar.b;
                this.b = hVar.a;
                this.f = hVar.d;
                this.h = hVar.f;
                this.i = hVar.h;
                f fVar = hVar.c;
                if (fVar != null) {
                    aVar = fVar.b();
                } else {
                    aVar = new f.a();
                }
                this.e = aVar;
            }
        }
    }

    public static class d implements com.google.android.exoplayer2.e {
        public static final d g = new a().f();
        public static final com.google.android.exoplayer2.e.a h = new com.google.android.exoplayer2.e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return n.d.d(bundle);
            }
        };
        public final long b;
        public final long c;
        public final boolean d;
        public final boolean e;
        public final boolean f;

        public static final class a {
            public long a;
            public long b;
            public boolean c;
            public boolean d;
            public boolean e;

            public d f() {
                return g();
            }

            public e g() {
                return new e(this);
            }

            public a h(long j) {
                zi.a(j == Long.MIN_VALUE || j >= 0);
                this.b = j;
                return this;
            }

            public a i(boolean z) {
                this.d = z;
                return this;
            }

            public a j(boolean z) {
                this.c = z;
                return this;
            }

            public a k(long j) {
                zi.a(j >= 0);
                this.a = j;
                return this;
            }

            public a l(boolean z) {
                this.e = z;
                return this;
            }

            public a() {
                this.b = Long.MIN_VALUE;
            }

            public a(d dVar) {
                this.a = dVar.b;
                this.b = dVar.c;
                this.c = dVar.d;
                this.d = dVar.e;
                this.e = dVar.f;
            }
        }

        private static String c(int i) {
            return Integer.toString(i, 36);
        }

        public static e d(Bundle bundle) {
            return new a().k(bundle.getLong(c(0), 0L)).h(bundle.getLong(c(1), Long.MIN_VALUE)).j(bundle.getBoolean(c(2), false)).i(bundle.getBoolean(c(3), false)).l(bundle.getBoolean(c(4), false)).g();
        }

        public a b() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.b == dVar.b && this.c == dVar.c && this.d == dVar.d && this.e == dVar.e && this.f == dVar.f;
        }

        public int hashCode() {
            long j = this.b;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.c;
            return ((((((i + ((int) ((j2 >>> 32) ^ j2))) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + (this.f ? 1 : 0);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.b);
            bundle.putLong(c(1), this.c);
            bundle.putBoolean(c(2), this.d);
            bundle.putBoolean(c(3), this.e);
            bundle.putBoolean(c(4), this.f);
            return bundle;
        }

        public d(a aVar) {
            this.b = aVar.a;
            this.c = aVar.b;
            this.d = aVar.c;
            this.e = aVar.d;
            this.f = aVar.e;
        }
    }

    public static final class e extends d {
        public static final e i = new d.a().g();

        public e(d.a aVar) {
            super(aVar);
        }
    }

    public static final class f {
        public final UUID a;
        public final UUID b;
        public final Uri c;
        public final ImmutableMap d;
        public final ImmutableMap e;
        public final boolean f;
        public final boolean g;
        public final boolean h;
        public final ImmutableList i;
        public final ImmutableList j;
        public final byte[] k;

        public a b() {
            return new a();
        }

        public byte[] c() {
            byte[] bArr = this.k;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a.equals(fVar.a) && blb.c(this.c, fVar.c) && blb.c(this.e, fVar.e) && this.f == fVar.f && this.h == fVar.h && this.g == fVar.g && this.j.equals(fVar.j) && Arrays.equals(this.k, fVar.k);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            Uri uri = this.c;
            return ((((((((((((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.e.hashCode()) * 31) + (this.f ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + this.j.hashCode()) * 31) + Arrays.hashCode(this.k);
        }

        public static final class a {
            public UUID a;
            public Uri b;
            public ImmutableMap c;
            public boolean d;
            public boolean e;
            public boolean f;
            public ImmutableList g;
            public byte[] h;

            public f i() {
                return new f(this);
            }

            public a() {
                this.c = ImmutableMap.of();
                this.g = ImmutableList.of();
            }

            public a(f fVar) {
                this.a = fVar.a;
                this.b = fVar.c;
                this.c = fVar.e;
                this.d = fVar.f;
                this.e = fVar.g;
                this.f = fVar.h;
                this.g = fVar.j;
                this.h = fVar.k;
            }
        }

        public f(a aVar) {
            zi.g((aVar.f && aVar.b == null) ? false : true);
            UUID uuid = (UUID) zi.e(aVar.a);
            this.a = uuid;
            this.b = uuid;
            this.c = aVar.b;
            this.d = aVar.c;
            this.e = aVar.c;
            this.f = aVar.d;
            this.h = aVar.f;
            this.g = aVar.e;
            this.i = aVar.g;
            this.j = aVar.g;
            this.k = aVar.h != null ? Arrays.copyOf(aVar.h, aVar.h.length) : null;
        }
    }

    public static final class g implements com.google.android.exoplayer2.e {
        public static final g g = new a().f();
        public static final com.google.android.exoplayer2.e.a h = new com.google.android.exoplayer2.e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return n.g.d(bundle);
            }
        };
        public final long b;
        public final long c;
        public final long d;
        public final float e;
        public final float f;

        public static final class a {
            public long a;
            public long b;
            public long c;
            public float d;
            public float e;

            public g f() {
                return new g(this);
            }

            public a g(long j) {
                this.c = j;
                return this;
            }

            public a h(float f) {
                this.e = f;
                return this;
            }

            public a i(long j) {
                this.b = j;
                return this;
            }

            public a j(float f) {
                this.d = f;
                return this;
            }

            public a k(long j) {
                this.a = j;
                return this;
            }

            public a() {
                this.a = C.TIME_UNSET;
                this.b = C.TIME_UNSET;
                this.c = C.TIME_UNSET;
                this.d = -3.4028235E38f;
                this.e = -3.4028235E38f;
            }

            public a(g gVar) {
                this.a = gVar.b;
                this.b = gVar.c;
                this.c = gVar.d;
                this.d = gVar.e;
                this.e = gVar.f;
            }
        }

        private static String c(int i) {
            return Integer.toString(i, 36);
        }

        public static g d(Bundle bundle) {
            return new g(bundle.getLong(c(0), C.TIME_UNSET), bundle.getLong(c(1), C.TIME_UNSET), bundle.getLong(c(2), C.TIME_UNSET), bundle.getFloat(c(3), -3.4028235E38f), bundle.getFloat(c(4), -3.4028235E38f));
        }

        public a b() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.b == gVar.b && this.c == gVar.c && this.d == gVar.d && this.e == gVar.e && this.f == gVar.f;
        }

        public int hashCode() {
            long j = this.b;
            long j2 = this.c;
            int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.d;
            int i2 = (i + ((int) ((j3 >>> 32) ^ j3))) * 31;
            float f = this.e;
            int iFloatToIntBits = (i2 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
            float f2 = this.f;
            return iFloatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.b);
            bundle.putLong(c(1), this.c);
            bundle.putLong(c(2), this.d);
            bundle.putFloat(c(3), this.e);
            bundle.putFloat(c(4), this.f);
            return bundle;
        }

        public g(a aVar) {
            this(aVar.a, aVar.b, aVar.c, aVar.d, aVar.e);
        }

        public g(long j, long j2, long j3, float f, float f2) {
            this.b = j;
            this.c = j2;
            this.d = j3;
            this.e = f;
            this.f = f2;
        }
    }

    public static class h {
        public final Uri a;
        public final String b;
        public final f c;
        public final List d;
        public final String e;
        public final ImmutableList f;
        public final List g;
        public final Object h;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return this.a.equals(hVar.a) && blb.c(this.b, hVar.b) && blb.c(this.c, hVar.c) && blb.c(null, null) && this.d.equals(hVar.d) && blb.c(this.e, hVar.e) && this.f.equals(hVar.f) && blb.c(this.h, hVar.h);
        }

        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            f fVar = this.c;
            int iHashCode3 = (((iHashCode2 + (fVar == null ? 0 : fVar.hashCode())) * 961) + this.d.hashCode()) * 31;
            String str2 = this.e;
            int iHashCode4 = (((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f.hashCode()) * 31;
            Object obj = this.h;
            return iHashCode4 + (obj != null ? obj.hashCode() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public h(Uri uri, String str, f fVar, b bVar, List list, String str2, ImmutableList immutableList, Object obj) {
            this.a = uri;
            this.b = str;
            this.c = fVar;
            this.d = list;
            this.e = str2;
            this.f = immutableList;
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i = 0; i < immutableList.size(); i++) {
                aVarBuilder.a(((l) immutableList.get(i)).a().b());
            }
            this.g = aVarBuilder.e();
            this.h = obj;
        }
    }

    public static final class i extends h {
        public i(Uri uri, String str, f fVar, b bVar, List list, String str2, ImmutableList immutableList, Object obj) {
            super(uri, str, fVar, bVar, list, str2, immutableList, obj);
        }
    }

    public static final class j implements com.google.android.exoplayer2.e {
        public static final j e = new a().d();
        public static final com.google.android.exoplayer2.e.a f = new com.google.android.exoplayer2.e.a() {
            @Override
            public final e fromBundle(Bundle bundle) {
                return n.j.c(bundle);
            }
        };
        public final Uri b;
        public final String c;
        public final Bundle d;

        public static final class a {
            public Uri a;
            public String b;
            public Bundle c;

            public j d() {
                return new j(this);
            }

            public a e(Bundle bundle) {
                this.c = bundle;
                return this;
            }

            public a f(Uri uri) {
                this.a = uri;
                return this;
            }

            public a g(String str) {
                this.b = str;
                return this;
            }
        }

        private static String b(int i) {
            return Integer.toString(i, 36);
        }

        public static j c(Bundle bundle) {
            return new a().f((Uri) bundle.getParcelable(b(0))).g(bundle.getString(b(1))).e(bundle.getBundle(b(2))).d();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return blb.c(this.b, jVar.b) && blb.c(this.c, jVar.c);
        }

        public int hashCode() {
            Uri uri = this.b;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.c;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            if (this.b != null) {
                bundle.putParcelable(b(0), this.b);
            }
            if (this.c != null) {
                bundle.putString(b(1), this.c);
            }
            if (this.d != null) {
                bundle.putBundle(b(2), this.d);
            }
            return bundle;
        }

        public j(a aVar) {
            this.b = aVar.a;
            this.c = aVar.b;
            this.d = aVar.c;
        }
    }

    public static final class k extends l {
    }

    public static class l {
        public final Uri a;
        public final String b;
        public final String c;
        public final int d;
        public final int e;
        public final String f;
        public final String g;

        public static final class a {
            public abstract k b();
        }

        public abstract a a();
    }

    public static n c(Bundle bundle) {
        String str = (String) zi.e(bundle.getString(f(0), ""));
        Bundle bundle2 = bundle.getBundle(f(1));
        g gVar = bundle2 == null ? g.g : (g) g.h.fromBundle(bundle2);
        Bundle bundle3 = bundle.getBundle(f(2));
        o oVar = bundle3 == null ? o.H : (o) o.I.fromBundle(bundle3);
        Bundle bundle4 = bundle.getBundle(f(3));
        e eVar = bundle4 == null ? e.i : (e) d.h.fromBundle(bundle4);
        Bundle bundle5 = bundle.getBundle(f(4));
        return new n(str, eVar, null, gVar, oVar, bundle5 == null ? j.e : (j) j.f.fromBundle(bundle5));
    }

    public static n d(Uri uri) {
        return new c().i(uri).a();
    }

    public static n e(String str) {
        return new c().j(str).a();
    }

    private static String f(int i2) {
        return Integer.toString(i2, 36);
    }

    public c b() {
        return new c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return blb.c(this.b, nVar.b) && this.g.equals(nVar.g) && blb.c(this.c, nVar.c) && blb.c(this.e, nVar.e) && blb.c(this.f, nVar.f) && blb.c(this.i, nVar.i);
    }

    public int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        h hVar = this.c;
        return ((((((((iHashCode + (hVar != null ? hVar.hashCode() : 0)) * 31) + this.e.hashCode()) * 31) + this.g.hashCode()) * 31) + this.f.hashCode()) * 31) + this.i.hashCode();
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(f(0), this.b);
        bundle.putBundle(f(1), this.e.toBundle());
        bundle.putBundle(f(2), this.f.toBundle());
        bundle.putBundle(f(3), this.g.toBundle());
        bundle.putBundle(f(4), this.i.toBundle());
        return bundle;
    }

    public n(String str, e eVar, i iVar, g gVar, o oVar, j jVar) {
        this.b = str;
        this.c = iVar;
        this.d = iVar;
        this.e = gVar;
        this.f = oVar;
        this.g = eVar;
        this.h = eVar;
        this.i = jVar;
    }
}
