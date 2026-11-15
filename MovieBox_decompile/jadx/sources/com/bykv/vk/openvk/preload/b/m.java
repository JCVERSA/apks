package com.bykv.vk.openvk.preload.b;

final class m<IN> implements b<IN> {

    private b<IN> f19950a;

    public m(b<IN> bVar) {
        this.f19950a = bVar;
    }

    @Override
    public final Object a(IN in2) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override
    public final <O> O b(Class<? extends d<?, O>> cls) {
        return (O) this.f19950a.b(cls);
    }

    @Override
    public final <I> I a(Class<? extends d<I, ?>> cls) {
        return (I) this.f19950a.a((Class) cls);
    }
}
