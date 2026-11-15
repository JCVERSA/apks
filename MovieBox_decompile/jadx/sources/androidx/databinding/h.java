package androidx.databinding;

public class h extends c {

    private static final androidx.core.util.h f8240f = new androidx.core.util.h(10);

    private static final c.a f8241g = new a();

    class a extends c.a {
        a() {
        }

        @Override
        public void a(j.a aVar, j jVar, int i10, b bVar) {
            if (i10 == 1) {
                aVar.b(jVar, bVar.f8242a, bVar.f8243b);
                return;
            }
            if (i10 == 2) {
                aVar.c(jVar, bVar.f8242a, bVar.f8243b);
                return;
            }
            if (i10 == 3) {
                aVar.d(jVar, bVar.f8242a, bVar.f8244c, bVar.f8243b);
            } else if (i10 != 4) {
                aVar.a(jVar);
            } else {
                aVar.e(jVar, bVar.f8242a, bVar.f8243b);
            }
        }
    }

    static class b {

        public int f8242a;

        public int f8243b;

        public int f8244c;

        b() {
        }
    }

    public h() {
        super(f8241g);
    }

    private static b m(int i10, int i11, int i12) {
        b bVar = (b) f8240f.acquire();
        if (bVar == null) {
            bVar = new b();
        }
        bVar.f8242a = i10;
        bVar.f8244c = i11;
        bVar.f8243b = i12;
        return bVar;
    }

    public synchronized void n(j jVar, int i10, b bVar) {
        super.d(jVar, i10, bVar);
        if (bVar != null) {
            f8240f.release(bVar);
        }
    }

    public void o(j jVar, int i10, int i11) {
        n(jVar, 1, m(i10, 0, i11));
    }

    public void p(j jVar, int i10, int i11) {
        n(jVar, 2, m(i10, 0, i11));
    }

    public void q(j jVar, int i10, int i11) {
        n(jVar, 4, m(i10, 0, i11));
    }
}
