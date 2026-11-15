package defpackage;

import kotlin.coroutines.d;

public final class gia implements d.c {
    public final ThreadLocal b;

    public gia(ThreadLocal threadLocal) {
        this.b = threadLocal;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof gia) && y45.e(this.b, ((gia) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.b + ')';
    }
}
