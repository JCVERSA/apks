package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import defpackage.hgf;
import defpackage.t6i;
import java.util.Objects;

public final class e extends t6i {
    public final a b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(a aVar, Looper looper) {
        super(looper);
        Objects.requireNonNull(aVar);
        this.b = aVar;
    }

    public static final void a(Message message) {
        hgf hgfVar = (hgf) message.obj;
        if (hgfVar != null) {
            hgfVar.c();
        }
    }

    public static final boolean b(Message message) {
        int i = message.what;
        return i == 2 || i == 1 || i == 7;
    }

    @Override
    public final void handleMessage(Message message) {
        a aVar = this.b;
        if (aVar.D.get() != message.arg1) {
            if (b(message)) {
                a(message);
                return;
            }
            return;
        }
        int i = message.what;
        if ((i == 1 || i == 7 || ((i == 4 && !aVar.e()) || message.what == 5)) && !aVar.isConnecting()) {
            a(message);
            return;
        }
        int i2 = message.what;
        if (i2 == 4) {
            aVar.F(new ConnectionResult(message.arg2));
            if (aVar.y() && !aVar.G()) {
                aVar.v(3, null);
                return;
            }
            ConnectionResult connectionResultE = aVar.E() != null ? aVar.E() : new ConnectionResult(8);
            aVar.q.a(connectionResultE);
            aVar.o(connectionResultE);
            return;
        }
        if (i2 == 5) {
            ConnectionResult connectionResultE2 = aVar.E() != null ? aVar.E() : new ConnectionResult(8);
            aVar.q.a(connectionResultE2);
            aVar.o(connectionResultE2);
            return;
        }
        if (i2 == 3) {
            Object obj = message.obj;
            ConnectionResult connectionResult = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            aVar.q.a(connectionResult);
            aVar.o(connectionResult);
            return;
        }
        if (i2 == 6) {
            aVar.v(5, null);
            if (aVar.C() != null) {
                aVar.C().onConnectionSuspended(message.arg2);
            }
            aVar.p(message.arg2);
            aVar.w(5, 1, null);
            return;
        }
        if (i2 == 2 && !aVar.isConnected()) {
            a(message);
            return;
        }
        if (b(message)) {
            ((hgf) message.obj).b();
            return;
        }
        int i3 = message.what;
        StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 34);
        sb.append("Don't know how to handle message: ");
        sb.append(i3);
        Log.wtf("GmsClient", sb.toString(), new Exception());
    }
}
