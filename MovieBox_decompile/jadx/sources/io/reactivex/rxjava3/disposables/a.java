package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.f;
import java.util.ArrayList;
import java.util.Objects;

public final class a implements c, d {

    f f62319a;

    volatile boolean f62320b;

    @Override
    public boolean a(c cVar) {
        if (!c(cVar)) {
            return false;
        }
        cVar.dispose();
        return true;
    }

    @Override
    public boolean b(c cVar) {
        Objects.requireNonNull(cVar, "disposable is null");
        if (!this.f62320b) {
            synchronized (this) {
                try {
                    if (!this.f62320b) {
                        f fVar = this.f62319a;
                        if (fVar == null) {
                            fVar = new f();
                            this.f62319a = fVar;
                        }
                        fVar.a(cVar);
                        return true;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        cVar.dispose();
        return false;
    }

    @Override
    public boolean c(c cVar) {
        Objects.requireNonNull(cVar, "disposable is null");
        if (this.f62320b) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f62320b) {
                    return false;
                }
                f fVar = this.f62319a;
                if (fVar != null && fVar.e(cVar)) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void d() {
        if (this.f62320b) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f62320b) {
                    return;
                }
                f fVar = this.f62319a;
                this.f62319a = null;
                e(fVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void dispose() {
        if (this.f62320b) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f62320b) {
                    return;
                }
                this.f62320b = true;
                f fVar = this.f62319a;
                this.f62319a = null;
                e(fVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void e(f fVar) {
        if (fVar == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : fVar.b()) {
            if (obj instanceof c) {
                try {
                    ((c) obj).dispose();
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th2);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new CompositeException(arrayList);
            }
            throw ExceptionHelper.g((Throwable) arrayList.get(0));
        }
    }

    @Override
    public boolean isDisposed() {
        return this.f62320b;
    }
}
