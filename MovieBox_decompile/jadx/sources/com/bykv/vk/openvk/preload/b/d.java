package com.bykv.vk.openvk.preload.b;

import java.util.concurrent.atomic.AtomicLong;

public abstract class d<IN, OUT> {

    private static AtomicLong f19921d = new AtomicLong();

    d f19922a;

    IN f19923b;

    OUT f19924c;

    private com.bykv.vk.openvk.preload.b.b.a f19925e;

    private b f19926f;

    private long f19927g;

    public abstract Object a(b<OUT> bVar, IN in2) throws Throwable;

    protected void a(Object... objArr) {
    }

    public final long b() {
        return this.f19927g;
    }

    final void c() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f19925e;
        if (aVar == null) {
            return;
        }
        aVar.a(this.f19926f, this);
    }

    final void d() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f19925e;
        if (aVar == null) {
            return;
        }
        aVar.c(this.f19926f, this);
    }

    final void e() {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f19925e;
        if (aVar == null) {
            return;
        }
        aVar.b(this.f19926f, this);
    }

    public final OUT f() {
        return this.f19924c;
    }

    final void a(b bVar, d dVar, IN in2, com.bykv.vk.openvk.preload.b.b.a aVar, Object[] objArr) {
        this.f19926f = new m(bVar);
        this.f19922a = dVar;
        this.f19923b = in2;
        this.f19925e = aVar;
        if (dVar != null) {
            this.f19927g = dVar.f19927g;
        } else {
            long andIncrement = f19921d.getAndIncrement();
            this.f19927g = andIncrement;
            if (andIncrement < 0) {
                throw new RuntimeException("Pipeline ID use up!");
            }
        }
        a(objArr);
    }

    final void b(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f19925e;
        if (aVar == null) {
            return;
        }
        aVar.a(this.f19926f, this, th2);
    }

    final void c(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f19925e;
        if (aVar == null) {
            return;
        }
        aVar.b(this.f19926f, this, th2);
    }

    protected final void d(Throwable th2) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f19925e;
        if (aVar == null) {
            return;
        }
        aVar.c(this.f19926f, this, th2);
    }
}
