package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;

class d implements g {

    private final h f31076a;

    private final TaskCompletionSource f31077b;

    public d(h hVar, TaskCompletionSource taskCompletionSource) {
        this.f31076a = hVar;
        this.f31077b = taskCompletionSource;
    }

    @Override
    public boolean a(Exception exc) {
        this.f31077b.trySetException(exc);
        return true;
    }

    @Override
    public boolean b(com.google.firebase.installations.local.b bVar) {
        if (!bVar.k() || this.f31076a.f(bVar)) {
            return false;
        }
        this.f31077b.setResult(f.a().b(bVar.b()).d(bVar.c()).c(bVar.h()).a());
        return true;
    }
}
