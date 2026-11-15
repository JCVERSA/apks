package defpackage;

public final class wke implements pke {
    public final p3h a = new p3h(new byte[4], 4);
    public final yke b;

    public wke(yke ykeVar) {
        this.b = ykeVar;
    }

    @Override
    public final void a(u4h u4hVar) {
        if (u4hVar.G() == 0 && (u4hVar.G() & 128) != 0) {
            u4hVar.m(6);
            int iU = u4hVar.u() / 4;
            for (int i = 0; i < iU; i++) {
                p3h p3hVar = this.a;
                u4hVar.g(p3hVar, 4);
                int iD = p3hVar.d(16);
                p3hVar.n(3);
                if (iD == 0) {
                    p3hVar.n(13);
                } else {
                    int iD2 = p3hVar.d(13);
                    yke ykeVar = this.b;
                    if (ykeVar.g.get(iD2) == null) {
                        ykeVar.g.put(iD2, new qke(new xke(ykeVar, iD2)));
                        ykeVar.m++;
                    }
                }
            }
            this.b.g.remove(0);
        }
    }

    @Override
    public final void b(fch fchVar, f9e f9eVar, cle cleVar) {
    }
}
