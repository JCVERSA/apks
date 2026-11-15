package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

class g1 extends Binder {

    private final a f31262a;

    interface a {
        Task a(Intent intent);
    }

    g1(a aVar) {
        this.f31262a = aVar;
    }

    void c(final j1.a aVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        Log.isLoggable("FirebaseMessaging", 3);
        this.f31262a.a(aVar.f31284a).addOnCompleteListener(new v3.m(), new OnCompleteListener() {
            @Override
            public final void onComplete(Task task) {
                aVar.d();
            }
        });
    }
}
