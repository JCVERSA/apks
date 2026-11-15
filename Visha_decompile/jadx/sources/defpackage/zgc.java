package defpackage;

import java.lang.ref.WeakReference;

public final class zgc {
    public final WeakReference a;
    public final int b;
    public ClassLoader c;

    public zgc(ClassLoader classLoader) {
        y45.j(classLoader, "classLoader");
        this.a = new WeakReference(classLoader);
        this.b = System.identityHashCode(classLoader);
        this.c = classLoader;
    }

    public final void a(ClassLoader classLoader) {
        this.c = classLoader;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zgc) && this.a.get() == ((zgc) obj).a.get();
    }

    public int hashCode() {
        return this.b;
    }

    public String toString() {
        String string;
        ClassLoader classLoader = (ClassLoader) this.a.get();
        return (classLoader == null || (string = classLoader.toString()) == null) ? "<null>" : string;
    }
}
