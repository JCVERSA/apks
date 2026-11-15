package io.appmetrica.analytics.impl;

import android.app.Activity;
import io.appmetrica.analytics.impl.C2738nc;
import io.appmetrica.analytics.impl.EnumC2700m;

public final class Ak {
    public final C2775p a;
    public final C3030z5 b;
    public final InterfaceC2725n c;
    public final InterfaceC2725n d;
    public final r e;
    public final C2675l f;
    public boolean g;

    public Ak(C2775p c2775p, C2675l c2675l) {
        this(c2775p, c2675l, new C3030z5(), new r());
    }

    public final void a(final Activity activity, EnumC2700m enumC2700m) {
        synchronized (this) {
            try {
                if (this.g) {
                    C3030z5 c3030z5 = this.b;
                    Sd sd = new Sd() {
                        @Override
                        public final void consume(Object obj) {
                            this.a.a(activity, (C2738nc) obj);
                        }
                    };
                    c3030z5.getClass();
                    C2879t4.i().c.a().execute(new RunnableC3005y5(c3030z5, sd));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(final Activity activity, EnumC2700m enumC2700m) {
        synchronized (this) {
            try {
                if (this.g) {
                    C3030z5 c3030z5 = this.b;
                    Sd sd = new Sd() {
                        @Override
                        public final void consume(Object obj) {
                            this.a.b(activity, (C2738nc) obj);
                        }
                    };
                    c3030z5.getClass();
                    C2879t4.i().c.a().execute(new RunnableC3005y5(c3030z5, sd));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Ak(C2775p c2775p, C2675l c2675l, C3030z5 c3030z5, r rVar) {
        this.g = false;
        this.a = c2775p;
        this.f = c2675l;
        this.b = c3030z5;
        this.e = rVar;
        this.c = new InterfaceC2725n() {
            @Override
            public final void a(Activity activity, EnumC2700m enumC2700m) {
                this.a.a(activity, enumC2700m);
            }
        };
        this.d = new InterfaceC2725n() {
            @Override
            public final void a(Activity activity, EnumC2700m enumC2700m) {
                this.a.b(activity, enumC2700m);
            }
        };
    }

    public final synchronized EnumC2750o a() {
        try {
            if (!this.g) {
                this.a.a(this.c, EnumC2700m.RESUMED);
                this.a.a(this.d, EnumC2700m.PAUSED);
                this.g = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.a.b;
    }

    public final void b(Activity activity, C2738nc c2738nc) {
        if (this.e.a(activity, EnumC2800q.PAUSED)) {
            c2738nc.b(activity);
        }
    }

    public final void a(Activity activity, C2738nc c2738nc) {
        if (this.e.a(activity, EnumC2800q.RESUMED)) {
            c2738nc.a(activity);
        }
    }
}
