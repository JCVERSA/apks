package androidx.activity.result;

import f.g;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    private boolean f614c;

    private boolean f616e;

    private long f617f;

    private g.f f612a = g.c.f59871a;

    private int f613b = f.e.f59866b.a();

    private g.b f615d = g.b.a.f59869a;

    public static final class a {

        private boolean f620c;

        private boolean f622e;

        private long f623f;

        private g.f f618a = g.c.f59871a;

        private int f619b = f.e.f59866b.a();

        private g.b f621d = g.b.a.f59869a;

        public final e a() {
            e eVar = new e();
            eVar.k(this.f618a);
            eVar.j(this.f619b);
            eVar.l(this.f620c);
            eVar.i(this.f621d);
            eVar.h(this.f622e);
            eVar.g(this.f623f);
            return eVar;
        }

        public final a b(g.b defaultTab) {
            Intrinsics.h(defaultTab, "defaultTab");
            this.f621d = defaultTab;
            return this;
        }

        public final a c(int i10) {
            this.f619b = i10;
            return this;
        }

        public final a d(g.f mediaType) {
            Intrinsics.h(mediaType, "mediaType");
            this.f618a = mediaType;
            return this;
        }

        public final a e(boolean z10) {
            this.f620c = z10;
            return this;
        }
    }

    public final long a() {
        return this.f617f;
    }

    public final g.b b() {
        return this.f615d;
    }

    public final int c() {
        return this.f613b;
    }

    public final g.f d() {
        return this.f612a;
    }

    public final boolean e() {
        return this.f616e;
    }

    public final boolean f() {
        return this.f614c;
    }

    public final void g(long j10) {
        this.f617f = j10;
    }

    public final void h(boolean z10) {
        this.f616e = z10;
    }

    public final void i(g.b bVar) {
        Intrinsics.h(bVar, "<set-?>");
        this.f615d = bVar;
    }

    public final void j(int i10) {
        this.f613b = i10;
    }

    public final void k(g.f fVar) {
        Intrinsics.h(fVar, "<set-?>");
        this.f612a = fVar;
    }

    public final void l(boolean z10) {
        this.f614c = z10;
    }
}
