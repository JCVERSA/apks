package androidx.compose.runtime;

import java.util.ArrayList;

public final class z2 {

    private final ArrayList f3773a = new ArrayList();

    public final void a() {
        this.f3773a.clear();
    }

    public final int b() {
        return this.f3773a.size();
    }

    public final boolean c() {
        return this.f3773a.isEmpty();
    }

    public final boolean d() {
        return !c();
    }

    public final Object e() {
        return this.f3773a.get(b() - 1);
    }

    public final Object f(int i10) {
        return this.f3773a.get(i10);
    }

    public final Object g() {
        return this.f3773a.remove(b() - 1);
    }

    public final boolean h(Object obj) {
        return this.f3773a.add(obj);
    }

    public final Object[] i() {
        int size = this.f3773a.size();
        Object[] objArr = new Object[size];
        for (int i10 = 0; i10 < size; i10++) {
            objArr[i10] = this.f3773a.get(i10);
        }
        return objArr;
    }
}
