package com.transsion.sdk.oneid;

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

public class d implements ServiceConnection {

    private final Context f49907a;

    private final Handler.Callback f49908b;

    private Messenger f49909c;

    private final Messenger f49910d = new Messenger(new a());

    class a extends Handler {
        a() {
        }

        @Override
        public void handleMessage(Message message) {
            b.i("ReplyMessenger msg.what = " + message.what);
            if (d.this.f49908b != null) {
                d.this.f49908b.handleMessage(message);
            }
            d.c(d.this);
        }
    }

    public d(Context context, Handler.Callback callback) {
        this.f49907a = context;
        this.f49908b = callback;
    }

    static void c(d dVar) {
        dVar.getClass();
        try {
            if (dVar.f49909c != null) {
                dVar.f49909c = null;
                dVar.f49907a.unbindService(dVar);
            }
        } catch (Exception e10) {
            b.m(Log.getStackTraceString(e10));
        }
    }

    public void b() {
        try {
            Intent intent = new Intent();
            intent.setClassName("com.hoffnung", "com.transsion.dataservice.binder.DCService");
            this.f49907a.bindService(intent, this, 1);
        } catch (Exception e10) {
            b.m(Log.getStackTraceString(e10));
        }
    }

    @Override
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        b.i("onServiceConnected");
        try {
            Message messageObtain = Message.obtain((Handler) null, 100);
            Bundle bundle = new Bundle();
            bundle.putString("key", "oneid");
            messageObtain.setData(bundle);
            messageObtain.replyTo = this.f49910d;
            Messenger messenger = new Messenger(iBinder);
            this.f49909c = messenger;
            messenger.send(messageObtain);
        } catch (Exception e10) {
            b.m(Log.getStackTraceString(e10));
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        b.i("onServiceDisconnected");
    }
}
