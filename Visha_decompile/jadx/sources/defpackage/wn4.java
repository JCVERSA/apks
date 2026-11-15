package defpackage;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map;

public final class wn4 {
    public static final wn4 a = new wn4();
    public static final Map b = new HashMap();
    public static final Map c = new HashMap();

    public final synchronized Handler a(String str) {
        Handler handler;
        Looper looper;
        y45.j(str, "threadName");
        Map map = c;
        handler = (Handler) map.get(str);
        if (handler == null && (looper = b(str).getLooper()) != null) {
            handler = new Handler(looper);
            map.put(str, handler);
        }
        return handler;
    }

    public final synchronized HandlerThread b(String str) {
        HandlerThread handlerThread;
        Map map = b;
        handlerThread = (HandlerThread) map.get(str);
        if (handlerThread == null) {
            handlerThread = new HandlerThread(str);
            handlerThread.start();
            map.put(str, handlerThread);
        }
        return handlerThread;
    }
}
