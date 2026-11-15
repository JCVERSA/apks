package androidx.room.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class TableInfoKt {
    private static final boolean a(String str) {
        if (str.length() == 0) {
            return false;
        }
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            int i13 = i12 + 1;
            if (i12 == 0 && cCharAt != '(') {
                return false;
            }
            if (cCharAt == '(') {
                i11++;
            } else if (cCharAt == ')' && (i11 = i11 - 1) == 0 && i12 != str.length() - 1) {
                return false;
            }
            i10++;
            i12 = i13;
        }
        return i11 == 0;
    }

    public static final boolean b(String current, String str) {
        Intrinsics.h(current, "current");
        if (Intrinsics.c(current, str)) {
            return true;
        }
        if (!a(current)) {
            return false;
        }
        String strSubstring = current.substring(1, current.length() - 1);
        Intrinsics.g(strSubstring, "substring(...)");
        return Intrinsics.c(StringsKt.n1(strSubstring).toString(), str);
    }

    public static final boolean c(m.a aVar, Object obj) {
        Intrinsics.h(aVar, "<this>");
        if (aVar == obj) {
            return true;
        }
        if (!(obj instanceof m.a)) {
            return false;
        }
        m.a aVar2 = (m.a) obj;
        if (aVar.a() != aVar2.a() || !Intrinsics.c(aVar.f14466a, aVar2.f14466a) || aVar.f14468c != aVar2.f14468c) {
            return false;
        }
        String str = aVar.f14470e;
        String str2 = aVar2.f14470e;
        if (aVar.f14471f == 1 && aVar2.f14471f == 2 && str != null && !b(str, str2)) {
            return false;
        }
        if (aVar.f14471f == 2 && aVar2.f14471f == 1 && str2 != null && !b(str2, str)) {
            return false;
        }
        int i10 = aVar.f14471f;
        return (i10 == 0 || i10 != aVar2.f14471f || (str == null ? str2 == null : b(str, str2))) && aVar.f14472g == aVar2.f14472g;
    }

    public static final boolean d(m.c cVar, Object obj) {
        Intrinsics.h(cVar, "<this>");
        if (cVar == obj) {
            return true;
        }
        if (!(obj instanceof m.c)) {
            return false;
        }
        m.c cVar2 = (m.c) obj;
        if (Intrinsics.c(cVar.f14473a, cVar2.f14473a) && Intrinsics.c(cVar.f14474b, cVar2.f14474b) && Intrinsics.c(cVar.f14475c, cVar2.f14475c) && Intrinsics.c(cVar.f14476d, cVar2.f14476d)) {
            return Intrinsics.c(cVar.f14477e, cVar2.f14477e);
        }
        return false;
    }

    public static final boolean e(m.d dVar, Object obj) {
        Intrinsics.h(dVar, "<this>");
        if (dVar == obj) {
            return true;
        }
        if (!(obj instanceof m.d)) {
            return false;
        }
        m.d dVar2 = (m.d) obj;
        if (dVar.f14480b == dVar2.f14480b && Intrinsics.c(dVar.f14481c, dVar2.f14481c) && Intrinsics.c(dVar.f14482d, dVar2.f14482d)) {
            return StringsKt.W(dVar.f14479a, "index_", false, 2, null) ? StringsKt.W(dVar2.f14479a, "index_", false, 2, null) : Intrinsics.c(dVar.f14479a, dVar2.f14479a);
        }
        return false;
    }

    public static final boolean f(m mVar, Object obj) {
        Set set;
        Intrinsics.h(mVar, "<this>");
        if (mVar == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar2 = (m) obj;
        if (!Intrinsics.c(mVar.f14461a, mVar2.f14461a) || !Intrinsics.c(mVar.f14462b, mVar2.f14462b) || !Intrinsics.c(mVar.f14463c, mVar2.f14463c)) {
            return false;
        }
        Set set2 = mVar.f14464d;
        if (set2 == null || (set = mVar2.f14464d) == null) {
            return true;
        }
        return Intrinsics.c(set2, set);
    }

    public static final String g(Collection collection) {
        Intrinsics.h(collection, "collection");
        if (collection.isEmpty()) {
            return " }";
        }
        return StringsKt.j(CollectionsKt.s0(collection, ",\n", "\n", "\n", 0, null, null, 56, null), null, 1, null) + "},";
    }

    public static final int h(m.a aVar) {
        Intrinsics.h(aVar, "<this>");
        return (((((aVar.f14466a.hashCode() * 31) + aVar.f14472g) * 31) + (aVar.f14468c ? 1231 : 1237)) * 31) + aVar.f14469d;
    }

    public static final int i(m.c cVar) {
        Intrinsics.h(cVar, "<this>");
        return (((((((cVar.f14473a.hashCode() * 31) + cVar.f14474b.hashCode()) * 31) + cVar.f14475c.hashCode()) * 31) + cVar.f14476d.hashCode()) * 31) + cVar.f14477e.hashCode();
    }

    public static final int j(m.d dVar) {
        Intrinsics.h(dVar, "<this>");
        return ((((((StringsKt.W(dVar.f14479a, "index_", false, 2, null) ? -1184239155 : dVar.f14479a.hashCode()) * 31) + (dVar.f14480b ? 1 : 0)) * 31) + dVar.f14481c.hashCode()) * 31) + dVar.f14482d.hashCode();
    }

    public static final int k(m mVar) {
        Intrinsics.h(mVar, "<this>");
        return (((mVar.f14461a.hashCode() * 31) + mVar.f14462b.hashCode()) * 31) + mVar.f14463c.hashCode();
    }

    private static final void l(Collection collection) {
        StringsKt.j(CollectionsKt.s0(collection, ",", null, null, 0, null, null, 62, null), null, 1, null);
        StringsKt.j(" }", null, 1, null);
    }

    private static final void m(Collection collection) {
        StringsKt.j(CollectionsKt.s0(collection, ",", null, null, 0, null, null, 62, null), null, 1, null);
        StringsKt.j("},", null, 1, null);
    }

    public static final String n(m.a aVar) {
        Intrinsics.h(aVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |Column {\n            |   name = '");
        sb2.append(aVar.f14466a);
        sb2.append("',\n            |   type = '");
        sb2.append(aVar.f14467b);
        sb2.append("',\n            |   affinity = '");
        sb2.append(aVar.f14472g);
        sb2.append("',\n            |   notNull = '");
        sb2.append(aVar.f14468c);
        sb2.append("',\n            |   primaryKeyPosition = '");
        sb2.append(aVar.f14469d);
        sb2.append("',\n            |   defaultValue = '");
        String str = aVar.f14470e;
        if (str == null) {
            str = "undefined";
        }
        sb2.append(str);
        sb2.append("'\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }

    public static final String o(m.c cVar) {
        Intrinsics.h(cVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |ForeignKey {\n            |   referenceTable = '");
        sb2.append(cVar.f14473a);
        sb2.append("',\n            |   onDelete = '");
        sb2.append(cVar.f14474b);
        sb2.append("',\n            |   onUpdate = '");
        sb2.append(cVar.f14475c);
        sb2.append("',\n            |   columnNames = {");
        m(CollectionsKt.H0(cVar.f14476d));
        Unit unit = Unit.f64096a;
        sb2.append(unit);
        sb2.append("\n            |   referenceColumnNames = {");
        l(CollectionsKt.H0(cVar.f14477e));
        sb2.append(unit);
        sb2.append("\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }

    public static final String p(m.d dVar) {
        Intrinsics.h(dVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |Index {\n            |   name = '");
        sb2.append(dVar.f14479a);
        sb2.append("',\n            |   unique = '");
        sb2.append(dVar.f14480b);
        sb2.append("',\n            |   columns = {");
        m(dVar.f14481c);
        Unit unit = Unit.f64096a;
        sb2.append(unit);
        sb2.append("\n            |   orders = {");
        l(dVar.f14482d);
        sb2.append(unit);
        sb2.append("\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }

    public static final String q(m mVar) {
        List listL;
        Intrinsics.h(mVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |TableInfo {\n            |    name = '");
        sb2.append(mVar.f14461a);
        sb2.append("',\n            |    columns = {");
        sb2.append(g(CollectionsKt.I0(mVar.f14462b.values(), new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                return ComparisonsKt.d(((m.a) t10).f14466a, ((m.a) t11).f14466a);
            }
        })));
        sb2.append("\n            |    foreignKeys = {");
        sb2.append(g(mVar.f14463c));
        sb2.append("\n            |    indices = {");
        Set set = mVar.f14464d;
        if (set == null || (listL = CollectionsKt.I0(set, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                return ComparisonsKt.d(((m.d) t10).f14479a, ((m.d) t11).f14479a);
            }
        })) == null) {
            listL = CollectionsKt.l();
        }
        sb2.append(g(listL));
        sb2.append("\n            |}\n        ");
        return StringsKt.p(sb2.toString(), null, 1, null);
    }
}
