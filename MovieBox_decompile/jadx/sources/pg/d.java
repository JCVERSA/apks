package pg;

import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private String f69163a = "";

    private og.b f69164b;

    private long f69165c;

    private Executor f69166d;

    private og.a f69167e;

    public final og.a a() {
        return this.f69167e;
    }

    public final long b() {
        return this.f69165c;
    }

    public final Executor c() {
        return this.f69166d;
    }

    public final og.b d() {
        return this.f69164b;
    }

    public final String e() {
        return this.f69163a;
    }

    public final void f(Executor executor) {
        this.f69166d = executor;
    }

    public final void g(og.b bVar) {
        this.f69164b = bVar;
    }

    public final void h(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f69163a = str;
    }
}
