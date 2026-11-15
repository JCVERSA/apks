package com.bykv.vk.openvk.preload.b;

public final class h {

    Class<? extends d> f19934a;

    private com.bykv.vk.openvk.preload.b.b.a f19935b;

    private Object[] f19936c;

    public static final class a {

        private Class<? extends d> f19937a;

        private com.bykv.vk.openvk.preload.b.b.a f19938b;

        private Object[] f19939c;

        private a() {
        }

        public static a a() {
            return new a();
        }

        public final h b() {
            return new h(this, (byte) 0);
        }

        public final a a(Class<? extends d> cls) {
            if (cls != null) {
                this.f19937a = cls;
                return this;
            }
            throw new IllegalArgumentException("interceptor class == null");
        }

        public final a a(com.bykv.vk.openvk.preload.b.b.a aVar) {
            this.f19938b = aVar;
            return this;
        }

        public final a a(Object... objArr) {
            this.f19939c = objArr;
            return this;
        }
    }

    h(a aVar, byte b10) {
        this(aVar);
    }

    final com.bykv.vk.openvk.preload.b.b.a a() {
        return this.f19935b;
    }

    final Object[] b() {
        return this.f19936c;
    }

    private h(a aVar) {
        this.f19934a = aVar.f19937a;
        this.f19935b = aVar.f19938b;
        this.f19936c = aVar.f19939c;
        if (this.f19934a == null) {
            throw new IllegalArgumentException("Interceptor class == null");
        }
    }
}
