package androidx.compose.ui.semantics;

import kotlin.Function;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final String f5643a;

    private final Function f5644b;

    public a(String str, Function function) {
        this.f5643a = str;
        this.f5644b = function;
    }

    public final Function a() {
        return this.f5644b;
    }

    public final String b() {
        return this.f5643a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f5643a, aVar.f5643a) && Intrinsics.c(this.f5644b, aVar.f5644b);
    }

    public int hashCode() {
        String str = this.f5643a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Function function = this.f5644b;
        return iHashCode + (function != null ? function.hashCode() : 0);
    }

    public String toString() {
        return "AccessibilityAction(label=" + this.f5643a + ", action=" + this.f5644b + ')';
    }
}
