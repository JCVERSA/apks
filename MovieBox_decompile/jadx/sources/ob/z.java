package ob;

class z implements kc.b, kc.a {

    private static final kc.a.InterfaceC0789a f67796c = new kc.a.InterfaceC0789a() {
        @Override
        public final void a(kc.b bVar) {
            z.f(bVar);
        }
    };

    private static final kc.b f67797d = new kc.b() {
        @Override
        public final Object get() {
            return z.g();
        }
    };

    private kc.a.InterfaceC0789a f67798a;

    private volatile kc.b f67799b;

    private z(kc.a.InterfaceC0789a interfaceC0789a, kc.b bVar) {
        this.f67798a = interfaceC0789a;
        this.f67799b = bVar;
    }

    static z e() {
        return new z(f67796c, f67797d);
    }

    public static void f(kc.b bVar) {
    }

    public static Object g() {
        return null;
    }

    public static void h(kc.a.InterfaceC0789a interfaceC0789a, kc.a.InterfaceC0789a interfaceC0789a2, kc.b bVar) {
        interfaceC0789a.a(bVar);
        interfaceC0789a2.a(bVar);
    }

    static z i(kc.b bVar) {
        return new z(null, bVar);
    }

    @Override
    public void a(final kc.a.InterfaceC0789a interfaceC0789a) {
        kc.b bVar;
        kc.b bVar2;
        kc.b bVar3 = this.f67799b;
        kc.b bVar4 = f67797d;
        if (bVar3 != bVar4) {
            interfaceC0789a.a(bVar3);
            return;
        }
        synchronized (this) {
            bVar = this.f67799b;
            if (bVar != bVar4) {
                bVar2 = bVar;
            } else {
                final kc.a.InterfaceC0789a interfaceC0789a2 = this.f67798a;
                this.f67798a = new kc.a.InterfaceC0789a() {
                    @Override
                    public final void a(kc.b bVar5) {
                        z.h(interfaceC0789a2, interfaceC0789a, bVar5);
                    }
                };
                bVar2 = null;
            }
        }
        if (bVar2 != null) {
            interfaceC0789a.a(bVar);
        }
    }

    @Override
    public Object get() {
        return this.f67799b.get();
    }

    void j(kc.b bVar) {
        kc.a.InterfaceC0789a interfaceC0789a;
        if (this.f67799b != f67797d) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            interfaceC0789a = this.f67798a;
            this.f67798a = null;
            this.f67799b = bVar;
        }
        interfaceC0789a.a(bVar);
    }
}
