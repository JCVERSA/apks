package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public final class w1 implements com.google.android.exoplayer2.k {

    public static final w1 f27146i = new c().a();

    public static final com.google.android.exoplayer2.k.a f27147j = new com.google.android.exoplayer2.k.a() {
        @Override
        public final k a(Bundle bundle) {
            return w1.c(bundle);
        }
    };

    public final String f27148a;

    public final h f27149b;

    public final i f27150c;

    public final g f27151d;

    public final b2 f27152e;

    public final d f27153f;

    public final e f27154g;

    public final j f27155h;

    public static final class b {
    }

    public static final class c {

        private String f27156a;

        private Uri f27157b;

        private String f27158c;

        private d.a f27159d;

        private f.a f27160e;

        private List f27161f;

        private String f27162g;

        private ImmutableList f27163h;

        private Object f27164i;

        private b2 f27165j;

        private g.a f27166k;

        private j f27167l;

        public w1 a() {
            i iVar;
            com.google.android.exoplayer2.util.a.g(this.f27160e.f27193b == null || this.f27160e.f27192a != null);
            Uri uri = this.f27157b;
            if (uri != null) {
                iVar = new i(uri, this.f27158c, this.f27160e.f27192a != null ? this.f27160e.i() : null, null, this.f27161f, this.f27162g, this.f27163h, this.f27164i);
            } else {
                iVar = null;
            }
            String str = this.f27156a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            e eVarG = this.f27159d.g();
            g gVarF = this.f27166k.f();
            b2 b2Var = this.f27165j;
            if (b2Var == null) {
                b2Var = b2.G;
            }
            return new w1(str2, eVarG, iVar, gVarF, b2Var, this.f27167l);
        }

        public c b(String str) {
            this.f27162g = str;
            return this;
        }

        public c c(g gVar) {
            this.f27166k = gVar.b();
            return this;
        }

        public c d(String str) {
            this.f27156a = (String) com.google.android.exoplayer2.util.a.e(str);
            return this;
        }

        public c e(String str) {
            this.f27158c = str;
            return this;
        }

        public c f(List list) {
            this.f27161f = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public c g(List list) {
            this.f27163h = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public c h(Object obj) {
            this.f27164i = obj;
            return this;
        }

        public c i(Uri uri) {
            this.f27157b = uri;
            return this;
        }

        public c j(String str) {
            return i(str == null ? null : Uri.parse(str));
        }

        public c() {
            this.f27159d = new d.a();
            this.f27160e = new f.a();
            this.f27161f = Collections.emptyList();
            this.f27163h = ImmutableList.of();
            this.f27166k = new g.a();
            this.f27167l = j.f27220d;
        }

        private c(w1 w1Var) {
            f.a aVar;
            this();
            this.f27159d = w1Var.f27153f.b();
            this.f27156a = w1Var.f27148a;
            this.f27165j = w1Var.f27152e;
            this.f27166k = w1Var.f27151d.b();
            this.f27167l = w1Var.f27155h;
            h hVar = w1Var.f27149b;
            if (hVar != null) {
                this.f27162g = hVar.f27216e;
                this.f27158c = hVar.f27213b;
                this.f27157b = hVar.f27212a;
                this.f27161f = hVar.f27215d;
                this.f27163h = hVar.f27217f;
                this.f27164i = hVar.f27219h;
                f fVar = hVar.f27214c;
                if (fVar != null) {
                    aVar = fVar.b();
                } else {
                    aVar = new f.a();
                }
                this.f27160e = aVar;
            }
        }
    }

    public static class d implements com.google.android.exoplayer2.k {

        public static final d f27168f = new a().f();

        public static final com.google.android.exoplayer2.k.a f27169g = new com.google.android.exoplayer2.k.a() {
            @Override
            public final k a(Bundle bundle) {
                return w1.d.d(bundle);
            }
        };

        public final long f27170a;

        public final long f27171b;

        public final boolean f27172c;

        public final boolean f27173d;

        public final boolean f27174e;

        public static final class a {

            private long f27175a;

            private long f27176b;

            private boolean f27177c;

            private boolean f27178d;

            private boolean f27179e;

            public d f() {
                return g();
            }

            public e g() {
                return new e(this);
            }

            public a h(long j10) {
                com.google.android.exoplayer2.util.a.a(j10 == Long.MIN_VALUE || j10 >= 0);
                this.f27176b = j10;
                return this;
            }

            public a i(boolean z10) {
                this.f27178d = z10;
                return this;
            }

            public a j(boolean z10) {
                this.f27177c = z10;
                return this;
            }

            public a k(long j10) {
                com.google.android.exoplayer2.util.a.a(j10 >= 0);
                this.f27175a = j10;
                return this;
            }

            public a l(boolean z10) {
                this.f27179e = z10;
                return this;
            }

            public a() {
                this.f27176b = Long.MIN_VALUE;
            }

            private a(d dVar) {
                this.f27175a = dVar.f27170a;
                this.f27176b = dVar.f27171b;
                this.f27177c = dVar.f27172c;
                this.f27178d = dVar.f27173d;
                this.f27179e = dVar.f27174e;
            }
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
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
            return this.f27170a == dVar.f27170a && this.f27171b == dVar.f27171b && this.f27172c == dVar.f27172c && this.f27173d == dVar.f27173d && this.f27174e == dVar.f27174e;
        }

        public int hashCode() {
            long j10 = this.f27170a;
            int i10 = ((int) (j10 ^ (j10 >>> 32))) * 31;
            long j11 = this.f27171b;
            return ((((((i10 + ((int) ((j11 >>> 32) ^ j11))) * 31) + (this.f27172c ? 1 : 0)) * 31) + (this.f27173d ? 1 : 0)) * 31) + (this.f27174e ? 1 : 0);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.f27170a);
            bundle.putLong(c(1), this.f27171b);
            bundle.putBoolean(c(2), this.f27172c);
            bundle.putBoolean(c(3), this.f27173d);
            bundle.putBoolean(c(4), this.f27174e);
            return bundle;
        }

        private d(a aVar) {
            this.f27170a = aVar.f27175a;
            this.f27171b = aVar.f27176b;
            this.f27172c = aVar.f27177c;
            this.f27173d = aVar.f27178d;
            this.f27174e = aVar.f27179e;
        }
    }

    public static final class e extends d {

        public static final e f27180h = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    public static final class f {

        public final UUID f27181a;

        public final UUID f27182b;

        public final Uri f27183c;

        public final ImmutableMap f27184d;

        public final ImmutableMap f27185e;

        public final boolean f27186f;

        public final boolean f27187g;

        public final boolean f27188h;

        public final ImmutableList f27189i;

        public final ImmutableList f27190j;

        private final byte[] f27191k;

        public a b() {
            return new a();
        }

        public byte[] c() {
            byte[] bArr = this.f27191k;
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
            return this.f27181a.equals(fVar.f27181a) && com.google.android.exoplayer2.util.p0.c(this.f27183c, fVar.f27183c) && com.google.android.exoplayer2.util.p0.c(this.f27185e, fVar.f27185e) && this.f27186f == fVar.f27186f && this.f27188h == fVar.f27188h && this.f27187g == fVar.f27187g && this.f27190j.equals(fVar.f27190j) && Arrays.equals(this.f27191k, fVar.f27191k);
        }

        public int hashCode() {
            int iHashCode = this.f27181a.hashCode() * 31;
            Uri uri = this.f27183c;
            return ((((((((((((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.f27185e.hashCode()) * 31) + (this.f27186f ? 1 : 0)) * 31) + (this.f27188h ? 1 : 0)) * 31) + (this.f27187g ? 1 : 0)) * 31) + this.f27190j.hashCode()) * 31) + Arrays.hashCode(this.f27191k);
        }

        public static final class a {

            private UUID f27192a;

            private Uri f27193b;

            private ImmutableMap f27194c;

            private boolean f27195d;

            private boolean f27196e;

            private boolean f27197f;

            private ImmutableList f27198g;

            private byte[] f27199h;

            public f i() {
                return new f(this);
            }

            private a() {
                this.f27194c = ImmutableMap.of();
                this.f27198g = ImmutableList.of();
            }

            private a(f fVar) {
                this.f27192a = fVar.f27181a;
                this.f27193b = fVar.f27183c;
                this.f27194c = fVar.f27185e;
                this.f27195d = fVar.f27186f;
                this.f27196e = fVar.f27187g;
                this.f27197f = fVar.f27188h;
                this.f27198g = fVar.f27190j;
                this.f27199h = fVar.f27191k;
            }
        }

        private f(a aVar) {
            com.google.android.exoplayer2.util.a.g((aVar.f27197f && aVar.f27193b == null) ? false : true);
            UUID uuid = (UUID) com.google.android.exoplayer2.util.a.e(aVar.f27192a);
            this.f27181a = uuid;
            this.f27182b = uuid;
            this.f27183c = aVar.f27193b;
            this.f27184d = aVar.f27194c;
            this.f27185e = aVar.f27194c;
            this.f27186f = aVar.f27195d;
            this.f27188h = aVar.f27197f;
            this.f27187g = aVar.f27196e;
            this.f27189i = aVar.f27198g;
            this.f27190j = aVar.f27198g;
            this.f27191k = aVar.f27199h != null ? Arrays.copyOf(aVar.f27199h, aVar.f27199h.length) : null;
        }
    }

    public static final class g implements com.google.android.exoplayer2.k {

        public static final g f27200f = new a().f();

        public static final com.google.android.exoplayer2.k.a f27201g = new com.google.android.exoplayer2.k.a() {
            @Override
            public final k a(Bundle bundle) {
                return w1.g.d(bundle);
            }
        };

        public final long f27202a;

        public final long f27203b;

        public final long f27204c;

        public final float f27205d;

        public final float f27206e;

        public static final class a {

            private long f27207a;

            private long f27208b;

            private long f27209c;

            private float f27210d;

            private float f27211e;

            public g f() {
                return new g(this);
            }

            public a g(long j10) {
                this.f27209c = j10;
                return this;
            }

            public a h(float f10) {
                this.f27211e = f10;
                return this;
            }

            public a i(long j10) {
                this.f27208b = j10;
                return this;
            }

            public a j(float f10) {
                this.f27210d = f10;
                return this;
            }

            public a k(long j10) {
                this.f27207a = j10;
                return this;
            }

            public a() {
                this.f27207a = C.TIME_UNSET;
                this.f27208b = C.TIME_UNSET;
                this.f27209c = C.TIME_UNSET;
                this.f27210d = -3.4028235E38f;
                this.f27211e = -3.4028235E38f;
            }

            private a(g gVar) {
                this.f27207a = gVar.f27202a;
                this.f27208b = gVar.f27203b;
                this.f27209c = gVar.f27204c;
                this.f27210d = gVar.f27205d;
                this.f27211e = gVar.f27206e;
            }
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
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
            return this.f27202a == gVar.f27202a && this.f27203b == gVar.f27203b && this.f27204c == gVar.f27204c && this.f27205d == gVar.f27205d && this.f27206e == gVar.f27206e;
        }

        public int hashCode() {
            long j10 = this.f27202a;
            long j11 = this.f27203b;
            int i10 = ((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f27204c;
            int i11 = (i10 + ((int) ((j12 >>> 32) ^ j12))) * 31;
            float f10 = this.f27205d;
            int iFloatToIntBits = (i11 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
            float f11 = this.f27206e;
            return iFloatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.f27202a);
            bundle.putLong(c(1), this.f27203b);
            bundle.putLong(c(2), this.f27204c);
            bundle.putFloat(c(3), this.f27205d);
            bundle.putFloat(c(4), this.f27206e);
            return bundle;
        }

        private g(a aVar) {
            this(aVar.f27207a, aVar.f27208b, aVar.f27209c, aVar.f27210d, aVar.f27211e);
        }

        public g(long j10, long j11, long j12, float f10, float f11) {
            this.f27202a = j10;
            this.f27203b = j11;
            this.f27204c = j12;
            this.f27205d = f10;
            this.f27206e = f11;
        }
    }

    public static class h {

        public final Uri f27212a;

        public final String f27213b;

        public final f f27214c;

        public final List f27215d;

        public final String f27216e;

        public final ImmutableList f27217f;

        public final List f27218g;

        public final Object f27219h;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return this.f27212a.equals(hVar.f27212a) && com.google.android.exoplayer2.util.p0.c(this.f27213b, hVar.f27213b) && com.google.android.exoplayer2.util.p0.c(this.f27214c, hVar.f27214c) && com.google.android.exoplayer2.util.p0.c(null, null) && this.f27215d.equals(hVar.f27215d) && com.google.android.exoplayer2.util.p0.c(this.f27216e, hVar.f27216e) && this.f27217f.equals(hVar.f27217f) && com.google.android.exoplayer2.util.p0.c(this.f27219h, hVar.f27219h);
        }

        public int hashCode() {
            int iHashCode = this.f27212a.hashCode() * 31;
            String str = this.f27213b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            f fVar = this.f27214c;
            int iHashCode3 = (((iHashCode2 + (fVar == null ? 0 : fVar.hashCode())) * 961) + this.f27215d.hashCode()) * 31;
            String str2 = this.f27216e;
            int iHashCode4 = (((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f27217f.hashCode()) * 31;
            Object obj = this.f27219h;
            return iHashCode4 + (obj != null ? obj.hashCode() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private h(Uri uri, String str, f fVar, b bVar, List list, String str2, ImmutableList immutableList, Object obj) {
            this.f27212a = uri;
            this.f27213b = str;
            this.f27214c = fVar;
            this.f27215d = list;
            this.f27216e = str2;
            this.f27217f = immutableList;
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i10 = 0; i10 < immutableList.size(); i10++) {
                aVarBuilder.a(((l) immutableList.get(i10)).a().i());
            }
            this.f27218g = aVarBuilder.e();
            this.f27219h = obj;
        }
    }

    public static final class i extends h {
        private i(Uri uri, String str, f fVar, b bVar, List list, String str2, ImmutableList immutableList, Object obj) {
            super(uri, str, fVar, bVar, list, str2, immutableList, obj);
        }
    }

    public static final class j implements com.google.android.exoplayer2.k {

        public static final j f27220d = new a().d();

        public static final com.google.android.exoplayer2.k.a f27221e = new com.google.android.exoplayer2.k.a() {
            @Override
            public final k a(Bundle bundle) {
                return w1.j.c(bundle);
            }
        };

        public final Uri f27222a;

        public final String f27223b;

        public final Bundle f27224c;

        public static final class a {

            private Uri f27225a;

            private String f27226b;

            private Bundle f27227c;

            public j d() {
                return new j(this);
            }

            public a e(Bundle bundle) {
                this.f27227c = bundle;
                return this;
            }

            public a f(Uri uri) {
                this.f27225a = uri;
                return this;
            }

            public a g(String str) {
                this.f27226b = str;
                return this;
            }
        }

        private static String b(int i10) {
            return Integer.toString(i10, 36);
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
            return com.google.android.exoplayer2.util.p0.c(this.f27222a, jVar.f27222a) && com.google.android.exoplayer2.util.p0.c(this.f27223b, jVar.f27223b);
        }

        public int hashCode() {
            Uri uri = this.f27222a;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.f27223b;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            if (this.f27222a != null) {
                bundle.putParcelable(b(0), this.f27222a);
            }
            if (this.f27223b != null) {
                bundle.putString(b(1), this.f27223b);
            }
            if (this.f27224c != null) {
                bundle.putBundle(b(2), this.f27224c);
            }
            return bundle;
        }

        private j(a aVar) {
            this.f27222a = aVar.f27225a;
            this.f27223b = aVar.f27226b;
            this.f27224c = aVar.f27227c;
        }
    }

    public static final class k extends l {
        private k(l.a aVar) {
            super(aVar);
        }
    }

    public static class l {

        public final Uri f27228a;

        public final String f27229b;

        public final String f27230c;

        public final int f27231d;

        public final int f27232e;

        public final String f27233f;

        public final String f27234g;

        public static final class a {

            private Uri f27235a;

            private String f27236b;

            private String f27237c;

            private int f27238d;

            private int f27239e;

            private String f27240f;

            private String f27241g;

            public k i() {
                return new k(this);
            }

            private a(l lVar) {
                this.f27235a = lVar.f27228a;
                this.f27236b = lVar.f27229b;
                this.f27237c = lVar.f27230c;
                this.f27238d = lVar.f27231d;
                this.f27239e = lVar.f27232e;
                this.f27240f = lVar.f27233f;
                this.f27241g = lVar.f27234g;
            }
        }

        public a a() {
            return new a();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return this.f27228a.equals(lVar.f27228a) && com.google.android.exoplayer2.util.p0.c(this.f27229b, lVar.f27229b) && com.google.android.exoplayer2.util.p0.c(this.f27230c, lVar.f27230c) && this.f27231d == lVar.f27231d && this.f27232e == lVar.f27232e && com.google.android.exoplayer2.util.p0.c(this.f27233f, lVar.f27233f) && com.google.android.exoplayer2.util.p0.c(this.f27234g, lVar.f27234g);
        }

        public int hashCode() {
            int iHashCode = this.f27228a.hashCode() * 31;
            String str = this.f27229b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f27230c;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f27231d) * 31) + this.f27232e) * 31;
            String str3 = this.f27233f;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f27234g;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }

        private l(a aVar) {
            this.f27228a = aVar.f27235a;
            this.f27229b = aVar.f27236b;
            this.f27230c = aVar.f27237c;
            this.f27231d = aVar.f27238d;
            this.f27232e = aVar.f27239e;
            this.f27233f = aVar.f27240f;
            this.f27234g = aVar.f27241g;
        }
    }

    public static w1 c(Bundle bundle) {
        String str = (String) com.google.android.exoplayer2.util.a.e(bundle.getString(f(0), ""));
        Bundle bundle2 = bundle.getBundle(f(1));
        g gVar = bundle2 == null ? g.f27200f : (g) g.f27201g.a(bundle2);
        Bundle bundle3 = bundle.getBundle(f(2));
        b2 b2Var = bundle3 == null ? b2.G : (b2) b2.H.a(bundle3);
        Bundle bundle4 = bundle.getBundle(f(3));
        e eVar = bundle4 == null ? e.f27180h : (e) d.f27169g.a(bundle4);
        Bundle bundle5 = bundle.getBundle(f(4));
        return new w1(str, eVar, null, gVar, b2Var, bundle5 == null ? j.f27220d : (j) j.f27221e.a(bundle5));
    }

    public static w1 d(Uri uri) {
        return new c().i(uri).a();
    }

    public static w1 e(String str) {
        return new c().j(str).a();
    }

    private static String f(int i10) {
        return Integer.toString(i10, 36);
    }

    public c b() {
        return new c();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w1)) {
            return false;
        }
        w1 w1Var = (w1) obj;
        return com.google.android.exoplayer2.util.p0.c(this.f27148a, w1Var.f27148a) && this.f27153f.equals(w1Var.f27153f) && com.google.android.exoplayer2.util.p0.c(this.f27149b, w1Var.f27149b) && com.google.android.exoplayer2.util.p0.c(this.f27151d, w1Var.f27151d) && com.google.android.exoplayer2.util.p0.c(this.f27152e, w1Var.f27152e) && com.google.android.exoplayer2.util.p0.c(this.f27155h, w1Var.f27155h);
    }

    public int hashCode() {
        int iHashCode = this.f27148a.hashCode() * 31;
        h hVar = this.f27149b;
        return ((((((((iHashCode + (hVar != null ? hVar.hashCode() : 0)) * 31) + this.f27151d.hashCode()) * 31) + this.f27153f.hashCode()) * 31) + this.f27152e.hashCode()) * 31) + this.f27155h.hashCode();
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(f(0), this.f27148a);
        bundle.putBundle(f(1), this.f27151d.toBundle());
        bundle.putBundle(f(2), this.f27152e.toBundle());
        bundle.putBundle(f(3), this.f27153f.toBundle());
        bundle.putBundle(f(4), this.f27155h.toBundle());
        return bundle;
    }

    private w1(String str, e eVar, i iVar, g gVar, b2 b2Var, j jVar) {
        this.f27148a = str;
        this.f27149b = iVar;
        this.f27150c = iVar;
        this.f27151d = gVar;
        this.f27152e = b2Var;
        this.f27153f = eVar;
        this.f27154g = eVar;
        this.f27155h = jVar;
    }
}
