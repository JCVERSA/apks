package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;

class e implements g {

    final TaskCompletionSource f31078a;

    public e(TaskCompletionSource taskCompletionSource) {
        this.f31078a = taskCompletionSource;
    }

    @Override
    public boolean a(Exception exc) {
        return false;
    }

    @Override
    public boolean b(com.google.firebase.installations.local.b bVar) {
        if (!bVar.l() && !bVar.k() && !bVar.i()) {
            return false;
        }
        this.f31078a.trySetResult(bVar.d());
        return true;
    }
}
