package com.google.firebase.sessions;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;

public final class SessionLifecycleClient {

    public static final a f31783f = new a(null);

    private final CoroutineContext f31784a;

    private Messenger f31785b;

    private boolean f31786c;

    private final LinkedBlockingDeque f31787d;

    private final b f31788e;

    public static final class ClientUpdateHandler extends Handler {

        private final CoroutineContext f31789a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ClientUpdateHandler(CoroutineContext backgroundDispatcher) {
            super(Looper.getMainLooper());
            Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
            this.f31789a = backgroundDispatcher;
        }

        private final void a(String str) {
            kotlinx.coroutines.k.d(o0.a(this.f31789a), null, null, new SessionLifecycleClient$ClientUpdateHandler$handleSessionUpdate$1(str, null), 3, null);
        }

        @Override
        public void handleMessage(Message msg) {
            String string;
            Intrinsics.h(msg, "msg");
            if (msg.what == 3) {
                Bundle data = msg.getData();
                if (data == null || (string = data.getString("SessionUpdateExtra")) == null) {
                    string = "";
                }
                a(string);
                return;
            }
            Log.w("SessionLifecycleClient", "Received unexpected event from the SessionLifecycleService: " + msg);
            super.handleMessage(msg);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements ServiceConnection {
        b() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Connected to SessionLifecycleService. Queue size ");
            sb2.append(SessionLifecycleClient.this.f31787d.size());
            SessionLifecycleClient.this.f31785b = new Messenger(iBinder);
            SessionLifecycleClient.this.f31786c = true;
            SessionLifecycleClient sessionLifecycleClient = SessionLifecycleClient.this;
            sessionLifecycleClient.o(sessionLifecycleClient.j());
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            SessionLifecycleClient.this.f31785b = null;
            SessionLifecycleClient.this.f31786c = false;
        }
    }

    public SessionLifecycleClient(CoroutineContext backgroundDispatcher) {
        Intrinsics.h(backgroundDispatcher, "backgroundDispatcher");
        this.f31784a = backgroundDispatcher;
        this.f31787d = new LinkedBlockingDeque(20);
        this.f31788e = new b();
    }

    public final List j() {
        ArrayList arrayList = new ArrayList();
        this.f31787d.drainTo(arrayList);
        return arrayList;
    }

    public final Message l(List list, int i10) {
        Object obj;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (((Message) obj2).what == i10) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                long when = ((Message) next).getWhen();
                do {
                    Object next2 = it.next();
                    long when2 = ((Message) next2).getWhen();
                    if (when < when2) {
                        next = next2;
                        when = when2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        return (Message) obj;
    }

    private final void m(Message message) {
        if (!this.f31787d.offer(message)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to enqueue message ");
            sb2.append(message.what);
            sb2.append(". Dropping.");
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Queued message ");
        sb3.append(message.what);
        sb3.append(". Queue size ");
        sb3.append(this.f31787d.size());
    }

    private final void n(int i10) {
        List listJ = j();
        Message messageObtain = Message.obtain(null, i10, 0, 0);
        Intrinsics.g(messageObtain, "obtain(null, messageCode, 0, 0)");
        listJ.add(messageObtain);
        o(listJ);
    }

    public final t1 o(List list) {
        return kotlinx.coroutines.k.d(o0.a(this.f31784a), null, null, new SessionLifecycleClient$sendLifecycleEvents$1(this, list, null), 3, null);
    }

    public final void p(Message message) {
        if (this.f31785b == null) {
            m(message);
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Sending lifecycle ");
            sb2.append(message.what);
            sb2.append(" to service");
            Messenger messenger = this.f31785b;
            if (messenger != null) {
                messenger.send(message);
            }
        } catch (RemoteException e10) {
            Log.w("SessionLifecycleClient", "Unable to deliver message: " + message.what, e10);
            m(message);
        }
    }

    public final void h() {
        n(2);
    }

    public final void i(y sessionLifecycleServiceBinder) {
        Intrinsics.h(sessionLifecycleServiceBinder, "sessionLifecycleServiceBinder");
        sessionLifecycleServiceBinder.a(new Messenger(new ClientUpdateHandler(this.f31784a)), this.f31788e);
    }

    public final void k() {
        n(1);
    }
}
