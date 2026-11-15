package androidx.compose.ui.text;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class AnnotatedString implements CharSequence {

    public static final b f5699e = new b(null);

    private static final androidx.compose.runtime.saveable.d f5700f = SaversKt.h();

    private final String f5701a;

    private final List f5702b;

    private final List f5703c;

    private final List f5704d;

    public static final class a implements Appendable {

        private final StringBuilder f5705a;

        private final List f5706b;

        private final List f5707c;

        private final List f5708d;

        private final List f5709e;

        public a() {
            this(0, 1, null);
        }

        public final void a(r rVar, int i10, int i11) {
            this.f5707c.add(new C0045a(rVar, i10, i11, null, 8, null));
        }

        public final void b(x xVar, int i10, int i11) {
            this.f5706b.add(new C0045a(xVar, i10, i11, null, 8, null));
        }

        @Override
        public a append(char c10) {
            this.f5705a.append(c10);
            return this;
        }

        @Override
        public a append(CharSequence charSequence) {
            if (charSequence instanceof AnnotatedString) {
                f((AnnotatedString) charSequence);
            } else {
                this.f5705a.append(charSequence);
            }
            return this;
        }

        @Override
        public a append(CharSequence charSequence, int i10, int i11) {
            if (charSequence instanceof AnnotatedString) {
                g((AnnotatedString) charSequence, i10, i11);
            } else {
                this.f5705a.append(charSequence, i10, i11);
            }
            return this;
        }

        public final void f(AnnotatedString annotatedString) {
            int length = this.f5705a.length();
            this.f5705a.append(annotatedString.i());
            List listH = annotatedString.h();
            if (listH != null) {
                int size = listH.size();
                for (int i10 = 0; i10 < size; i10++) {
                    c cVar = (c) listH.get(i10);
                    b((x) cVar.e(), cVar.f() + length, cVar.d() + length);
                }
            }
            List listF = annotatedString.f();
            if (listF != null) {
                int size2 = listF.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    c cVar2 = (c) listF.get(i11);
                    a((r) cVar2.e(), cVar2.f() + length, cVar2.d() + length);
                }
            }
            List listB = annotatedString.b();
            if (listB != null) {
                int size3 = listB.size();
                for (int i12 = 0; i12 < size3; i12++) {
                    c cVar3 = (c) listB.get(i12);
                    this.f5708d.add(new C0045a(cVar3.e(), cVar3.f() + length, cVar3.d() + length, cVar3.g()));
                }
            }
        }

        public final void g(AnnotatedString annotatedString, int i10, int i11) {
            int length = this.f5705a.length();
            this.f5705a.append((CharSequence) annotatedString.i(), i10, i11);
            List listJ = d.j(annotatedString, i10, i11);
            if (listJ != null) {
                int size = listJ.size();
                for (int i12 = 0; i12 < size; i12++) {
                    c cVar = (c) listJ.get(i12);
                    b((x) cVar.e(), cVar.f() + length, cVar.d() + length);
                }
            }
            List listI = d.i(annotatedString, i10, i11);
            if (listI != null) {
                int size2 = listI.size();
                for (int i13 = 0; i13 < size2; i13++) {
                    c cVar2 = (c) listI.get(i13);
                    a((r) cVar2.e(), cVar2.f() + length, cVar2.d() + length);
                }
            }
            List listH = d.h(annotatedString, i10, i11);
            if (listH != null) {
                int size3 = listH.size();
                for (int i14 = 0; i14 < size3; i14++) {
                    c cVar3 = (c) listH.get(i14);
                    this.f5708d.add(new C0045a(cVar3.e(), cVar3.f() + length, cVar3.d() + length, cVar3.g()));
                }
            }
        }

        public final AnnotatedString h() {
            String string = this.f5705a.toString();
            List list = this.f5706b;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(((C0045a) list.get(i10)).a(this.f5705a.length()));
            }
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            List list2 = this.f5707c;
            ArrayList arrayList2 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                arrayList2.add(((C0045a) list2.get(i11)).a(this.f5705a.length()));
            }
            if (arrayList2.isEmpty()) {
                arrayList2 = null;
            }
            List list3 = this.f5708d;
            ArrayList arrayList3 = new ArrayList(list3.size());
            int size3 = list3.size();
            for (int i12 = 0; i12 < size3; i12++) {
                arrayList3.add(((C0045a) list3.get(i12)).a(this.f5705a.length()));
            }
            return new AnnotatedString(string, arrayList, arrayList2, arrayList3.isEmpty() ? null : arrayList3);
        }

        public a(int i10) {
            this.f5705a = new StringBuilder(i10);
            this.f5706b = new ArrayList();
            this.f5707c = new ArrayList();
            this.f5708d = new ArrayList();
            this.f5709e = new ArrayList();
        }

        private static final class C0045a {

            private final Object f5710a;

            private final int f5711b;

            private int f5712c;

            private final String f5713d;

            public C0045a(Object obj, int i10, int i11, String str) {
                this.f5710a = obj;
                this.f5711b = i10;
                this.f5712c = i11;
                this.f5713d = str;
            }

            public final c a(int i10) {
                int i11 = this.f5712c;
                if (i11 != Integer.MIN_VALUE) {
                    i10 = i11;
                }
                if (i10 != Integer.MIN_VALUE) {
                    return new c(this.f5710a, this.f5711b, i10, this.f5713d);
                }
                throw new IllegalStateException("Item.end should be set first");
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0045a)) {
                    return false;
                }
                C0045a c0045a = (C0045a) obj;
                return Intrinsics.c(this.f5710a, c0045a.f5710a) && this.f5711b == c0045a.f5711b && this.f5712c == c0045a.f5712c && Intrinsics.c(this.f5713d, c0045a.f5713d);
            }

            public int hashCode() {
                Object obj = this.f5710a;
                return ((((((obj == null ? 0 : obj.hashCode()) * 31) + this.f5711b) * 31) + this.f5712c) * 31) + this.f5713d.hashCode();
            }

            public String toString() {
                return "MutableRange(item=" + this.f5710a + ", start=" + this.f5711b + ", end=" + this.f5712c + ", tag=" + this.f5713d + ')';
            }

            public C0045a(Object obj, int i10, int i11, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
                this(obj, i10, (i12 & 4) != 0 ? Integer.MIN_VALUE : i11, (i12 & 8) != 0 ? "" : str);
            }
        }

        public a(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 16 : i10);
        }

        public a(AnnotatedString annotatedString) {
            this(0, 1, null);
            f(annotatedString);
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public AnnotatedString(String str, List list, List list2, List list3) {
        List listI0;
        this.f5701a = str;
        this.f5702b = list;
        this.f5703c = list2;
        this.f5704d = list3;
        if (list2 == null || (listI0 = CollectionsKt.I0(list2, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                return ComparisonsKt.d(Integer.valueOf(((AnnotatedString.c) t10).f()), Integer.valueOf(((AnnotatedString.c) t11).f()));
            }
        })) == null) {
            return;
        }
        int size = listI0.size();
        int iD = -1;
        for (int i10 = 0; i10 < size; i10++) {
            c cVar = (c) listI0.get(i10);
            if (cVar.f() < iD) {
                throw new IllegalArgumentException("ParagraphStyle should not overlap");
            }
            if (cVar.d() > this.f5701a.length()) {
                throw new IllegalArgumentException(("ParagraphStyle range [" + cVar.f() + ", " + cVar.d() + ") is out of boundary").toString());
            }
            iD = cVar.d();
        }
    }

    public char a(int i10) {
        return this.f5701a.charAt(i10);
    }

    public final List b() {
        return this.f5704d;
    }

    public int c() {
        return this.f5701a.length();
    }

    @Override
    public final char charAt(int i10) {
        return a(i10);
    }

    public final List d(int i10, int i11) {
        List listL;
        List list = this.f5704d;
        if (list != null) {
            listL = new ArrayList(list.size());
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                Object obj = list.get(i12);
                c cVar = (c) obj;
                if ((cVar.e() instanceof f) && d.k(i10, i11, cVar.f(), cVar.d())) {
                    listL.add(obj);
                }
            }
        } else {
            listL = CollectionsKt.l();
        }
        Intrinsics.f(listL, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.LinkAnnotation>>");
        return listL;
    }

    public final List e() {
        List list = this.f5703c;
        return list == null ? CollectionsKt.l() : list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotatedString)) {
            return false;
        }
        AnnotatedString annotatedString = (AnnotatedString) obj;
        return Intrinsics.c(this.f5701a, annotatedString.f5701a) && Intrinsics.c(this.f5702b, annotatedString.f5702b) && Intrinsics.c(this.f5703c, annotatedString.f5703c) && Intrinsics.c(this.f5704d, annotatedString.f5704d);
    }

    public final List f() {
        return this.f5703c;
    }

    public final List g() {
        List list = this.f5702b;
        return list == null ? CollectionsKt.l() : list;
    }

    public final List h() {
        return this.f5702b;
    }

    public int hashCode() {
        int iHashCode = this.f5701a.hashCode() * 31;
        List list = this.f5702b;
        int iHashCode2 = (iHashCode + (list != null ? list.hashCode() : 0)) * 31;
        List list2 = this.f5703c;
        int iHashCode3 = (iHashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31;
        List list3 = this.f5704d;
        return iHashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String i() {
        return this.f5701a;
    }

    public final List j(int i10, int i11) {
        List listL;
        List list = this.f5704d;
        if (list != null) {
            listL = new ArrayList(list.size());
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                Object obj = list.get(i12);
                c cVar = (c) obj;
                if ((cVar.e() instanceof f0) && d.k(i10, i11, cVar.f(), cVar.d())) {
                    listL.add(obj);
                }
            }
        } else {
            listL = CollectionsKt.l();
        }
        Intrinsics.f(listL, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.TtsAnnotation>>");
        return listL;
    }

    public final List k(int i10, int i11) {
        List listL;
        List list = this.f5704d;
        if (list != null) {
            listL = new ArrayList(list.size());
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                Object obj = list.get(i12);
                c cVar = (c) obj;
                if ((cVar.e() instanceof g0) && d.k(i10, i11, cVar.f(), cVar.d())) {
                    listL.add(obj);
                }
            }
        } else {
            listL = CollectionsKt.l();
        }
        Intrinsics.f(listL, "null cannot be cast to non-null type kotlin.collections.List<androidx.compose.ui.text.AnnotatedString.Range<androidx.compose.ui.text.UrlAnnotation>>");
        return listL;
    }

    public final boolean l(AnnotatedString annotatedString) {
        return Intrinsics.c(this.f5704d, annotatedString.f5704d);
    }

    @Override
    public final int length() {
        return c();
    }

    public final boolean m(int i10, int i11) {
        List list = this.f5704d;
        if (list == null) {
            return false;
        }
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            c cVar = (c) list.get(i12);
            if ((cVar.e() instanceof f) && d.k(i10, i11, cVar.f(), cVar.d())) {
                return true;
            }
        }
        return false;
    }

    public final AnnotatedString n(AnnotatedString annotatedString) {
        a aVar = new a(this);
        aVar.f(annotatedString);
        return aVar.h();
    }

    @Override
    public AnnotatedString subSequence(int i10, int i11) {
        if (i10 <= i11) {
            if (i10 == 0 && i11 == this.f5701a.length()) {
                return this;
            }
            String strSubstring = this.f5701a.substring(i10, i11);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return new AnnotatedString(strSubstring, d.g(this.f5702b, i10, i11), d.g(this.f5703c, i10, i11), d.g(this.f5704d, i10, i11));
        }
        throw new IllegalArgumentException(("start (" + i10 + ") should be less or equal to end (" + i11 + ')').toString());
    }

    public final AnnotatedString p(long j10) {
        return subSequence(b0.j(j10), b0.i(j10));
    }

    @Override
    public String toString() {
        return this.f5701a;
    }

    public static final class c {

        private final Object f5714a;

        private final int f5715b;

        private final int f5716c;

        private final String f5717d;

        public c(Object obj, int i10, int i11, String str) {
            this.f5714a = obj;
            this.f5715b = i10;
            this.f5716c = i11;
            this.f5717d = str;
            if (i10 > i11) {
                throw new IllegalArgumentException("Reversed range is not supported");
            }
        }

        public final Object a() {
            return this.f5714a;
        }

        public final int b() {
            return this.f5715b;
        }

        public final int c() {
            return this.f5716c;
        }

        public final int d() {
            return this.f5716c;
        }

        public final Object e() {
            return this.f5714a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.c(this.f5714a, cVar.f5714a) && this.f5715b == cVar.f5715b && this.f5716c == cVar.f5716c && Intrinsics.c(this.f5717d, cVar.f5717d);
        }

        public final int f() {
            return this.f5715b;
        }

        public final String g() {
            return this.f5717d;
        }

        public int hashCode() {
            Object obj = this.f5714a;
            return ((((((obj == null ? 0 : obj.hashCode()) * 31) + this.f5715b) * 31) + this.f5716c) * 31) + this.f5717d.hashCode();
        }

        public String toString() {
            return "Range(item=" + this.f5714a + ", start=" + this.f5715b + ", end=" + this.f5716c + ", tag=" + this.f5717d + ')';
        }

        public c(Object obj, int i10, int i11) {
            this(obj, i10, i11, "");
        }
    }

    public AnnotatedString(String str, List list, List list2, List list3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : list, (i10 & 4) != 0 ? null : list2, (i10 & 8) != 0 ? null : list3);
    }

    public AnnotatedString(String str, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? CollectionsKt.l() : list, (i10 & 4) != 0 ? CollectionsKt.l() : list2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AnnotatedString(String str, List list, List list2) {
        List list3 = list;
        List list4 = list2;
        this(str, list3.isEmpty() ? null : list3, list4.isEmpty() ? null : list4, null);
    }
}
