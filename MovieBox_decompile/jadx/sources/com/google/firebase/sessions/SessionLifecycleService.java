package com.google.firebase.sessions;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.google.firebase.sessions.settings.SessionsSettings;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 \u001b2\u00020\u0001:\u0002\u0007\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u0003J\u001b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\u0003R\u001a\u0010\u0013\u001a\u00020\u000f8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/google/firebase/sessions/SessionLifecycleService;", "Landroid/app/Service;", "<init>", "()V", "Landroid/content/Intent;", "intent", "Landroid/os/Messenger;", "a", "(Landroid/content/Intent;)Landroid/os/Messenger;", "", "onCreate", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "onDestroy", "Landroid/os/HandlerThread;", "Landroid/os/HandlerThread;", "getHandlerThread$com_google_firebase_firebase_sessions", "()Landroid/os/HandlerThread;", "handlerThread", "Lcom/google/firebase/sessions/SessionLifecycleService$b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/google/firebase/sessions/SessionLifecycleService$b;", "messageHandler", "c", "Landroid/os/Messenger;", "messenger", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "com.google.firebase-firebase-sessions"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SessionLifecycleService extends Service {

    private final HandlerThread handlerThread = new HandlerThread("FirebaseSessions_HandlerThread");

    private b messageHandler;

    private Messenger messenger;

    public static final class b extends Handler {

        private boolean f31795a;

        private long f31796b;

        private final ArrayList f31797c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Looper looper) {
            super(looper);
            Intrinsics.h(looper, "looper");
            this.f31797c = new ArrayList();
        }

        private final void a() {
            w.f31913a.a().a(SessionGenerator.f31777f.a().c());
            for (Messenger it : new ArrayList(this.f31797c)) {
                Intrinsics.g(it, "it");
                f(it);
            }
        }

        private final void b(Message message) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Activity backgrounding at ");
            sb2.append(message.getWhen());
            this.f31796b = message.getWhen();
        }

        private final void c(Message message) {
            this.f31797c.add(message.replyTo);
            Messenger messenger = message.replyTo;
            Intrinsics.g(messenger, "msg.replyTo");
            f(messenger);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Client ");
            sb2.append(message.replyTo);
            sb2.append(" bound at ");
            sb2.append(message.getWhen());
            sb2.append(". Clients: ");
            sb2.append(this.f31797c.size());
        }

        private final void d(Message message) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Activity foregrounding at ");
            sb2.append(message.getWhen());
            sb2.append('.');
            if (!this.f31795a) {
                this.f31795a = true;
                g();
            } else if (e(message.getWhen())) {
                g();
            }
            this.f31796b = message.getWhen();
        }

        private final boolean e(long j10) {
            return j10 - this.f31796b > Duration.q(SessionsSettings.f31884c.c().c());
        }

        private final void f(Messenger messenger) {
            if (this.f31795a) {
                h(messenger, SessionGenerator.f31777f.a().c().b());
                return;
            }
            String strA = s.f31871a.a().a();
            if (strA != null) {
                h(messenger, strA);
            }
        }

        private final void g() {
            SessionGenerator.a aVar = SessionGenerator.f31777f;
            aVar.a().a();
            a();
            s.f31871a.a().b(aVar.a().c().b());
        }

        private final void h(Messenger messenger, String str) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("SessionUpdateExtra", str);
                Message messageObtain = Message.obtain(null, 3, 0, 0);
                messageObtain.setData(bundle);
                messenger.send(messageObtain);
            } catch (DeadObjectException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Removing dead client from list: ");
                sb2.append(messenger);
                this.f31797c.remove(messenger);
            } catch (Exception e10) {
                Log.w("SessionLifecycleService", "Unable to push new session to " + messenger + '.', e10);
            }
        }

        @Override
        public void handleMessage(Message msg) {
            Intrinsics.h(msg, "msg");
            if (this.f31796b > msg.getWhen()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Ignoring old message from ");
                sb2.append(msg.getWhen());
                sb2.append(" which is older than ");
                sb2.append(this.f31796b);
                sb2.append('.');
                return;
            }
            int i10 = msg.what;
            if (i10 == 1) {
                d(msg);
                return;
            }
            if (i10 == 2) {
                b(msg);
                return;
            }
            if (i10 == 4) {
                c(msg);
                return;
            }
            Log.w("SessionLifecycleService", "Received unexpected event from the SessionLifecycleClient: " + msg);
            super.handleMessage(msg);
        }
    }

    private final Messenger a(Intent intent) {
        return Build.VERSION.SDK_INT >= 33 ? (Messenger) intent.getParcelableExtra("ClientCallbackMessenger", Messenger.class) : (Messenger) intent.getParcelableExtra("ClientCallbackMessenger");
    }

    @Override
    public IBinder onBind(Intent intent) {
        if (intent == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Service bound to new client on process ");
        sb2.append(intent.getAction());
        Messenger messengerA = a(intent);
        if (messengerA != null) {
            Message messageObtain = Message.obtain(null, 4, 0, 0);
            messageObtain.replyTo = messengerA;
            b bVar = this.messageHandler;
            if (bVar != null) {
                bVar.sendMessage(messageObtain);
            }
        }
        Messenger messenger = this.messenger;
        if (messenger != null) {
            return messenger.getBinder();
        }
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.handlerThread.start();
        Looper looper = this.handlerThread.getLooper();
        Intrinsics.g(looper, "handlerThread.looper");
        this.messageHandler = new b(looper);
        this.messenger = new Messenger(this.messageHandler);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.handlerThread.quit();
    }
}
