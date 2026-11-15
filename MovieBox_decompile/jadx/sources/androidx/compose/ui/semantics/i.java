package androidx.compose.ui.semantics;

import androidx.compose.ui.platform.c1;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public final class i implements n, Iterable, KMappedMarker {

    private final Map f5693a = new LinkedHashMap();

    private boolean f5694b;

    private boolean f5695c;

    @Override
    public void a(SemanticsPropertyKey semanticsPropertyKey, Object obj) {
        if (!(obj instanceof a) || !e(semanticsPropertyKey)) {
            this.f5693a.put(semanticsPropertyKey, obj);
            return;
        }
        Object obj2 = this.f5693a.get(semanticsPropertyKey);
        Intrinsics.f(obj2, "null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>");
        a aVar = (a) obj2;
        Map map = this.f5693a;
        a aVar2 = (a) obj;
        String strB = aVar2.b();
        if (strB == null) {
            strB = aVar.b();
        }
        Function functionA = aVar2.a();
        if (functionA == null) {
            functionA = aVar.a();
        }
        map.put(semanticsPropertyKey, new a(strB, functionA));
    }

    public final void c(i iVar) {
        if (iVar.f5694b) {
            this.f5694b = true;
        }
        if (iVar.f5695c) {
            this.f5695c = true;
        }
        for (Map.Entry entry : iVar.f5693a.entrySet()) {
            SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) entry.getKey();
            Object value = entry.getValue();
            if (!this.f5693a.containsKey(semanticsPropertyKey)) {
                this.f5693a.put(semanticsPropertyKey, value);
            } else if (value instanceof a) {
                Object obj = this.f5693a.get(semanticsPropertyKey);
                Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>");
                a aVar = (a) obj;
                Map map = this.f5693a;
                String strB = aVar.b();
                if (strB == null) {
                    strB = ((a) value).b();
                }
                Function functionA = aVar.a();
                if (functionA == null) {
                    functionA = ((a) value).a();
                }
                map.put(semanticsPropertyKey, new a(strB, functionA));
            }
        }
    }

    public final boolean e(SemanticsPropertyKey semanticsPropertyKey) {
        return this.f5693a.containsKey(semanticsPropertyKey);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Intrinsics.c(this.f5693a, iVar.f5693a) && this.f5694b == iVar.f5694b && this.f5695c == iVar.f5695c;
    }

    public final boolean f() {
        Set setKeySet = this.f5693a.keySet();
        if ((setKeySet instanceof Collection) && setKeySet.isEmpty()) {
            return false;
        }
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            if (((SemanticsPropertyKey) it.next()).b()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.f5693a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f5694b)) * 31) + androidx.compose.foundation.e.a(this.f5695c);
    }

    public final i i() {
        i iVar = new i();
        iVar.f5694b = this.f5694b;
        iVar.f5695c = this.f5695c;
        iVar.f5693a.putAll(this.f5693a);
        return iVar;
    }

    @Override
    public Iterator iterator() {
        return this.f5693a.entrySet().iterator();
    }

    public final Object j(SemanticsPropertyKey semanticsPropertyKey) {
        Object obj = this.f5693a.get(semanticsPropertyKey);
        if (obj != null) {
            return obj;
        }
        throw new IllegalStateException("Key not present: " + semanticsPropertyKey + " - consider getOrElse or getOrNull");
    }

    public final Object l(SemanticsPropertyKey semanticsPropertyKey, Function0 function0) {
        Object obj = this.f5693a.get(semanticsPropertyKey);
        return obj == null ? function0.invoke() : obj;
    }

    public final Object m(SemanticsPropertyKey semanticsPropertyKey, Function0 function0) {
        Object obj = this.f5693a.get(semanticsPropertyKey);
        return obj == null ? function0.invoke() : obj;
    }

    public final boolean n() {
        return this.f5695c;
    }

    public final boolean o() {
        return this.f5694b;
    }

    public final void p(i iVar) {
        for (Map.Entry entry : iVar.f5693a.entrySet()) {
            SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) entry.getKey();
            Object value = entry.getValue();
            Object obj = this.f5693a.get(semanticsPropertyKey);
            Intrinsics.f(semanticsPropertyKey, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsPropertyKey<kotlin.Any?>");
            Object objC = semanticsPropertyKey.c(obj, value);
            if (objC != null) {
                this.f5693a.put(semanticsPropertyKey, objC);
            }
        }
    }

    public final void q(boolean z10) {
        this.f5695c = z10;
    }

    public final void r(boolean z10) {
        this.f5694b = z10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        String str = "";
        if (this.f5694b) {
            sb2.append("");
            sb2.append("mergeDescendants=true");
            str = ", ";
        }
        if (this.f5695c) {
            sb2.append(str);
            sb2.append("isClearingSemantics=true");
            str = ", ";
        }
        for (Map.Entry entry : this.f5693a.entrySet()) {
            SemanticsPropertyKey semanticsPropertyKey = (SemanticsPropertyKey) entry.getKey();
            Object value = entry.getValue();
            sb2.append(str);
            sb2.append(semanticsPropertyKey.a());
            sb2.append(" : ");
            sb2.append(value);
            str = ", ";
        }
        return c1.a(this, null) + "{ " + ((Object) sb2) + " }";
    }
}
