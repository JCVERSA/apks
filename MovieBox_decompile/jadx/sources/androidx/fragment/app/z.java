package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.o0;
import androidx.p009lifecycle.q0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;

class z implements androidx.p009lifecycle.m, androidx.p010savedstate.e, y0 {

    private final Fragment f9210a;

    private final x0 f9211b;

    private v0.c f9212c;

    private androidx.p009lifecycle.w f9213d = null;

    private androidx.p010savedstate.d f9214e = null;

    z(Fragment fragment, x0 x0Var) {
        this.f9210a = fragment;
        this.f9211b = x0Var;
    }

    void a(Lifecycle.Event event) {
        this.f9213d.i(event);
    }

    void b() {
        if (this.f9213d == null) {
            this.f9213d = new androidx.p009lifecycle.w(this);
            androidx.p010savedstate.d dVarA = androidx.p010savedstate.d.a(this);
            this.f9214e = dVarA;
            dVarA.c();
            o0.c(this);
        }
    }

    boolean c() {
        return this.f9213d != null;
    }

    void d(Bundle bundle) {
        this.f9214e.d(bundle);
    }

    void e(Bundle bundle) {
        this.f9214e.e(bundle);
    }

    void f(Lifecycle.State state) {
        this.f9213d.n(state);
    }

    @Override
    public p1.a getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = this.f9210a.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        p1.b bVar = new p1.b();
        if (application != null) {
            bVar.c(v0.a.f9342g, application);
        }
        bVar.c(o0.f9319a, this);
        bVar.c(o0.f9320b, this);
        if (this.f9210a.getArguments() != null) {
            bVar.c(o0.f9321c, this.f9210a.getArguments());
        }
        return bVar;
    }

    @Override
    public v0.c getDefaultViewModelProviderFactory() {
        Application application;
        v0.c defaultViewModelProviderFactory = this.f9210a.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(this.f9210a.mDefaultFactory)) {
            this.f9212c = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.f9212c == null) {
            Context applicationContext = this.f9210a.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.f9212c = new q0(application, this, this.f9210a.getArguments());
        }
        return this.f9212c;
    }

    @Override
    public Lifecycle getLifecycle() {
        b();
        return this.f9213d;
    }

    @Override
    public androidx.p010savedstate.c getSavedStateRegistry() {
        b();
        return this.f9214e.b();
    }

    @Override
    public x0 getViewModelStore() {
        b();
        return this.f9211b;
    }
}
