package com.tn.lib.thread;

import android.os.MessageQueue;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public interface a extends MessageQueue.IdleHandler {

    public static final C0559a f39897a = C0559a.f39898a;

    public static final class C0559a {

        static final C0559a f39898a = new C0559a();

        private static final List f39899b = new CopyOnWriteArrayList();

        private C0559a() {
        }

        public final List a() {
            return f39899b;
        }
    }
}
