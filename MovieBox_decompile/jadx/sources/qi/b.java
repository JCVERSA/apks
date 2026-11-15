package qi;

import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final String f69657a;

    private final boolean f69658b;

    private final HashMap f69659c;

    private String f69660d;

    private String f69661e;

    private boolean f69662f;

    private boolean f69663g;

    private long f69664h;

    private boolean f69665i;

    private String f69666j;

    public b(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f69657a = pageName;
        this.f69658b = z10;
        this.f69659c = new HashMap();
        this.f69661e = "";
        this.f69663g = true;
        this.f69664h = -1L;
    }

    public final String a() {
        return this.f69660d;
    }

    public final boolean b() {
        return this.f69658b;
    }

    public final boolean c() {
        return this.f69662f;
    }

    public final boolean d() {
        return this.f69663g;
    }

    public final String e() {
        return this.f69666j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f69657a, bVar.f69657a) && this.f69658b == bVar.f69658b;
    }

    public final String f() {
        return this.f69657a;
    }

    public final HashMap g() {
        return this.f69659c;
    }

    public final long h() {
        return this.f69664h;
    }

    public int hashCode() {
        return (this.f69657a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f69658b);
    }

    public final boolean i() {
        return this.f69665i;
    }

    public final void j(String str) {
        this.f69660d = str;
    }

    public final void k(boolean z10) {
        this.f69665i = z10;
    }

    public final void l(boolean z10) {
        this.f69662f = z10;
    }

    public final void m(boolean z10) {
        this.f69663g = z10;
    }

    public final void n(String str) {
        this.f69666j = str;
    }

    public final void o(long j10) {
        this.f69664h = j10;
    }

    public String toString() {
        return "LogViewConfig(pageName=" + this.f69657a + ", needAddToPageFrom=" + this.f69658b + ')';
    }

    public b(String str, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? true : z10);
    }
}
