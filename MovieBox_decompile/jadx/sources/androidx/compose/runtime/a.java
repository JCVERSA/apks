package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;

public abstract class a implements f {

    private final Object f3360a;

    private final List f3361b = new ArrayList();

    private Object f3362c;

    public a(Object obj) {
        this.f3360a = obj;
        this.f3362c = obj;
    }

    @Override
    public final void clear() {
        this.f3361b.clear();
        l(this.f3360a);
        k();
    }

    @Override
    public Object d() {
        return this.f3362c;
    }

    @Override
    public void e() {
        e.b(this);
    }

    @Override
    public void g(Object obj) {
        this.f3361b.add(d());
        l(obj);
    }

    @Override
    public void h() {
        e.a(this);
    }

    @Override
    public void i() {
        if (this.f3361b.isEmpty()) {
            o1.b("empty stack");
        }
        List list = this.f3361b;
        l(list.remove(list.size() - 1));
    }

    public final Object j() {
        return this.f3360a;
    }

    protected abstract void k();

    protected void l(Object obj) {
        this.f3362c = obj;
    }
}
