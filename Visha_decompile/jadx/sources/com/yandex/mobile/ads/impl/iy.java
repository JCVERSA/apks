package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.List;

public abstract class iy {

    public static final class a extends iy {
        private final String a;
        private final String b;
        private final String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, String str2, String str3) {
            super(0);
            y45.j(str, "name");
            y45.j(str2, "format");
            y45.j(str3, TtmlNode.ATTR_ID);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
            return this.b;
        }

        public final String b() {
            return this.c;
        }

        public final String c() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + v3.a(this.b, this.a.hashCode() * 31, 31);
        }

        public final String toString() {
            return "AdUnit(name=" + this.a + ", format=" + this.b + ", id=" + this.c + ")";
        }
    }

    public static final class b extends iy {
        public static final b a = new b();

        private b() {
            super(0);
        }
    }

    public static final class c extends iy {
        private final String a;
        private final a b;

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.iy$c$a[], still in use, count: 1, list:
          (r0v1 com.yandex.mobile.ads.impl.iy$c$a[]) from 0x000d: INVOKE (r0v1 com.yandex.mobile.ads.impl.iy$c$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class a {
            TEST_MODE;

            static {
                kotlin.enums.a.a(aVarArr);
            }

            private a() {
                super("TEST_MODE", 0);
            }

            public static a valueOf(String str) {
                return (a) Enum.valueOf(a.class, str);
            }

            public static a[] values() {
                return (a[]) c.clone();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c() {
            super(0);
            a aVar = a.TEST_MODE;
            y45.j("Enable Test mode", "text");
            y45.j(aVar, "actionType");
            this.a = "Enable Test mode";
            this.b = aVar;
        }

        public final a a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return y45.e(this.a, cVar.a) && this.b == cVar.b;
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Button(text=" + this.a + ", actionType=" + this.b + ")";
        }
    }

    public static final class d extends iy {
        public static final d a = new d();

        private d() {
            super(0);
        }
    }

    public static final class e extends iy {
        private final String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str) {
            super(0);
            y45.j(str, "text");
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && y45.e(this.a, ((e) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Header(text=" + this.a + ")";
        }
    }

    public static final class f extends iy {
        private final String a;
        private final cy b;
        private final zw c;

        public f(String str, cy cyVar) {
            this(str, cyVar, null);
        }

        public final String a() {
            return this.a;
        }

        public final cy b() {
            return this.b;
        }

        public final zw c() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return y45.e(this.a, fVar.a) && y45.e(this.b, fVar.b) && y45.e(this.c, fVar.c);
        }

        public final int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            cy cyVar = this.b;
            int iHashCode2 = (iHashCode + (cyVar == null ? 0 : cyVar.hashCode())) * 31;
            zw zwVar = this.c;
            return iHashCode2 + (zwVar != null ? zwVar.hashCode() : 0);
        }

        public final String toString() {
            return "KeyValue(title=" + this.a + ", subtitle=" + this.b + ", text=" + this.c + ")";
        }

        public f(String str, cy cyVar, zw zwVar) {
            super(0);
            this.a = str;
            this.b = cyVar;
            this.c = zwVar;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public f(String str, String str2) {
            this(str, new cy(str2, 0, null, 0, 14));
            y45.j(str, "title");
            y45.j(str2, "text");
        }
    }

    public static final class h extends iy {
        private final String a;
        private final a b;
        private final boolean c;

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.iy$h$a[], still in use, count: 1, list:
          (r0v1 com.yandex.mobile.ads.impl.iy$h$a[]) from 0x000d: INVOKE (r0v1 com.yandex.mobile.ads.impl.iy$h$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
        	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        public static final class a {
            DEBUG_ERROR_INDICATOR;

            static {
                kotlin.enums.a.a(aVarArr);
            }

            private a() {
                super("DEBUG_ERROR_INDICATOR", 0);
            }

            public static a valueOf(String str) {
                return (a) Enum.valueOf(a.class, str);
            }

            public static a[] values() {
                return (a[]) c.clone();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(boolean z) {
            super(0);
            a aVar = a.DEBUG_ERROR_INDICATOR;
            y45.j("Debug Error Indicator", "text");
            y45.j(aVar, "switchType");
            this.a = "Debug Error Indicator";
            this.b = aVar;
            this.c = z;
        }

        public final boolean a() {
            return this.c;
        }

        public final a b() {
            return this.b;
        }

        public final String c() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return y45.e(this.a, hVar.a) && this.b == hVar.b && this.c == hVar.c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "Switch(text=" + this.a + ", switchType=" + this.b + ", initialState=" + this.c + ")";
        }

        @Override
        public final boolean a(Object obj) {
            if (obj instanceof h) {
                h hVar = (h) obj;
                if (y45.e(this.a, hVar.a) && this.b == hVar.b) {
                    return true;
                }
            }
            return false;
        }
    }

    private iy() {
    }

    public boolean a(Object obj) {
        return equals(obj);
    }

    public iy(int i) {
        this();
    }

    public static final class g extends iy {
        private final String a;
        private final String b;
        private final cy c;
        private final zw d;
        private final String e;
        private final String f;
        private final String g;
        private final List<px> h;
        private final List<ly> i;
        private final sw j;
        private final String k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, String str2, cy cyVar, zw zwVar, String str3, String str4, String str5, List<px> list, List<ly> list2, sw swVar, String str6) {
            super(0);
            y45.j(str, "name");
            y45.j(zwVar, "infoSecond");
            y45.j(swVar, "type");
            this.a = str;
            this.b = str2;
            this.c = cyVar;
            this.d = zwVar;
            this.e = str3;
            this.f = str4;
            this.g = str5;
            this.h = list;
            this.i = list2;
            this.j = swVar;
            this.k = str6;
        }

        public final String a() {
            return this.f;
        }

        public final List<ly> b() {
            return this.i;
        }

        public final cy c() {
            return this.c;
        }

        public final zw d() {
            return this.d;
        }

        public final String e() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return y45.e(this.a, gVar.a) && y45.e(this.b, gVar.b) && y45.e(this.c, gVar.c) && y45.e(this.d, gVar.d) && y45.e(this.e, gVar.e) && y45.e(this.f, gVar.f) && y45.e(this.g, gVar.g) && y45.e(this.h, gVar.h) && y45.e(this.i, gVar.i) && this.j == gVar.j && y45.e(this.k, gVar.k);
        }

        public final String f() {
            return this.a;
        }

        public final String g() {
            return this.g;
        }

        public final List<px> h() {
            return this.h;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            cy cyVar = this.c;
            int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (cyVar == null ? 0 : cyVar.hashCode())) * 31)) * 31;
            String str2 = this.e;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f;
            int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.g;
            int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
            List<px> list = this.h;
            int iHashCode7 = (iHashCode6 + (list == null ? 0 : list.hashCode())) * 31;
            List<ly> list2 = this.i;
            int iHashCode8 = (this.j.hashCode() + ((iHashCode7 + (list2 == null ? 0 : list2.hashCode())) * 31)) * 31;
            String str5 = this.k;
            return iHashCode8 + (str5 != null ? str5.hashCode() : 0);
        }

        public final sw i() {
            return this.j;
        }

        public final String j() {
            return this.e;
        }

        public final String toString() {
            return "MediationAdapter(name=" + this.a + ", logoUrl=" + this.b + ", infoFirst=" + this.c + ", infoSecond=" + this.d + ", waringMessage=" + this.e + ", adUnitId=" + this.f + ", networkAdUnitIdName=" + this.g + ", parameters=" + this.h + ", cpmFloors=" + this.i + ", type=" + this.j + ", sdk=" + this.k + ")";
        }

        public g(String str, String str2, cy cyVar, zw zwVar, String str3, String str4, String str5, List list, List list2, sw swVar, String str6, int i) {
            this(str, str2, cyVar, zwVar, str3, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : list, (i & 256) != 0 ? null : list2, (i & 512) != 0 ? sw.e : swVar, (i & 1024) != 0 ? null : str6);
        }
    }
}
