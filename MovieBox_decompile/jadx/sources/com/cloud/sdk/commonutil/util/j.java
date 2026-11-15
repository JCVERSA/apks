package com.cloud.sdk.commonutil.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class j {

    public static final j f22537a = new j();

    private static final Map f22538b = new HashMap();

    private static final Map f22539c = new HashMap();

    private j() {
    }

    private final synchronized HandlerThread b(String str) {
        HandlerThread handlerThread;
        Map map = f22538b;
        handlerThread = (HandlerThread) map.get(str);
        if (handlerThread == null) {
            handlerThread = new HandlerThread(str);
            handlerThread.start();
            map.put(str, handlerThread);
        }
        return handlerThread;
    }

    public final synchronized Handler a(String threadName) {
        Handler handler;
        Looper looper;
        Intrinsics.h(threadName, "threadName");
        Map map = f22539c;
        handler = (Handler) map.get(threadName);
        if (handler == null && (looper = b(threadName).getLooper()) != null) {
            handler = new Handler(looper);
            map.put(threadName, handler);
        }
        return handler;
    }
}
