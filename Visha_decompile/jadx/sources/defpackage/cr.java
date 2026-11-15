package defpackage;

import android.net.Uri;
import com.transsion.dbdata.beans.media.MediaBucket;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class cr {
    public final boolean A;
    public final int B;
    public final List C;
    public final boolean D;
    public final boolean E;
    public final boolean F;
    public final boolean G;
    public final String H;
    public final boolean a;
    public final boolean b;
    public final String c;
    public final String d;
    public final int e;
    public final Uri f;
    public final ArrayList g;
    public final ArrayList h;
    public final ArrayList i;
    public final int j;
    public final MediaBucket k;
    public final boolean l;
    public final String m;
    public final int n;
    public final long o;
    public final boolean p;
    public final String q;
    public final String r;
    public final int s;
    public final String t;
    public final boolean u;
    public final boolean v;
    public final boolean w;
    public final boolean x;
    public final boolean y;
    public final boolean z;

    public static final class a {
        public boolean A;
        public boolean B;
        public int C = -1;
        public boolean D;
        public boolean E;
        public boolean F;
        public boolean G;
        public String H;
        public boolean a;
        public boolean b;
        public String c;
        public String d;
        public int e;
        public Uri f;
        public ArrayList g;
        public ArrayList h;
        public ArrayList i;
        public int j;
        public MediaBucket k;
        public boolean l;
        public String m;
        public int n;
        public long o;
        public boolean p;
        public String q;
        public String r;
        public int s;
        public String t;
        public boolean u;
        public boolean v;
        public List w;
        public boolean x;
        public boolean y;
        public boolean z;

        public final a A(int i) {
            this.s = i;
            return this;
        }

        public final a B(ArrayList arrayList) {
            this.i = arrayList;
            return this;
        }

        public final a C(boolean z) {
            this.p = z;
            return this;
        }

        public final a D(Uri uri) {
            this.f = uri;
            return this;
        }

        public final a a(String str) {
            this.r = str;
            return this;
        }

        public final a b(String str) {
            this.q = str;
            return this;
        }

        public final a c(boolean z) {
            this.l = z;
            return this;
        }

        public final a d(long j) {
            this.o = j;
            return this;
        }

        public final cr e() {
            return new cr(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.x, this.y, this.z, this.A, this.B, this.C, this.w, this.D, this.E, this.F, this.G, this.H, null);
        }

        public final a f(boolean z) {
            this.D = z;
            return this;
        }

        public final a g(int i) {
            this.j = i;
            return this;
        }

        public final a h(String str) {
            this.d = str;
            return this;
        }

        public final a i(String str) {
            this.t = str;
            return this;
        }

        public final a j(boolean z) {
            this.b = z;
            return this;
        }

        public final a k(int i) {
            this.n = i;
            return this;
        }

        public final a l(int i) {
            this.C = i;
            return this;
        }

        public final a m(boolean z) {
            this.G = z;
            return this;
        }

        public final a n(boolean z) {
            this.a = z;
            return this;
        }

        public final a o(boolean z) {
            this.u = z;
            return this;
        }

        public final a p(boolean z) {
            this.x = z;
            return this;
        }

        public final a q(boolean z) {
            this.v = z;
            return this;
        }

        public final a r(boolean z) {
            this.z = z;
            return this;
        }

        public final a s(int i) {
            this.e = i;
            return this;
        }

        public final a t(String str) {
            this.H = str;
            return this;
        }

        public final a u(MediaBucket mediaBucket) {
            this.k = mediaBucket;
            return this;
        }

        public final a v(ArrayList arrayList) {
            this.g = arrayList;
            return this;
        }

        public final a w(List list) {
            this.w = list;
            return this;
        }

        public final a x(String str) {
            this.m = str;
            return this;
        }

        public final a y(String str) {
            this.c = str;
            return this;
        }

        public final a z(ArrayList arrayList) {
            this.h = arrayList;
            return this;
        }
    }

    public cr(boolean z, boolean z2, String str, String str2, int i, Uri uri, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, int i2, MediaBucket mediaBucket, boolean z3, String str3, int i3, long j, boolean z4, String str4, String str5, int i4, String str6, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, int i5, List list, boolean z12, boolean z13, boolean z14, boolean z15, String str7, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, z2, str, str2, i, uri, arrayList, arrayList2, arrayList3, i2, mediaBucket, z3, str3, i3, j, z4, str4, str5, i4, str6, z5, z6, z7, z8, z9, z10, z11, i5, list, z12, z13, z14, z15, str7);
    }

    public final boolean A() {
        return this.w;
    }

    public final boolean B() {
        return this.v;
    }

    public final boolean C() {
        return this.E;
    }

    public final boolean D() {
        return this.F;
    }

    public final boolean E() {
        return this.y;
    }

    public final boolean F() {
        return this.A;
    }

    public final boolean G() {
        return this.z;
    }

    public final String a() {
        return this.r;
    }

    public final String b() {
        return this.q;
    }

    public final boolean c() {
        return this.l;
    }

    public final long d() {
        return this.o;
    }

    public final boolean e() {
        return this.D;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cr)) {
            return false;
        }
        cr crVar = (cr) obj;
        return this.a == crVar.a && this.b == crVar.b && y45.e(this.c, crVar.c) && y45.e(this.d, crVar.d) && this.e == crVar.e && y45.e(this.f, crVar.f) && y45.e(this.g, crVar.g) && y45.e(this.h, crVar.h) && y45.e(this.i, crVar.i) && this.j == crVar.j && y45.e(this.k, crVar.k) && this.l == crVar.l && y45.e(this.m, crVar.m) && this.n == crVar.n && this.o == crVar.o && this.p == crVar.p && y45.e(this.q, crVar.q) && y45.e(this.r, crVar.r) && this.s == crVar.s && y45.e(this.t, crVar.t) && this.u == crVar.u && this.v == crVar.v && this.w == crVar.w && this.x == crVar.x && this.y == crVar.y && this.z == crVar.z && this.A == crVar.A && this.B == crVar.B && y45.e(this.C, crVar.C) && this.D == crVar.D && this.E == crVar.E && this.F == crVar.F && this.G == crVar.G && y45.e(this.H, crVar.H);
    }

    public final int f() {
        return this.j;
    }

    public final String g() {
        return this.d;
    }

    public final String h() {
        return this.t;
    }

    public int hashCode() {
        int iHashCode = ((Boolean.hashCode(this.a) * 31) + Boolean.hashCode(this.b)) * 31;
        String str = this.c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + Integer.hashCode(this.e)) * 31;
        Uri uri = this.f;
        int iHashCode4 = (iHashCode3 + (uri == null ? 0 : uri.hashCode())) * 31;
        ArrayList arrayList = this.g;
        int iHashCode5 = (iHashCode4 + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList arrayList2 = this.h;
        int iHashCode6 = (iHashCode5 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        ArrayList arrayList3 = this.i;
        int iHashCode7 = (((iHashCode6 + (arrayList3 == null ? 0 : arrayList3.hashCode())) * 31) + Integer.hashCode(this.j)) * 31;
        MediaBucket mediaBucket = this.k;
        int iHashCode8 = (((iHashCode7 + (mediaBucket == null ? 0 : mediaBucket.hashCode())) * 31) + Boolean.hashCode(this.l)) * 31;
        String str3 = this.m;
        int iHashCode9 = (((((((iHashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31) + Integer.hashCode(this.n)) * 31) + Long.hashCode(this.o)) * 31) + Boolean.hashCode(this.p)) * 31;
        String str4 = this.q;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.r;
        int iHashCode11 = (((iHashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31) + Integer.hashCode(this.s)) * 31;
        String str6 = this.t;
        int iHashCode12 = (((((((((((((((((iHashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31) + Boolean.hashCode(this.u)) * 31) + Boolean.hashCode(this.v)) * 31) + Boolean.hashCode(this.w)) * 31) + Boolean.hashCode(this.x)) * 31) + Boolean.hashCode(this.y)) * 31) + Boolean.hashCode(this.z)) * 31) + Boolean.hashCode(this.A)) * 31) + Integer.hashCode(this.B)) * 31;
        List list = this.C;
        int iHashCode13 = (((((((((iHashCode12 + (list == null ? 0 : list.hashCode())) * 31) + Boolean.hashCode(this.D)) * 31) + Boolean.hashCode(this.E)) * 31) + Boolean.hashCode(this.F)) * 31) + Boolean.hashCode(this.G)) * 31;
        String str7 = this.H;
        return iHashCode13 + (str7 != null ? str7.hashCode() : 0);
    }

    public final boolean i() {
        return this.b;
    }

    public final int j() {
        return this.n;
    }

    public final int k() {
        return this.e;
    }

    public final String l() {
        return this.H;
    }

    public final MediaBucket m() {
        return this.k;
    }

    public final ArrayList n() {
        return this.g;
    }

    public final List o() {
        return this.C;
    }

    public final String p() {
        return this.m;
    }

    public final String q() {
        return this.c;
    }

    public final ArrayList r() {
        return this.h;
    }

    public final int s() {
        return this.s;
    }

    public final ArrayList t() {
        return this.i;
    }

    public String toString() {
        return "AudioItemRequestInput(isInternal=" + this.a + ", filtered=" + this.b + ", path=" + this.c + ", displayName=" + this.d + ", itemId=" + this.e + ", uri=" + this.f + ", mediaIds=" + this.g + ", pathList=" + this.h + ", playlist=" + this.i + ", count=" + this.j + ", mediaBucket=" + this.k + ", bucketFilter=" + this.l + ", parentPath=" + this.m + ", flag=" + this.n + ", bucketsId=" + this.o + ", recentAdd=" + this.p + ", artist=" + this.q + ", albumName=" + this.r + ", playCount=" + this.s + ", filterType=" + this.t + ", isMvDelete=" + this.u + ", isMvQueryAll=" + this.v + ", isMvInsert=" + this.w + ", isExist=" + this.x + ", isRefresh=" + this.y + ", isScanCacheInsert=" + this.z + ", isScanCacheDelete=" + this.A + ", flags=" + this.B + ", mediaItemList=" + this.C + ", combineMVList=" + this.D + ", isMvQueryMedia=" + this.E + ", isMvQueryUserAdd=" + this.F + ", isFullData=" + this.G + ", manual=" + this.H + ")";
    }

    public final boolean u() {
        return this.p;
    }

    public final Uri v() {
        return this.f;
    }

    public final boolean w() {
        return this.x;
    }

    public final boolean x() {
        return this.G;
    }

    public final boolean y() {
        return this.a;
    }

    public final boolean z() {
        return this.u;
    }

    public cr(boolean z, boolean z2, String str, String str2, int i, Uri uri, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, int i2, MediaBucket mediaBucket, boolean z3, String str3, int i3, long j, boolean z4, String str4, String str5, int i4, String str6, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, int i5, List list, boolean z12, boolean z13, boolean z14, boolean z15, String str7) {
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = str2;
        this.e = i;
        this.f = uri;
        this.g = arrayList;
        this.h = arrayList2;
        this.i = arrayList3;
        this.j = i2;
        this.k = mediaBucket;
        this.l = z3;
        this.m = str3;
        this.n = i3;
        this.o = j;
        this.p = z4;
        this.q = str4;
        this.r = str5;
        this.s = i4;
        this.t = str6;
        this.u = z5;
        this.v = z6;
        this.w = z7;
        this.x = z8;
        this.y = z9;
        this.z = z10;
        this.A = z11;
        this.B = i5;
        this.C = list;
        this.D = z12;
        this.E = z13;
        this.F = z14;
        this.G = z15;
        this.H = str7;
    }
}
