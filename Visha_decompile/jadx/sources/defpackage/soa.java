package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class soa {
    public String a;
    public String b;

    public soa(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final void a(String str) {
        this.b = str;
    }

    public final void b(String str) {
        this.a = str;
    }

    public soa(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }
}
