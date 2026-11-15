package tb;

import java.io.File;

public class e {

    private static final b f72626c = new b();

    private final xb.g f72627a;

    private c f72628b;

    private static final class b implements c {
        private b() {
        }

        @Override
        public void a() {
        }

        @Override
        public String b() {
            return null;
        }

        @Override
        public byte[] c() {
            return null;
        }

        @Override
        public void d() {
        }

        @Override
        public void e(long j10, String str) {
        }
    }

    public e(xb.g gVar) {
        this.f72627a = gVar;
        this.f72628b = f72626c;
    }

    private File d(String str) {
        return this.f72627a.q(str, "userlog");
    }

    public void a() {
        this.f72628b.d();
    }

    public byte[] b() {
        return this.f72628b.c();
    }

    public String c() {
        return this.f72628b.b();
    }

    public final void e(String str) {
        this.f72628b.a();
        this.f72628b = f72626c;
        if (str == null) {
            return;
        }
        f(d(str), 65536);
    }

    void f(File file, int i10) {
        this.f72628b = new h(file, i10);
    }

    public void g(long j10, String str) {
        this.f72628b.e(j10, str);
    }

    public e(xb.g gVar, String str) {
        this(gVar);
        e(str);
    }
}
