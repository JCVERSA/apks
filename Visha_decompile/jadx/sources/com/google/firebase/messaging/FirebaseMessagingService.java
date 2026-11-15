package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.transsion.push.PushConstants;
import defpackage.he9;
import defpackage.iw8;
import defpackage.nc2;
import defpackage.np3;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ExecutorService;

public class FirebaseMessagingService extends EnhancedIntentService {
    public static final Queue h = new ArrayDeque(10);
    public iw8 g;

    @Override
    public Intent e(Intent intent) {
        return he9.b().c();
    }

    @Override
    public void f(Intent intent) {
        String action = intent.getAction();
        if ("com.google.android.c2dm.intent.RECEIVE".equals(action) || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(action)) {
            p(intent);
            return;
        }
        if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
            t(intent.getStringExtra("token"));
            return;
        }
        Log.d("FirebaseMessaging", "Unknown intent action: " + intent.getAction());
    }

    public final boolean l(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Queue queue = h;
        if (!queue.contains(str)) {
            if (queue.size() >= 10) {
                queue.remove();
            }
            queue.add(str);
            return false;
        }
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return true;
        }
        Log.d("FirebaseMessaging", "Received duplicate message: " + str);
        return true;
    }

    public final void m(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = new Bundle();
        }
        extras.remove("androidx.content.wakelockid");
        if (c.t(extras)) {
            c cVar = new c(extras);
            ExecutorService executorServiceE = np3.e();
            try {
                if (new nc2(this, cVar, executorServiceE).a()) {
                    executorServiceE.shutdown();
                    return;
                } else {
                    executorServiceE.shutdown();
                    if (b.D(intent)) {
                        b.w(intent);
                    }
                }
            } catch (Throwable th) {
                executorServiceE.shutdown();
                throw th;
            }
        }
        r(new RemoteMessage(extras));
    }

    public final String n(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        return stringExtra == null ? intent.getStringExtra(PushConstants.EXTRA_PUSH_MESSAGE_ID) : stringExtra;
    }

    public final iw8 o(Context context) {
        if (this.g == null) {
            this.g = new iw8(context.getApplicationContext());
        }
        return this.g;
    }

    public final void p(Intent intent) {
        if (!l(intent.getStringExtra("google.message_id"))) {
            v(intent);
        }
        o(this).b(new CloudMessage(intent));
    }

    public void q() {
    }

    public void r(RemoteMessage remoteMessage) {
    }

    public void s(String str) {
    }

    public void t(String str) {
    }

    public void u(String str, Exception exc) {
    }

    public final void v(Intent intent) {
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_PUSH_MESSAGE_TYPE);
        if (stringExtra == null) {
            stringExtra = "gcm";
        }
        switch (stringExtra) {
            case "deleted_messages":
                q();
                break;
            case "gcm":
                b.y(intent);
                m(intent);
                break;
            case "send_error":
                u(n(intent), new SendException(intent.getStringExtra("error")));
                break;
            case "send_event":
                s(intent.getStringExtra("google.message_id"));
                break;
            default:
                Log.w("FirebaseMessaging", "Received message with unknown type: " + stringExtra);
                break;
        }
    }
}
