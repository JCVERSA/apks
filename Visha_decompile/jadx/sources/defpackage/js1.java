package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class js1 {
    public final boolean a;
    public final boolean b;

    public js1(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public final boolean a() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof js1)) {
            return false;
        }
        js1 js1Var = (js1) obj;
        return this.a == js1Var.a && this.b == js1Var.b;
    }

    public int hashCode() {
        return (Boolean.hashCode(this.a) * 31) + Boolean.hashCode(this.b);
    }

    public String toString() {
        return "DataEngineConfig(isDebug=" + this.a + ", useHandleThread=" + this.b + ")";
    }

    public js1(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2);
    }
}
