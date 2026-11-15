package defpackage;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;

public final class gd1 implements rc2, sc2 {
    public yj7 b;
    public volatile boolean c;

    @Override
    public boolean a(rc2 rc2Var) {
        ac7.d(rc2Var, "disposables is null");
        if (this.c) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.c) {
                    return false;
                }
                yj7 yj7Var = this.b;
                if (yj7Var != null && yj7Var.e(rc2Var)) {
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
        ac7.d(rc2Var, "disposable is null");
        if (!this.c) {
            synchronized (this) {
                try {
                    if (!this.c) {
                        yj7 yj7Var = this.b;
                        if (yj7Var == null) {
                            yj7Var = new yj7();
                            this.b = yj7Var;
                        }
                        yj7Var.a(rc2Var);
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

    public void d() {
        if (this.c) {
            return;
        }
        synchronized (this) {
            try {
                if (this.c) {
                    return;
                }
                yj7 yj7Var = this.b;
                this.b = null;
                e(yj7Var);
            } catch (Throwable th) {
                throw th;
            }
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
                yj7 yj7Var = this.b;
                this.b = null;
                e(yj7Var);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e(yj7 yj7Var) {
        if (yj7Var == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : yj7Var.b()) {
            if (obj instanceof rc2) {
                try {
                    ((rc2) obj).dispose();
                } catch (Throwable th) {
                    re3.b(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
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
    public boolean isDisposed() {
        return this.c;
    }
}
