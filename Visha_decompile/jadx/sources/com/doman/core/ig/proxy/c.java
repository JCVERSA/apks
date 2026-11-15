package com.doman.core.ig.proxy;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;

public final class c {
    static a a;
    public final Handler b;

    public interface a {
        void a(Message message);

        void b(Message message);
    }

    public c(a aVar) {
        a = aVar;
        this.b = new Handler(Looper.getMainLooper()) {
            @Override
            public final void handleMessage(@NonNull Message message) {
                a aVar2;
                if (message != null) {
                    int i = message.what;
                    if (i != 190) {
                        if (i == 192 && (aVar2 = c.a) != null) {
                            aVar2.a(message);
                            return;
                        }
                        return;
                    }
                    a aVar3 = c.a;
                    if (aVar3 != null) {
                        aVar3.b(message);
                    }
                }
            }
        };
    }

    public final Message a() {
        Handler handler = this.b;
        Message messageObtainMessage = handler != null ? handler.obtainMessage() : null;
        if (messageObtainMessage == null) {
            messageObtainMessage = new Message();
        }
        messageObtainMessage.what = 192;
        return messageObtainMessage;
    }

    public final void a(Message message, long j) {
        Handler handler = this.b;
        if (handler != null) {
            handler.sendMessageDelayed(message, j);
        }
    }
}
