package a;

public final class h implements Runnable {

    public final int f27a;

    public final Object f28b;

    public h(Object obj, int i10) {
        this.f27a = i10;
        this.f28b = obj;
    }

    @Override
    public final void run() {
        b bVarA;
        switch (this.f27a) {
            case 0:
                k kVar = (k) ((h) this.f28b).f28b;
                kVar.d(kVar.f45d);
                return;
            case 1:
                try {
                    String strF = k.f(k.f35k, k.f36l, 38);
                    try {
                        bVarA = k.a((k) this.f28b, strF);
                        break;
                    } catch (Exception e10) {
                        String strF2 = k.f(k.f37m, k.f38n, 38);
                        if (!k.g(strF2) || strF2.equals(strF)) {
                            throw e10;
                        }
                        bVarA = k.a((k) this.f28b, strF2);
                    }
                    ((k) this.f28b).f43b = bVarA;
                    ((k) this.f28b).f44c = 1;
                    k.f33i.post(new h(this, 0));
                    return;
                } catch (Exception unused) {
                    ((k) this.f28b).f43b = b.a();
                    ((k) this.f28b).f44c = 2;
                    return;
                }
            default:
                com.community.oneroom.nu.mm.b bVar = (com.community.oneroom.nu.mm.b) this.f28b;
                int i10 = com.community.oneroom.nu.mm.b.f23325d;
                bVar.c();
                return;
        }
    }
}
