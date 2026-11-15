package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import defpackage.pe7;
import defpackage.ur1;
import defpackage.xda;

public class h extends Binder {
    public final a b;

    public interface a {
        xda a(Intent intent);
    }

    public h(a aVar) {
        this.b = aVar;
    }

    public void c(final i.a aVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "service received new intent via bind strategy");
        }
        this.b.a(aVar.a).c(new ur1(), new pe7() {
            @Override
            public final void onComplete(xda xdaVar) {
                aVar.d();
            }
        });
    }
}
