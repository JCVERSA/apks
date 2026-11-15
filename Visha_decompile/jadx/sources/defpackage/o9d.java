package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;

public class o9d implements ServiceConnection {
    public final Context b;
    public final Handler.Callback c;
    public Messenger d;
    public final Messenger e = new Messenger(new a());

    public class a extends Handler {
        public a() {
        }

        @Override
        public void handleMessage(Message message) {
            p6d.i("ReplyMessenger msg.what = " + message.what);
            if (o9d.this.c != null) {
                o9d.this.c.handleMessage(message);
            }
            o9d.c(o9d.this);
        }
    }

    public o9d(Context context, Handler.Callback callback) {
        this.b = context;
        this.c = callback;
    }

    public static void c(o9d o9dVar) {
        o9dVar.getClass();
        try {
            if (o9dVar.d != null) {
                o9dVar.d = null;
                o9dVar.b.unbindService(o9dVar);
            }
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
        }
    }

    public void b() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.hoffnung", "com.transsion.dataservice.binder.DCService");
            this.b.bindService(intent, this, 1);
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
        }
    }

    @Override
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        p6d.i("onServiceConnected");
        try {
            Message messageObtain = Message.obtain((Handler) null, 100);
            Bundle bundle = new Bundle();
            bundle.putString("key", "oneid");
            messageObtain.setData(bundle);
            messageObtain.replyTo = this.e;
            Messenger messenger = new Messenger(iBinder);
            this.d = messenger;
            messenger.send(messageObtain);
        } catch (Exception e) {
            p6d.m(Log.getStackTraceString(e));
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        p6d.i("onServiceDisconnected");
    }
}
