package com.blankj.utilcode.util;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import defpackage.ubc;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class MessengerUtils {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();
    public static final Map b = new HashMap();

    public static class ServerService extends Service {
        public final ConcurrentHashMap b = new ConcurrentHashMap();
        public final Handler c;
        public final Messenger d;

        public class a extends Handler {
            public a() {
            }

            @Override
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    ServerService.this.b.put(Integer.valueOf(message.arg1), message.replyTo);
                    return;
                }
                if (i == 1) {
                    ServerService.this.b.remove(Integer.valueOf(message.arg1));
                } else if (i != 2) {
                    super.handleMessage(message);
                } else {
                    ServerService.this.e(message);
                    ServerService.this.d(message);
                }
            }
        }

        public ServerService() {
            a aVar = new a();
            this.c = aVar;
            this.d = new Messenger(aVar);
        }

        public final void d(Message message) {
            String string;
            Bundle data = message.getData();
            if (data == null || (string = data.getString("MESSENGER_UTILS")) == null) {
                return;
            }
            ubc.a(MessengerUtils.a.get(string));
        }

        public final void e(Message message) {
            Message messageObtain = Message.obtain(message);
            for (Messenger messenger : this.b.values()) {
                if (messenger != null) {
                    try {
                        messenger.send(Message.obtain(messageObtain));
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
            messageObtain.recycle();
        }

        @Override
        public IBinder onBind(Intent intent) {
            return this.d.getBinder();
        }

        @Override
        public int onStartCommand(Intent intent, int i, int i2) {
            Bundle extras;
            startForeground(1, h.r(d.a.b, null));
            if (intent != null && (extras = intent.getExtras()) != null) {
                Message messageObtain = Message.obtain(this.c, 2);
                messageObtain.replyTo = this.d;
                messageObtain.setData(extras);
                e(messageObtain);
                d(messageObtain);
            }
            return 2;
        }
    }
}
