package defpackage;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class rl5 implements rc2, sc2 {
    public List b;
    public volatile boolean c;

    @Override
    public boolean a(rc2 rc2Var) {
        ac7.d(rc2Var, "Disposable item is null");
        if (this.c) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.c) {
                    return false;
                }
                List list = this.b;
                if (list != null && list.remove(rc2Var)) {
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean b(rc2 rc2Var) {
        ac7.d(rc2Var, "d is null");
        if (!this.c) {
            synchronized (this) {
                try {
                    if (!this.c) {
                        List linkedList = this.b;
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            this.b = linkedList;
                        }
                        linkedList.add(rc2Var);
                        return true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        rc2Var.dispose();
        return false;
    }

    @Override
    public boolean c(rc2 rc2Var) {
        if (!a(rc2Var)) {
            return false;
        }
        rc2Var.dispose();
        return true;
    }

    public void d(List list) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        ArrayList arrayList = null;
        while (it.hasNext()) {
            try {
                ((rc2) it.next()).dispose();
            } catch (Throwable th) {
                re3.b(th);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new CompositeException(arrayList);
            }
            throw ExceptionHelper.d((Throwable) arrayList.get(0));
        }
    }

    @Override
    public void dispose() {
        if (this.c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.c) {
                    return;
                }
                this.c = true;
                List list = this.b;
                this.b = null;
                d(list);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean isDisposed() {
        return this.c;
    }
}
