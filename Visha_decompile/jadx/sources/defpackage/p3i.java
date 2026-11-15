package defpackage;

import java.util.NoSuchElementException;

public abstract class p3i extends x5i {
    public Object b;
    public int c = 2;

    public abstract Object a();

    public final Object b() {
        this.c = 3;
        return null;
    }

    @Override
    public final boolean hasNext() {
        v2i.l(this.c != 4);
        int i = this.c;
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        if (i2 == 0) {
            return true;
        }
        if (i2 != 2) {
            this.c = 4;
            this.b = a();
            if (this.c != 3) {
                this.c = 1;
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.c = 2;
        Object obj = this.b;
        this.b = null;
        return obj;
    }
}
