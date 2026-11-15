package com.doman.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class a {
    private static a c;
    public List<Object> a = new ArrayList();
    public HandlerC0055a b = new HandlerC0055a(Looper.myLooper(), this);

    public static class HandlerC0055a extends Handler {
        WeakReference<a> a;

        public HandlerC0055a(Looper looper, a aVar) {
            super(looper);
            this.a = new WeakReference<>(aVar);
        }

        @Override
        public final void handleMessage(Message message) {
            a aVar;
            super.handleMessage(message);
            WeakReference<a> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null || message.what != 1 || (aVar = this.a.get()) == null) {
                return;
            }
            try {
                a.a(aVar);
            } catch (Exception unused) {
            }
        }
    }

    public static class b {
        public JSONObject a;
    }

    private a() {
    }

    public static a a() {
        if (c == null) {
            synchronized (a.class) {
                try {
                    if (c == null) {
                        c = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public static void a(a aVar) {
        int size = aVar.a.size();
        for (int i = 0; i < size; i++) {
            aVar.a.get(i);
        }
    }
}
