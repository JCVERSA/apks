package androidx.p009lifecycle;

import java.util.Map;

public abstract class LiveData {

    static final Object f9223k = new Object();

    final Object f9224a;

    private k.b f9225b;

    int f9226c;

    private boolean f9227d;

    private volatile Object f9228e;

    volatile Object f9229f;

    private int f9230g;

    private boolean f9231h;

    private boolean f9232i;

    private final Runnable f9233j;

    private class a extends c {
        a(c0 c0Var) {
            super(c0Var);
        }

        @Override
        boolean d() {
            return true;
        }
    }

    class b extends c implements r {

        final u f9235e;

        b(u uVar, c0 c0Var) {
            super(c0Var);
            this.f9235e = uVar;
        }

        @Override
        void b() {
            this.f9235e.getLifecycle().d(this);
        }

        @Override
        boolean c(u uVar) {
            return this.f9235e == uVar;
        }

        @Override
        boolean d() {
            return this.f9235e.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED);
        }

        @Override
        public void onStateChanged(u uVar, Lifecycle.Event event) {
            Lifecycle.State stateB = this.f9235e.getLifecycle().b();
            if (stateB == Lifecycle.State.DESTROYED) {
                LiveData.this.o(this.f9237a);
                return;
            }
            Lifecycle.State state = null;
            while (state != stateB) {
                a(d());
                state = stateB;
                stateB = this.f9235e.getLifecycle().b();
            }
        }
    }

    public LiveData(Object obj) {
        this.f9224a = new Object();
        this.f9225b = new k.b();
        this.f9226c = 0;
        this.f9229f = f9223k;
        this.f9233j = new Runnable() {
            @Override
            public void run() {
                Object obj2;
                synchronized (LiveData.this.f9224a) {
                    obj2 = LiveData.this.f9229f;
                    LiveData.this.f9229f = LiveData.f9223k;
                }
                LiveData.this.q(obj2);
            }
        };
        this.f9228e = obj;
        this.f9230g = 0;
    }

    static void b(String str) {
        if (j.c.h().c()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void d(c cVar) {
        if (cVar.f9238b) {
            if (!cVar.d()) {
                cVar.a(false);
                return;
            }
            int i10 = cVar.f9239c;
            int i11 = this.f9230g;
            if (i10 >= i11) {
                return;
            }
            cVar.f9239c = i11;
            cVar.f9237a.onChanged(this.f9228e);
        }
    }

    void c(int i10) {
        int i11 = this.f9226c;
        this.f9226c = i10 + i11;
        if (this.f9227d) {
            return;
        }
        this.f9227d = true;
        while (true) {
            try {
                int i12 = this.f9226c;
                if (i11 == i12) {
                    this.f9227d = false;
                    return;
                }
                boolean z10 = i11 == 0 && i12 > 0;
                boolean z11 = i11 > 0 && i12 == 0;
                if (z10) {
                    l();
                } else if (z11) {
                    m();
                }
                i11 = i12;
            } catch (Throwable th2) {
                this.f9227d = false;
                throw th2;
            }
        }
    }

    void e(c cVar) {
        if (this.f9231h) {
            this.f9232i = true;
            return;
        }
        this.f9231h = true;
        do {
            this.f9232i = false;
            if (cVar != null) {
                d(cVar);
                cVar = null;
            } else {
                k.b.d dVarC = this.f9225b.c();
                while (dVarC.hasNext()) {
                    d((c) ((Map.Entry) dVarC.next()).getValue());
                    if (this.f9232i) {
                        break;
                    }
                }
            }
        } while (this.f9232i);
        this.f9231h = false;
    }

    public Object f() {
        Object obj = this.f9228e;
        if (obj != f9223k) {
            return obj;
        }
        return null;
    }

    int g() {
        return this.f9230g;
    }

    public boolean h() {
        return this.f9226c > 0;
    }

    public boolean i() {
        return this.f9228e != f9223k;
    }

    public void j(u uVar, c0 c0Var) {
        b("observe");
        if (uVar.getLifecycle().b() == Lifecycle.State.DESTROYED) {
            return;
        }
        b bVar = new b(uVar, c0Var);
        c cVar = (c) this.f9225b.g(c0Var, bVar);
        if (cVar != null && !cVar.c(uVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVar != null) {
            return;
        }
        uVar.getLifecycle().a(bVar);
    }

    public void k(c0 c0Var) {
        b("observeForever");
        a aVar = new a(c0Var);
        c cVar = (c) this.f9225b.g(c0Var, aVar);
        if (cVar instanceof b) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVar != null) {
            return;
        }
        aVar.a(true);
    }

    protected void l() {
    }

    protected void m() {
    }

    protected void n(Object obj) {
        boolean z10;
        synchronized (this.f9224a) {
            z10 = this.f9229f == f9223k;
            this.f9229f = obj;
        }
        if (z10) {
            j.c.h().d(this.f9233j);
        }
    }

    public void o(c0 c0Var) {
        b("removeObserver");
        c cVar = (c) this.f9225b.i(c0Var);
        if (cVar == null) {
            return;
        }
        cVar.b();
        cVar.a(false);
    }

    public void p(u uVar) {
        b("removeObservers");
        for (Map.Entry entry : this.f9225b) {
            if (((c) entry.getValue()).c(uVar)) {
                o((c0) entry.getKey());
            }
        }
    }

    protected void q(Object obj) {
        b("setValue");
        this.f9230g++;
        this.f9228e = obj;
        e(null);
    }

    public LiveData() {
        this.f9224a = new Object();
        this.f9225b = new k.b();
        this.f9226c = 0;
        Object obj = f9223k;
        this.f9229f = obj;
        this.f9233j = new Runnable() {
            @Override
            public void run() {
                Object obj2;
                synchronized (LiveData.this.f9224a) {
                    obj2 = LiveData.this.f9229f;
                    LiveData.this.f9229f = LiveData.f9223k;
                }
                LiveData.this.q(obj2);
            }
        };
        this.f9228e = obj;
        this.f9230g = -1;
    }

    private abstract class c {

        final c0 f9237a;

        boolean f9238b;

        int f9239c = -1;

        c(c0 c0Var) {
            this.f9237a = c0Var;
        }

        void a(boolean z10) {
            if (z10 == this.f9238b) {
                return;
            }
            this.f9238b = z10;
            LiveData.this.c(z10 ? 1 : -1);
            if (this.f9238b) {
                LiveData.this.e(this);
            }
        }

        boolean c(u uVar) {
            return false;
        }

        abstract boolean d();

        void b() {
        }
    }
}
