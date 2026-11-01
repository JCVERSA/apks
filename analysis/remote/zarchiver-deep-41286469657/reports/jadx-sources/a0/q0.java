package a0;

public final class q0 extends w0.c {

    public final h0.h f96e;

    public final ru.zdevs.zarchiver.c f97f;

    public q0(ru.zdevs.zarchiver.c cVar, h0.h hVar) {
        this.f97f = cVar;
        this.f96e = hVar;
    }

    @Override
    public final w0.a.b f() throws Throwable {
        String message;
        int iL;
        h0.h hVar = this.f96e;
        try {
            iL = q0.a.l(this.f97f, hVar);
            message = null;
        } catch (q0.a.C0025a e2) {
            message = e2.getMessage();
            iL = 0;
        }
        return new c0(iL, message, hVar);
    }

    @Override
    public final int j() {
        return 110;
    }
}
