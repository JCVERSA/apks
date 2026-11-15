package androidx.compose.ui.text.style;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class i {

    public static final a f6100b = new a(null);

    private static final i f6101c = new i(0);

    private static final i f6102d = new i(1);

    private static final i f6103e = new i(2);

    private final int f6104a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i a(List list) {
            Integer numValueOf = 0;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                numValueOf = Integer.valueOf(numValueOf.intValue() | ((i) list.get(i10)).e());
            }
            return new i(numValueOf.intValue());
        }

        public final i b() {
            return i.f6103e;
        }

        public final i c() {
            return i.f6101c;
        }

        public final i d() {
            return i.f6102d;
        }

        private a() {
        }
    }

    public i(int i10) {
        this.f6104a = i10;
    }

    public final boolean d(i iVar) {
        int i10 = this.f6104a;
        return (iVar.f6104a | i10) == i10;
    }

    public final int e() {
        return this.f6104a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && this.f6104a == ((i) obj).f6104a;
    }

    public int hashCode() {
        return this.f6104a;
    }

    public String toString() {
        if (this.f6104a == 0) {
            return "TextDecoration.None";
        }
        ArrayList arrayList = new ArrayList();
        if ((this.f6104a & f6102d.f6104a) != 0) {
            arrayList.add("Underline");
        }
        if ((this.f6104a & f6103e.f6104a) != 0) {
            arrayList.add("LineThrough");
        }
        if (arrayList.size() == 1) {
            return "TextDecoration." + ((String) arrayList.get(0));
        }
        return "TextDecoration[" + q0.a.d(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
