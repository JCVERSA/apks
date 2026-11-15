package com.bykv.vk.openvk.preload.geckox.a.a;

public final class a {

    final int f19967a;

    final c f19968b;

    private final b f19969c;

    public static final class C0172a {

        private int f19970a;

        private b f19971b = b.f19973a;

        private c f19972c;

        public final C0172a a() {
            this.f19970a = 20;
            return this;
        }

        public final a b() {
            return new a(this, (byte) 0);
        }

        public final C0172a a(b bVar) {
            if (bVar == null) {
                bVar = b.f19973a;
            }
            this.f19971b = bVar;
            return this;
        }
    }

    a(C0172a c0172a, byte b10) {
        this(c0172a);
    }

    public final b a() {
        return this.f19969c;
    }

    private a(C0172a c0172a) {
        this.f19967a = c0172a.f19970a;
        this.f19969c = c0172a.f19971b;
        this.f19968b = c0172a.f19972c;
    }
}
