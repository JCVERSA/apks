package com.google.firebase.messaging;

import android.util.Log;
import androidx.collection.ArrayMap;
import defpackage.xda;
import defpackage.xh1;
import java.util.Map;
import java.util.concurrent.Executor;

public class e {
    public final Executor a;
    public final Map b = new ArrayMap();

    public interface a {
        xda start();
    }

    public e(Executor executor) {
        this.a = executor;
    }

    public synchronized xda b(final String str, a aVar) {
        xda xdaVar = (xda) this.b.get(str);
        if (xdaVar != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Joining ongoing request for: " + str);
            }
            return xdaVar;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Making new request for: " + str);
        }
        xda xdaVarK = aVar.start().k(this.a, new xh1() {
            @Override
            public final Object a(xda xdaVar2) {
                return this.a.c(str, xdaVar2);
            }
        });
        this.b.put(str, xdaVarK);
        return xdaVarK;
    }

    public final xda c(String str, xda xdaVar) {
        synchronized (this) {
            this.b.remove(str);
        }
        return xdaVar;
    }
}
