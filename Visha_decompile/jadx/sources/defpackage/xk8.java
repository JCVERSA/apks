package defpackage;

import android.net.Uri;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class xk8 {

    public static final class a extends xk8 {
        public final String a;
        public final String b;
        public final String c;
        public final int d;
        public final Long e;

        public a(String str, String str2, String str3, int i, Long l) {
            super(null);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = i;
            this.e = l;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }

        public final int d() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c) && this.d == aVar.d && y45.e(this.e, aVar.e);
        }

        public int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.c;
            int iHashCode3 = (((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + Integer.hashCode(this.d)) * 31;
            Long l = this.e;
            return iHashCode3 + (l != null ? l.hashCode() : 0);
        }

        public String toString() {
            return "AIListAction(albumName=" + this.a + ", artistName=" + this.b + ", displayName=" + this.c + ", flag=" + this.d + ", playListId=" + this.e + ")";
        }
    }

    public static final class a0 extends xk8 {
        public a0() {
            super(null);
        }
    }

    public static final class b extends xk8 {
        public final String a;
        public final String b;
        public final boolean c;
        public final String d;

        public static final class a {
            public String a;
            public String b;
            public boolean c;
            public String d;

            public final a a(String str) {
                this.a = str;
                return this;
            }

            public final a b(String str) {
                this.b = str;
                return this;
            }

            public final b c() {
                return new b(this.a, this.b, this.c, this.d, null);
            }

            public final a d(String str) {
                this.d = str;
                return this;
            }
        }

        public b(String str, String str2, boolean z, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, z, str3);
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final boolean c() {
            return this.c;
        }

        public final String d() {
            return this.d;
        }

        public b(String str, String str2, boolean z, String str3) {
            super(null);
            this.a = str;
            this.b = str2;
            this.c = z;
            this.d = str3;
        }
    }

    public static final class b0 extends xk8 {
        public final int a;

        public b0(int i) {
            super(null);
            this.a = i;
        }

        public final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b0) && this.a == ((b0) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "VideoAudioTrack(mediaId=" + this.a + ")";
        }
    }

    public static final class c extends xk8 {
        public final int a;
        public final int b;
        public final boolean c;
        public final String d;
        public final int e;
        public final boolean f;

        public static final class a {
            public int a;
            public int b;
            public boolean c;
            public String d;
            public int e = Integer.MAX_VALUE;
            public boolean f;

            public final c a() {
                return new c(this.a, this.b, this.c, this.d, this.e, this.f, null);
            }

            public final a b(boolean z) {
                this.f = z;
                return this;
            }

            public final a c(boolean z) {
                this.c = z;
                return this;
            }

            public final a d(int i) {
                this.e = i;
                return this;
            }

            public final a e(String str) {
                this.d = str;
                return this;
            }

            public final a f(int i) {
                this.a = i;
                return this;
            }

            public final a g(int i) {
                this.b = i;
                return this;
            }
        }

        public c(int i, int i2, boolean z, String str, int i3, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, z, str, i3, z2);
        }

        public final boolean a() {
            return this.f;
        }

        public final boolean b() {
            return this.c;
        }

        public final int c() {
            return this.e;
        }

        public final String d() {
            return this.d;
        }

        public final int e() {
            return this.a;
        }

        public final int f() {
            return this.b;
        }

        public c(int i, int i2, boolean z, String str, int i3, boolean z2) {
            super(null);
            this.a = i;
            this.b = i2;
            this.c = z;
            this.d = str;
            this.e = i3;
            this.f = z2;
        }
    }

    public static final class c0 extends xk8 {
        public final String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c0(String str) {
            super(null);
            y45.j(str, "url");
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c0) && y45.e(this.a, ((c0) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "VideoOnlinePlayHistory(url=" + this.a + ")";
        }
    }

    public static final class d extends xk8 {
        public final int a;
        public final boolean b;
        public final boolean c;

        public d(int i, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? true : z2);
        }

        public final boolean a() {
            return this.c;
        }

        public final boolean b() {
            return this.b;
        }

        public final boolean c() {
            return this.a == 1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && this.b == dVar.b && this.c == dVar.c;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.a) * 31) + Boolean.hashCode(this.b)) * 31) + Boolean.hashCode(this.c);
        }

        public String toString() {
            return "AllPlayList(createType=" + this.a + ", includeRecent=" + this.b + ", includeFavorite=" + this.c + ")";
        }

        public d(int i, boolean z, boolean z2) {
            super(null);
            this.a = i;
            this.b = z;
            this.c = z2;
        }
    }

    public static final class d0 extends xk8 {
        public final int a;

        public d0(int i) {
            super(null);
            this.a = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d0) && this.a == ((d0) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "VideoTrackData(type=" + this.a + ")";
        }
    }

    public static final class e extends xk8 {
        public final int a;

        public e(int i) {
            super(null);
            this.a = i;
        }

        public final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && this.a == ((e) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "AudioConvertedList(count=" + this.a + ")";
        }
    }

    public static final class f extends xk8 {
        public final int a;

        public f(int i) {
            super(null);
            this.a = i;
        }

        public final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof f) && this.a == ((f) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "AudioLyricOffset(mediaId=" + this.a + ")";
        }
    }

    public static class g extends xk8 {
        public final int a;
        public final String b;
        public final String c;
        public final String d;

        public g(int i, String str, String str2, String str3) {
            super(null);
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = str3;
        }

        public final String a() {
            return this.d;
        }

        public final String b() {
            return this.c;
        }

        public final int c() {
            return this.a;
        }

        public final String d() {
            return this.b;
        }
    }

    public static final class h extends xk8 {
        public final int a;
        public final boolean b;

        public static final class a {
            public int a;
            public boolean b;

            public final a a(int i) {
                this.a = i;
                return this;
            }

            public final h b() {
                return new h(this.a, this.b, null);
            }

            public final a c(boolean z) {
                this.b = z;
                return this;
            }
        }

        public h(int i, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, z);
        }

        public final int a() {
            return this.a;
        }

        public final boolean b() {
            return this.b;
        }

        public final boolean c() {
            return this.a == 257;
        }

        public h(int i, boolean z) {
            super(null);
            this.a = i;
            this.b = z;
        }
    }

    public static final class i extends xk8 {
        public final Long a;
        public final String b;
        public final boolean c;
        public final String d;
        public final boolean e;

        public static final class a {
            public Long a;
            public String b;
            public String d;
            public boolean c = true;
            public boolean e = true;

            public final i a() {
                return new i(this.a, this.b, this.c, this.d, this.e, null);
            }

            public final a b(long j) {
                this.a = Long.valueOf(j);
                return this;
            }

            public final a c(boolean z) {
                this.c = z;
                return this;
            }

            public final a d(boolean z) {
                this.e = z;
                return this;
            }

            public final a e(String str) {
                this.d = str;
                return this;
            }

            public final a f(String str) {
                this.b = str;
                return this;
            }
        }

        public i(Long l, String str, boolean z, String str2, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
            this(l, str, z, str2, z2);
        }

        public final Long a() {
            return this.a;
        }

        public final boolean b() {
            return this.c;
        }

        public final boolean c() {
            return this.e;
        }

        public final String d() {
            return this.d;
        }

        public final String e() {
            return this.b;
        }

        public i(Long l, String str, boolean z, String str2, boolean z2) {
            super(null);
            this.a = l;
            this.b = str;
            this.c = z;
            this.d = str2;
            this.e = z2;
        }
    }

    public static final class j extends xk8 {
        public final int a;
        public final boolean b;
        public final e74 c;

        public j(int i, boolean z, e74 e74Var) {
            super(null);
            this.a = i;
            this.b = z;
            this.c = e74Var;
        }

        public final boolean a() {
            return this.b;
        }

        public final int b() {
            return this.a;
        }

        public final e74 c() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return this.a == jVar.a && this.b == jVar.b && y45.e(this.c, jVar.c);
        }

        public int hashCode() {
            int iHashCode = ((Integer.hashCode(this.a) * 31) + Boolean.hashCode(this.b)) * 31;
            e74 e74Var = this.c;
            return iHashCode + (e74Var == null ? 0 : e74Var.hashCode());
        }

        public String toString() {
            return "ConvertingVideoList(count=" + this.a + ", canDelete=" + this.b + ", removeInvalid=" + this.c + ")";
        }
    }

    public static final class k extends xk8 {
        public final int a;

        public k(int i) {
            super(null);
            this.a = i;
        }

        public final boolean a() {
            return this.a == 1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof k) && this.a == ((k) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "FavoritePlayListItem(createType=" + this.a + ")";
        }
    }

    public static final class l extends xk8 {
        public final int a;

        public l(int i) {
            super(null);
            this.a = i;
        }

        public final int a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof l) && this.a == ((l) obj).a;
        }

        public int hashCode() {
            return Integer.hashCode(this.a);
        }

        public String toString() {
            return "FilteredMediaList(filterType=" + this.a + ")";
        }
    }

    public static final class m extends g {
        public m(int i, String str, String str2, String str3) {
            super(i, str, str2, str3);
        }
    }

    public static final class n extends xk8 {
        public final Integer a;
        public final String b;
        public final boolean c;

        public n(Integer num, String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, z);
        }

        public final Integer a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof n)) {
                return false;
            }
            n nVar = (n) obj;
            return y45.e(this.a, nVar.a) && y45.e(this.b, nVar.b) && this.c == nVar.c;
        }

        public int hashCode() {
            Integer num = this.a;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            String str = this.b;
            return ((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + Boolean.hashCode(this.c);
        }

        public String toString() {
            return "MediaDataMissingItem(mediaId=" + this.a + ", mediaPath=" + this.b + ", fromVideo=" + this.c + ")";
        }

        public n(Integer num, String str, boolean z) {
            super(null);
            this.a = num;
            this.b = str;
            this.c = z;
        }
    }

    public static final class o extends xk8 {
        public final List a;
        public final String b;
        public final boolean c;
        public final boolean d;

        public static final class a {
            public List a = y71.k();
            public String b;
            public boolean c;
            public boolean d;

            public final o a() {
                return new o(this.a, this.b, this.c, this.d, null);
            }

            public final a b(boolean z) {
                this.c = z;
                return this;
            }

            public final a c(String str) {
                this.b = str;
                return this;
            }

            public final a d(List list) {
                y45.j(list, "mediaIds");
                this.a = list;
                return this;
            }

            public final a e(boolean z) {
                this.d = z;
                return this;
            }
        }

        public o(List list, String str, boolean z, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, str, z, z2);
        }

        public final boolean a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final List c() {
            return this.a;
        }

        public final boolean d() {
            return this.d;
        }

        public o(List list, String str, boolean z, boolean z2) {
            super(null);
            this.a = list;
            this.b = str;
            this.c = z;
            this.d = z2;
        }
    }

    public static final class p extends xk8 {
        public final String a;
        public final boolean b;

        public static final class a {
            public String a;
            public boolean b;

            public final p a() {
                return new p(this.a, this.b, null);
            }

            public final a b(boolean z) {
                this.b = z;
                return this;
            }

            public final a c(String str) {
                this.a = str;
                return this;
            }
        }

        public p(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, z);
        }

        public final boolean a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public p(String str, boolean z) {
            super(null);
            this.a = str;
            this.b = z;
        }
    }

    public static final class r extends xk8 {
    }

    public static final class s extends xk8 {
    }

    public static final class t extends xk8 {
        public final int a;
        public final int b;

        public t(int i, int i2) {
            super(null);
            this.a = i;
            this.b = i2;
        }

        public final int a() {
            return this.b;
        }

        public final int b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof t)) {
                return false;
            }
            t tVar = (t) obj;
            return this.a == tVar.a && this.b == tVar.b;
        }

        public int hashCode() {
            return (Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b);
        }

        public String toString() {
            return "PlayListMediaItem(playListId=" + this.a + ", mediaId=" + this.b + ")";
        }
    }

    public static final class u extends xk8 {
        public final Long a;
        public final String b;
        public final boolean c;
        public final boolean d;
        public final String e;

        public static final class a {
            public Long a;
            public String b;
            public boolean c;
            public boolean d;
            public String e;

            public final u a() {
                return new u(this.a, this.b, this.c, this.d, this.e, null);
            }

            public final a b(boolean z) {
                this.c = z;
                return this;
            }

            public final a c(boolean z) {
                this.d = z;
                return this;
            }

            public final a d(String str) {
                this.e = str;
                return this;
            }

            public final a e(long j) {
                this.a = Long.valueOf(j);
                return this;
            }
        }

        public u(Long l, String str, boolean z, boolean z2, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            this(l, str, z, z2, str2);
        }

        public final boolean a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.e;
        }

        public final Long d() {
            return this.a;
        }

        public final boolean e() {
            return this.d;
        }

        public u(Long l, String str, boolean z, boolean z2, String str2) {
            super(null);
            this.a = l;
            this.b = str;
            this.c = z;
            this.d = z2;
            this.e = str2;
        }
    }

    public static final class v extends xk8 {
        public final long a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(long j, String str) {
            super(null);
            y45.j(str, "url");
            this.a = j;
            this.b = str;
        }

        public final long a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof v)) {
                return false;
            }
            v vVar = (v) obj;
            return this.a == vVar.a && y45.e(this.b, vVar.b);
        }

        public int hashCode() {
            return (Long.hashCode(this.a) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "PlayListOnlineElement(playListId=" + this.a + ", url=" + this.b + ")";
        }
    }

    public static final class w extends xk8 {
        public final String a;
        public final boolean b;

        public static final class a {
            public String a;
            public boolean b;

            public final w a() {
                return new w(this.a, this.b, null);
            }

            public final a b(boolean z) {
                this.b = z;
                return this;
            }

            public final a c(String str) {
                this.a = str;
                return this;
            }
        }

        public w(String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, z);
        }

        public final boolean a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public w(String str, boolean z) {
            super(null);
            this.a = str;
            this.b = z;
        }
    }

    public static final class x extends g {
        public final Uri e;
        public final String f;

        public static final class a {
            public int a;
            public String b;
            public String c;
            public String d;
            public Uri e;
            public String f;

            public final x a() {
                return new x(this.a, this.b, this.c, this.d, this.e, this.f, null);
            }

            public final a b(String str) {
                this.d = str;
                return this;
            }

            public final a c(String str) {
                this.c = str;
                return this;
            }

            public final a d(int i) {
                this.a = i;
                return this;
            }

            public final a e(String str) {
                this.f = str;
                return this;
            }

            public final a f(String str) {
                this.b = str;
                return this;
            }

            public final a g(Uri uri) {
                this.e = uri;
                return this;
            }
        }

        public x(int i, String str, String str2, String str3, Uri uri, String str4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, str, str2, str3, uri, str4);
        }

        public final String e() {
            return this.f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!y45.e(x.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.source.action.QueryAction.Single");
            x xVar = (x) obj;
            return c() == xVar.c() && y45.e(d(), xVar.d()) && y45.e(b(), xVar.b()) && y45.e(a(), xVar.a()) && y45.e(this.e, xVar.e);
        }

        public final Uri f() {
            return this.e;
        }

        public int hashCode() {
            int iC = c() * 31;
            String strD = d();
            int iHashCode = (iC + (strD != null ? strD.hashCode() : 0)) * 31;
            String strB = b();
            int iHashCode2 = (iHashCode + (strB != null ? strB.hashCode() : 0)) * 31;
            String strA = a();
            int iHashCode3 = (iHashCode2 + (strA != null ? strA.hashCode() : 0)) * 31;
            Uri uri = this.e;
            return iHashCode3 + (uri != null ? uri.hashCode() : 0);
        }

        public x(int i, String str, String str2, String str3, Uri uri, String str4) {
            super(i, str, str2, str3);
            this.e = uri;
            this.f = str4;
        }
    }

    public static final class y extends xk8 {
        public y() {
            super(null);
        }
    }

    public static final class z extends xk8 {
        public final int a;
        public final int b;

        public z(int i, int i2) {
            super(null);
            this.a = i;
            this.b = i2;
        }

        public final int a() {
            return this.a;
        }

        public final int b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof z)) {
                return false;
            }
            z zVar = (z) obj;
            return this.a == zVar.a && this.b == zVar.b;
        }

        public int hashCode() {
            return (Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b);
        }

        public String toString() {
            return "SubtitleUsageRecord(mediaId=" + this.a + ", track=" + this.b + ")";
        }
    }

    public xk8(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final class q extends xk8 {
        public final List a;
        public final nm6 b;

        public q(List list, nm6 nm6Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, (i & 2) != 0 ? nm6.a.b : nm6Var);
        }

        public final nm6 a() {
            return this.b;
        }

        public final List b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof q)) {
                return false;
            }
            q qVar = (q) obj;
            return y45.e(this.a, qVar.a) && y45.e(this.b, qVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "MediaListByPaths(paths=" + this.a + ", mediaType=" + this.b + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(List list, nm6 nm6Var) {
            super(null);
            y45.j(list, "paths");
            y45.j(nm6Var, "mediaType");
            this.a = list;
            this.b = nm6Var;
        }
    }

    public xk8() {
    }
}
