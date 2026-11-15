package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.jw0;
import com.yandex.mobile.ads.impl.km;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public final class jw0 implements km {
    public static final km.a<jw0> h;
    public final String b;

    @Nullable
    public final g c;
    public final e d;
    public final mw0 e;
    public final c f;
    public final h g;

    public static class b implements km {
        public static final km.a<c> g = new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return jw0.b.a(bundle);
            }
        };

        @IntRange(from = 0)
        public final long b;
        public final long c;
        public final boolean d;
        public final boolean e;
        public final boolean f;

        public static final class a {
            private long a;
            private long b = Long.MIN_VALUE;
            private boolean c;
            private boolean d;
            private boolean e;
        }

        public static c a(Bundle bundle) {
            a aVar = new a();
            long j = bundle.getLong(Integer.toString(0, 36), 0L);
            if (j < 0) {
                throw new IllegalArgumentException();
            }
            aVar.a = j;
            long j2 = bundle.getLong(Integer.toString(1, 36), Long.MIN_VALUE);
            if (j2 != Long.MIN_VALUE && j2 < 0) {
                throw new IllegalArgumentException();
            }
            aVar.b = j2;
            aVar.c = bundle.getBoolean(Integer.toString(2, 36), false);
            aVar.d = bundle.getBoolean(Integer.toString(3, 36), false);
            aVar.e = bundle.getBoolean(Integer.toString(4, 36), false);
            return new c(aVar);
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.b == bVar.b && this.c == bVar.c && this.d == bVar.d && this.e == bVar.e && this.f == bVar.f;
        }

        public final int hashCode() {
            long j = this.b;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.c;
            return ((((((i + ((int) ((j2 >>> 32) ^ j2))) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + (this.f ? 1 : 0);
        }

        private b(a aVar) {
            this.b = aVar.a;
            this.c = aVar.b;
            this.d = aVar.c;
            this.e = aVar.d;
            this.f = aVar.e;
        }
    }

    @Deprecated
    public static final class c extends b {
        public static final c h = new c(new b.a());

        private c(b.a aVar) {
            super(aVar);
        }
    }

    public static final class d {
        public final UUID a;

        @Nullable
        public final Uri b;
        public final lk0<String, String> c;
        public final boolean d;
        public final boolean e;
        public final boolean f;
        public final kk0<Integer> g;

        @Nullable
        private final byte[] h;

        public static final class a {
            private lk0<String, String> a;
            private kk0<Integer> b;

            @Deprecated
            private a() {
                this.a = lk0.g();
                this.b = kk0.h();
            }
        }

        private d(a aVar) {
            aVar.getClass();
            this.a = (UUID) hg.a((Object) null);
            this.b = null;
            this.c = aVar.a;
            this.d = false;
            this.f = false;
            this.e = false;
            this.g = aVar.b;
            this.h = null;
        }

        @Nullable
        public final byte[] a() {
            byte[] bArr = this.h;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a.equals(dVar.a) && f92.a(this.b, dVar.b) && f92.a(this.c, dVar.c) && this.d == dVar.d && this.f == dVar.f && this.e == dVar.e && this.g.equals(dVar.g) && Arrays.equals(this.h, dVar.h);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            Uri uri = this.b;
            return Arrays.hashCode(this.h) + ((this.g.hashCode() + ((((((((this.c.hashCode() + ((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31)) * 31) + (this.d ? 1 : 0)) * 31) + (this.f ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31)) * 31);
        }
    }

    public static final class e implements km {
        public static final e g = new e(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f);
        public static final km.a<e> h = new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return jw0.e.a(bundle);
            }
        };
        public final long b;
        public final long c;
        public final long d;
        public final float e;
        public final float f;

        public static final class a {
            private long a = C.TIME_UNSET;
            private long b = C.TIME_UNSET;
            private long c = C.TIME_UNSET;
            private float d = -3.4028235E38f;
            private float e = -3.4028235E38f;

            public final e a() {
                return new e(this.a, this.b, this.c, this.d, this.e);
            }
        }

        @Deprecated
        public e(long j, long j2, long j3, float f, float f2) {
            this.b = j;
            this.c = j2;
            this.d = j3;
            this.e = f;
            this.f = f2;
        }

        public static e a(Bundle bundle) {
            return new e(bundle.getLong(Integer.toString(0, 36), C.TIME_UNSET), bundle.getLong(Integer.toString(1, 36), C.TIME_UNSET), bundle.getLong(Integer.toString(2, 36), C.TIME_UNSET), bundle.getFloat(Integer.toString(3, 36), -3.4028235E38f), bundle.getFloat(Integer.toString(4, 36), -3.4028235E38f));
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return this.b == eVar.b && this.c == eVar.c && this.d == eVar.d && this.e == eVar.e && this.f == eVar.f;
        }

        public final int hashCode() {
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
    }

    public static class f {
        public final Uri a;

        @Nullable
        public final String b;

        @Nullable
        public final d c;
        public final List<w22> d;

        @Nullable
        public final String e;
        public final kk0<j> f;

        @Nullable
        public final Object g;

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a.equals(fVar.a) && f92.a(this.b, fVar.b) && f92.a(this.c, fVar.c) && f92.a((Object) null, (Object) null) && this.d.equals(fVar.d) && f92.a(this.e, fVar.e) && this.f.equals(fVar.f) && f92.a(this.g, fVar.g);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            d dVar = this.c;
            int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (dVar == null ? 0 : dVar.hashCode())) * 961)) * 31;
            String str2 = this.e;
            int iHashCode4 = (this.f.hashCode() + ((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            Object obj = this.g;
            return iHashCode4 + (obj != null ? obj.hashCode() : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private f(Uri uri, @Nullable String str, @Nullable d dVar, List list, @Nullable String str2, kk0 kk0Var, @Nullable Object obj) {
            this.a = uri;
            this.b = str;
            this.c = dVar;
            this.d = list;
            this.e = str2;
            this.f = kk0Var;
            kk0.a aVarG = kk0.g();
            for (int i = 0; i < kk0Var.size(); i++) {
                aVarG.b(((j) kk0Var.get(i)).a().a());
            }
            aVarG.a();
            this.g = obj;
        }
    }

    @Deprecated
    public static final class g extends f {
        private g(Uri uri, @Nullable String str, @Nullable d dVar, List list, @Nullable String str2, kk0 kk0Var, @Nullable Object obj) {
            super(uri, str, dVar, list, str2, kk0Var, obj);
        }
    }

    public static final class h implements km {
        public static final h d = new h(new a());
        public static final km.a<h> e = new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return jw0.h.a(bundle);
            }
        };

        @Nullable
        public final Uri b;

        @Nullable
        public final String c;

        public static final class a {

            @Nullable
            private Uri a;

            @Nullable
            private String b;

            @Nullable
            private Bundle c;
        }

        private h(a aVar) {
            this.b = aVar.a;
            this.c = aVar.b;
            Bundle unused = aVar.c;
        }

        public static h a(Bundle bundle) {
            a aVar = new a();
            aVar.a = (Uri) bundle.getParcelable(Integer.toString(0, 36));
            aVar.b = bundle.getString(Integer.toString(1, 36));
            aVar.c = bundle.getBundle(Integer.toString(2, 36));
            return new h(aVar);
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return f92.a(this.b, hVar.b) && f92.a(this.c, hVar.c);
        }

        public final int hashCode() {
            Uri uri = this.b;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.c;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }
    }

    @Deprecated
    public static final class i extends j {
        private i(j.a aVar) {
            super(aVar);
        }
    }

    public static class j {
        public final Uri a;

        @Nullable
        public final String b;

        @Nullable
        public final String c;
        public final int d;
        public final int e;

        @Nullable
        public final String f;

        @Nullable
        public final String g;

        public static final class a {
            private Uri a;

            @Nullable
            private String b;

            @Nullable
            private String c;
            private int d;
            private int e;

            @Nullable
            private String f;

            @Nullable
            private String g;

            private a(j jVar) {
                this.a = jVar.a;
                this.b = jVar.b;
                this.c = jVar.c;
                this.d = jVar.d;
                this.e = jVar.e;
                this.f = jVar.f;
                this.g = jVar.g;
            }

            public i a() {
                return new i(this);
            }
        }

        public final a a() {
            return new a();
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return this.a.equals(jVar.a) && f92.a(this.b, jVar.b) && f92.a(this.c, jVar.c) && this.d == jVar.d && this.e == jVar.e && f92.a(this.f, jVar.f) && f92.a(this.g, jVar.g);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.c;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.d) * 31) + this.e) * 31;
            String str3 = this.f;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.g;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }

        private j(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
            this.f = aVar.f;
            this.g = aVar.g;
        }
    }

    static {
        new d.a();
        Collections.emptyList();
        kk0.h();
        e.a aVar = new e.a();
        h hVar = h.d;
        aVar.a();
        mw0 mw0Var = mw0.H;
        h = new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return jw0.a(bundle);
            }
        };
    }

    public static jw0 a(Bundle bundle) {
        String string = bundle.getString(Integer.toString(0, 36), "");
        string.getClass();
        Bundle bundle2 = bundle.getBundle(Integer.toString(1, 36));
        e eVar = bundle2 == null ? e.g : (e) e.h.fromBundle(bundle2);
        Bundle bundle3 = bundle.getBundle(Integer.toString(2, 36));
        mw0 mw0Var = bundle3 == null ? mw0.H : (mw0) mw0.I.fromBundle(bundle3);
        Bundle bundle4 = bundle.getBundle(Integer.toString(3, 36));
        c cVar = bundle4 == null ? c.h : (c) b.g.fromBundle(bundle4);
        Bundle bundle5 = bundle.getBundle(Integer.toString(4, 36));
        return new jw0(string, cVar, null, eVar, mw0Var, bundle5 == null ? h.d : (h) h.e.fromBundle(bundle5));
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jw0)) {
            return false;
        }
        jw0 jw0Var = (jw0) obj;
        return f92.a(this.b, jw0Var.b) && this.f.equals(jw0Var.f) && f92.a(this.c, jw0Var.c) && f92.a(this.d, jw0Var.d) && f92.a(this.e, jw0Var.e) && f92.a(this.g, jw0Var.g);
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        g gVar = this.c;
        return this.g.hashCode() + ((this.e.hashCode() + ((this.f.hashCode() + ((this.d.hashCode() + ((iHashCode + (gVar != null ? gVar.hashCode() : 0)) * 31)) * 31)) * 31)) * 31);
    }

    private jw0(String str, c cVar, @Nullable g gVar, e eVar, mw0 mw0Var, h hVar) {
        this.b = str;
        this.c = gVar;
        this.d = eVar;
        this.e = mw0Var;
        this.f = cVar;
        this.g = hVar;
    }

    public static final class a {

        @Nullable
        private String a;

        @Nullable
        private Uri b;

        @Nullable
        private String f;
        private b.a c = new b.a();
        private d.a d = new d.a();
        private List<w22> e = Collections.emptyList();
        private kk0<j> g = kk0.h();
        private e.a h = new e.a();
        private h i = h.d;

        public final jw0 a() {
            g gVar;
            this.d.getClass();
            Uri uri = this.b;
            if (uri != null) {
                gVar = new g(uri, null, null, this.e, this.f, this.g, null);
            } else {
                gVar = null;
            }
            String str = this.a;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            b.a aVar = this.c;
            aVar.getClass();
            return new jw0(str2, new c(aVar), gVar, this.h.a(), mw0.H, this.i);
        }

        public final a b(String str) {
            str.getClass();
            this.a = str;
            return this;
        }

        public final a a(@Nullable String str) {
            this.f = str;
            return this;
        }

        public final a a(@Nullable List<w22> list) {
            List<w22> listEmptyList;
            if (list != null && !list.isEmpty()) {
                listEmptyList = Collections.unmodifiableList(new ArrayList(list));
            } else {
                listEmptyList = Collections.emptyList();
            }
            this.e = listEmptyList;
            return this;
        }

        public final a a(@Nullable Uri uri) {
            this.b = uri;
            return this;
        }
    }

    public static jw0 a(String str) {
        g gVar;
        b.a aVar = new b.a();
        new d.a();
        List listEmptyList = Collections.emptyList();
        kk0 kk0VarH = kk0.h();
        h hVar = h.d;
        Uri uri = str == null ? null : Uri.parse(str);
        if (uri != null) {
            gVar = new g(uri, null, null, listEmptyList, null, kk0VarH, null);
        } else {
            gVar = null;
        }
        return new jw0("", new c(aVar), gVar, new e(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, -3.4028235E38f, -3.4028235E38f), mw0.H, hVar);
    }
}
