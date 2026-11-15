package com.yandex.mobile.ads.impl;

import androidx.annotation.CallSuper;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class ik implements uh {
    protected uh.a b;
    protected uh.a c;
    private uh.a d;
    private uh.a e;
    private ByteBuffer f;
    private ByteBuffer g;
    private boolean h;

    public ik() {
        ByteBuffer byteBuffer = uh.a;
        this.f = byteBuffer;
        this.g = byteBuffer;
        uh.a aVar = uh.a.e;
        this.d = aVar;
        this.e = aVar;
        this.b = aVar;
        this.c = aVar;
    }

    @Override
    public final uh.a a(uh.a aVar) throws uh.b {
        this.d = aVar;
        this.e = b(aVar);
        return isActive() ? this.e : uh.a.e;
    }

    public abstract uh.a b(uh.a aVar) throws uh.b;

    @Override
    public final void b() {
        flush();
        this.f = uh.a;
        uh.a aVar = uh.a.e;
        this.d = aVar;
        this.e = aVar;
        this.b = aVar;
        this.c = aVar;
        h();
    }

    @Override
    @CallSuper
    public ByteBuffer c() {
        ByteBuffer byteBuffer = this.g;
        this.g = uh.a;
        return byteBuffer;
    }

    @Override
    public final void d() {
        this.h = true;
        g();
    }

    public final boolean e() {
        return this.g.hasRemaining();
    }

    public void f() {
    }

    @Override
    public final void flush() {
        this.g = uh.a;
        this.h = false;
        this.b = this.d;
        this.c = this.e;
        f();
    }

    public void g() {
    }

    public void h() {
    }

    @Override
    public boolean isActive() {
        return this.e != uh.a.e;
    }

    @Override
    @CallSuper
    public boolean a() {
        return this.h && this.g == uh.a;
    }

    public final ByteBuffer a(int i) {
        if (this.f.capacity() < i) {
            this.f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f.clear();
        }
        ByteBuffer byteBuffer = this.f;
        this.g = byteBuffer;
        return byteBuffer;
    }
}
