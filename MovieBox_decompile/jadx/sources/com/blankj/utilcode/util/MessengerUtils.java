package com.blankj.utilcode.util;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class MessengerUtils {

    private static ConcurrentHashMap f19394a = new ConcurrentHashMap();

    private static Map f19395b = new HashMap();

    public static class ServerService extends Service {

        private final ConcurrentHashMap f19396a = new ConcurrentHashMap();

        private final Handler f19397b;

        private final Messenger f19398c;

        class a extends Handler {
            a() {
            }

            @Override
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 0) {
                    ServerService.this.f19396a.put(Integer.valueOf(message.arg1), message.replyTo);
                    return;
                }
                if (i10 == 1) {
                    ServerService.this.f19396a.remove(Integer.valueOf(message.arg1));
                } else if (i10 != 2) {
                    super.handleMessage(message);
                } else {
                    ServerService.this.e(message);
                    ServerService.this.d(message);
                }
            }
        }

        public ServerService() {
            a aVar = new a();
            this.f19397b = aVar;
            this.f19398c = new Messenger(aVar);
        }

        public void d(Message message) {
            String string;
            Bundle data = message.getData();
            if (data == null || (string = data.getString("MESSENGER_UTILS")) == null) {
                return;
            }
            android.support.v4.media.session.c.a(MessengerUtils.f19394a.get(string));
        }

        public void e(Message message) {
            Message messageObtain = Message.obtain(message);
            for (Messenger messenger : this.f19396a.values()) {
                if (messenger != null) {
                    try {
                        messenger.send(Message.obtain(messageObtain));
                    } catch (RemoteException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            messageObtain.recycle();
        }

        @Override
        public IBinder onBind(Intent intent) {
            return this.f19398c.getBinder();
        }

        @Override
        public int onStartCommand(Intent intent, int i10, int i11) {
            Bundle extras;
            if (Build.VERSION.SDK_INT >= 26) {
                startForeground(1, e0.q(s.a.f19478b, null));
            }
            if (intent != null && (extras = intent.getExtras()) != null) {
                Message messageObtain = Message.obtain(this.f19397b, 2);
                messageObtain.replyTo = this.f19398c;
                messageObtain.setData(extras);
                e(messageObtain);
                d(messageObtain);
            }
            return 2;
        }
    }
}
