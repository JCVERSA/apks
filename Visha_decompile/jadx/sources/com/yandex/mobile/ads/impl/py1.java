package com.yandex.mobile.ads.impl;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.qy;
import com.yandex.mobile.ads.impl.ry;
import com.yandex.mobile.ads.impl.sy;
import java.util.ArrayDeque;

public abstract class py1<I extends ry, O extends sy, E extends qy> implements oy<I, O, E> {
    private final Thread a;
    private final Object b = new Object();
    private final ArrayDeque<I> c = new ArrayDeque<>();
    private final ArrayDeque<O> d = new ArrayDeque<>();
    private final I[] e;
    private final O[] f;
    private int g;
    private int h;

    @Nullable
    private I i;

    @Nullable
    private p32 j;
    private boolean k;
    private boolean l;

    public class a extends Thread {
        final py1 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(uy1 uy1Var) {
            super("ExoPlayer:SimpleDecoder");
            this.b = uy1Var;
        }

        @Override
        public final void run() {
            py1 py1Var = this.b;
            py1Var.getClass();
            do {
                try {
                } catch (InterruptedException e) {
                    throw new IllegalStateException(e);
                }
            } while (py1Var.e());
        }
    }

    public py1(I[] iArr, O[] oArr) {
        this.e = iArr;
        this.g = iArr.length;
        for (int i = 0; i < this.g; i++) {
            this.e[i] = c();
        }
        this.f = oArr;
        this.h = oArr.length;
        for (int i2 = 0; i2 < this.h; i2++) {
            ((O[]) this.f)[i2] = d();
        }
        a aVar = new a((uy1) this);
        this.a = aVar;
        aVar.start();
    }

    public boolean e() throws InterruptedException {
        p32 p32Var;
        p32 p32VarA;
        synchronized (this.b) {
            while (!this.l && (this.c.isEmpty() || this.h <= 0)) {
                try {
                    this.b.wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.l) {
                return false;
            }
            I iRemoveFirst = this.c.removeFirst();
            O[] oArr = this.f;
            int i = this.h - 1;
            this.h = i;
            O o = oArr[i];
            boolean z = this.k;
            this.k = false;
            if (iRemoveFirst.c(4)) {
                o.b(4);
            } else {
                if (iRemoveFirst.c(Integer.MIN_VALUE)) {
                    o.b(Integer.MIN_VALUE);
                }
                if (iRemoveFirst.c(C.BUFFER_FLAG_FIRST_SAMPLE)) {
                    o.b(C.BUFFER_FLAG_FIRST_SAMPLE);
                }
                try {
                    p32VarA = a(iRemoveFirst, o, z);
                } catch (OutOfMemoryError e) {
                    p32Var = new p32("Unexpected decode error", e);
                    p32VarA = p32Var;
                } catch (RuntimeException e2) {
                    p32Var = new p32("Unexpected decode error", e2);
                    p32VarA = p32Var;
                }
                if (p32VarA != null) {
                    synchronized (this.b) {
                        this.j = p32VarA;
                    }
                    return false;
                }
            }
            synchronized (this.b) {
                try {
                    if (this.k || o.c(Integer.MIN_VALUE)) {
                        o.h();
                    } else {
                        this.d.addLast(o);
                    }
                    iRemoveFirst.b();
                    I[] iArr = this.e;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    iArr[i2] = iRemoveFirst;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    @Nullable
    public abstract p32 a(ry ryVar, sy syVar, boolean z);

    @Override
    @Nullable
    public final Object b() throws qy {
        I i;
        synchronized (this.b) {
            try {
                p32 p32Var = this.j;
                if (p32Var != null) {
                    throw p32Var;
                }
                if (this.i != null) {
                    throw new IllegalStateException();
                }
                int i2 = this.g;
                if (i2 == 0) {
                    i = null;
                } else {
                    I[] iArr = this.e;
                    int i3 = i2 - 1;
                    this.g = i3;
                    i = iArr[i3];
                }
                this.i = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public abstract r32 c();

    public abstract O d();

    public final void f() {
        int i = this.g;
        I[] iArr = this.e;
        if (i != iArr.length) {
            throw new IllegalStateException();
        }
        for (I i2 : iArr) {
            i2.e(1024);
        }
    }

    @Override
    public final void flush() {
        synchronized (this.b) {
            try {
                this.k = true;
                I i = this.i;
                if (i != null) {
                    i.b();
                    I[] iArr = this.e;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    iArr[i2] = i;
                    this.i = null;
                }
                while (!this.c.isEmpty()) {
                    I iRemoveFirst = this.c.removeFirst();
                    iRemoveFirst.b();
                    I[] iArr2 = this.e;
                    int i3 = this.g;
                    this.g = i3 + 1;
                    iArr2[i3] = iRemoveFirst;
                }
                while (!this.d.isEmpty()) {
                    this.d.removeFirst().h();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    @CallSuper
    public final void release() {
        synchronized (this.b) {
            this.l = true;
            this.b.notify();
        }
        try {
            this.a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override
    @Nullable
    public final Object a() throws qy {
        synchronized (this.b) {
            try {
                p32 p32Var = this.j;
                if (p32Var != null) {
                    throw p32Var;
                }
                if (this.d.isEmpty()) {
                    return null;
                }
                return this.d.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final void a(r32 r32Var) throws qy {
        synchronized (this.b) {
            try {
                p32 p32Var = this.j;
                if (p32Var == null) {
                    if (r32Var == this.i) {
                        this.c.addLast(r32Var);
                        if (!this.c.isEmpty() && this.h > 0) {
                            this.b.notify();
                        }
                        this.i = null;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw p32Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @CallSuper
    public final void a(O o) {
        synchronized (this.b) {
            try {
                o.b();
                O[] oArr = this.f;
                int i = this.h;
                this.h = i + 1;
                oArr[i] = o;
                if (!this.c.isEmpty() && this.h > 0) {
                    this.b.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
