package androidx.p009lifecycle;

import java.util.Iterator;
import java.util.Map;
import k.b;

public class z extends b0 {

    private b f9363l;

    private static class a implements c0 {

        final LiveData f9364a;

        final c0 f9365b;

        int f9366c = -1;

        a(LiveData liveData, c0 c0Var) {
            this.f9364a = liveData;
            this.f9365b = c0Var;
        }

        void a() {
            this.f9364a.k(this);
        }

        void b() {
            this.f9364a.o(this);
        }

        @Override
        public void onChanged(Object obj) {
            if (this.f9366c != this.f9364a.g()) {
                this.f9366c = this.f9364a.g();
                this.f9365b.onChanged(obj);
            }
        }
    }

    public z() {
        this.f9363l = new b();
    }

    @Override
    protected void l() {
        Iterator it = this.f9363l.iterator();
        while (it.hasNext()) {
            ((a) ((Map.Entry) it.next()).getValue()).a();
        }
    }

    @Override
    protected void m() {
        Iterator it = this.f9363l.iterator();
        while (it.hasNext()) {
            ((a) ((Map.Entry) it.next()).getValue()).b();
        }
    }

    public void r(LiveData liveData, c0 c0Var) {
        if (liveData == null) {
            throw new NullPointerException("source cannot be null");
        }
        a aVar = new a(liveData, c0Var);
        a aVar2 = (a) this.f9363l.g(liveData, aVar);
        if (aVar2 != null && aVar2.f9365b != c0Var) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (aVar2 == null && h()) {
            aVar.a();
        }
    }

    public z(Object obj) {
        super(obj);
        this.f9363l = new b();
    }
}
