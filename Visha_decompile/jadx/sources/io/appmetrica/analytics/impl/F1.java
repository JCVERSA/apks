package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;

public final class F1 implements InterfaceC2901u1 {
    public final ICommonExecutor a;
    public final InterfaceC2901u1 b;
    public boolean c;

    public F1(@NonNull InterfaceC2901u1 interfaceC2901u1) {
        this(C2910ua.j().w().b(), interfaceC2901u1);
    }

    @Override
    public final void a(Intent intent, int i) {
        this.a.execute(new C2976x1(this, intent, i));
    }

    @Override
    public final void b(Intent intent) {
        this.a.execute(new B1(this, intent));
    }

    @Override
    public final void c(Intent intent) {
        this.a.execute(new A1(this, intent));
    }

    @Override
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
        this.a.execute(new C2926v1(this, configuration));
    }

    @Override
    public final synchronized void onCreate() {
        this.c = true;
        this.a.execute(new C2951w1(this));
    }

    @Override
    public final void onDestroy() {
        this.a.removeAll();
        synchronized (this) {
            this.c = false;
        }
        this.b.onDestroy();
    }

    @Override
    public final void pauseUserSession(@NonNull Bundle bundle) {
        this.a.execute(new E1(this, bundle));
    }

    @Override
    public final void reportData(int i, Bundle bundle) {
        this.a.execute(new C1(this, i, bundle));
    }

    @Override
    public final void resumeUserSession(@NonNull Bundle bundle) {
        this.a.execute(new D1(this, bundle));
    }

    @Override
    public final void a(Intent intent, int i, int i2) {
        this.a.execute(new C3001y1(this, intent, i, i2));
    }

    public F1(IHandlerExecutor iHandlerExecutor, InterfaceC2901u1 interfaceC2901u1) {
        this.c = false;
        this.a = iHandlerExecutor;
        this.b = interfaceC2901u1;
    }

    @Override
    public final void a(Intent intent) {
        this.a.execute(new C3026z1(this, intent));
    }

    @Override
    public final void a(@NonNull InterfaceC2876t1 interfaceC2876t1) {
        this.b.a(interfaceC2876t1);
    }
}
