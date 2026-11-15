package zx;

import io.reactivex.rxjava3.disposables.c;
import io.reactivex.rxjava3.disposables.d;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

public final class a implements c, d {

    List f76933a;

    volatile boolean f76934b;

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
        Objects.requireNonNull(cVar, "d is null");
        if (!this.f76934b) {
            synchronized (this) {
                try {
                    if (!this.f76934b) {
                        List linkedList = this.f76933a;
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            this.f76933a = linkedList;
                        }
                        linkedList.add(cVar);
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
        Objects.requireNonNull(cVar, "Disposable item is null");
        if (this.f76934b) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.f76934b) {
                    return false;
                }
                List list = this.f76933a;
                if (list != null && list.remove(cVar)) {
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void d(List list) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        ArrayList arrayList = null;
        while (it.hasNext()) {
            try {
                ((c) it.next()).dispose();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th2);
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
    public void dispose() {
        if (this.f76934b) {
            return;
        }
        synchronized (this) {
            try {
                if (this.f76934b) {
                    return;
                }
                this.f76934b = true;
                List list = this.f76933a;
                this.f76933a = null;
                d(list);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean isDisposed() {
        return this.f76934b;
    }
}
