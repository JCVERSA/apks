package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;

public final class rc9 extends sc9 implements Iterator, wh1, qe5 {
    public int b;
    public Object c;
    public Iterator d;
    public wh1 e;

    @Override
    public Object b(Object obj, wh1 wh1Var) {
        this.c = obj;
        this.b = 3;
        this.e = wh1Var;
        Object objF = z45.f();
        if (objF == z45.f()) {
            pt1.c(wh1Var);
        }
        return objF == z45.f() ? objF : zfb.a;
    }

    @Override
    public Object d(Iterator it, wh1 wh1Var) {
        if (!it.hasNext()) {
            return zfb.a;
        }
        this.d = it;
        this.b = 2;
        this.e = wh1Var;
        Object objF = z45.f();
        if (objF == z45.f()) {
            pt1.c(wh1Var);
        }
        return objF == z45.f() ? objF : zfb.a;
    }

    public final Throwable e() {
        int i = this.b;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.b);
    }

    public final Object f() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    public final void g(wh1 wh1Var) {
        this.e = wh1Var;
    }

    @Override
    public d getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override
    public boolean hasNext() throws Throwable {
        while (true) {
            int i = this.b;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw e();
                }
                Iterator it = this.d;
                y45.g(it);
                if (it.hasNext()) {
                    this.b = 2;
                    return true;
                }
                this.d = null;
            }
            this.b = 5;
            wh1 wh1Var = this.e;
            y45.g(wh1Var);
            this.e = null;
            Result.Companion companion = Result.INSTANCE;
            wh1Var.resumeWith(Result.m279constructorimpl(zfb.a));
        }
    }

    @Override
    public Object next() throws Throwable {
        int i = this.b;
        if (i == 0 || i == 1) {
            return f();
        }
        if (i == 2) {
            this.b = 1;
            Iterator it = this.d;
            y45.g(it);
            return it.next();
        }
        if (i != 3) {
            throw e();
        }
        this.b = 0;
        Object obj = this.c;
        this.c = null;
        return obj;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void resumeWith(Object obj) {
        c.b(obj);
        this.b = 4;
    }
}
