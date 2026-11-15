package com.facebook.biddingkit.logging;

import android.os.Handler;
import android.os.Looper;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

class EventLogDispatcher {

    private static volatile EventLogDispatcher f23449g;

    private int f23450a;

    private i f23455f;

    private final Handler f23451b = new Handler(Looper.getMainLooper());

    private final ThreadPoolExecutor f23454e = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

    private final Runnable f23452c = new Runnable() {
        @Override
        public void run() {
            EventLogDispatcher.this.g();
            EventLogDispatcher.this.f23451b.postDelayed(EventLogDispatcher.this.f23453d, EventLogDispatcher.this.f23450a);
        }
    };

    private final Runnable f23453d = new Runnable() {
        @Override
        public void run() {
            if (EventLogDispatcher.this.f23454e.getQueue().isEmpty()) {
                EventLogDispatcher.this.f23454e.execute(EventLogDispatcher.this.f23452c);
            }
        }
    };

    private EventLogDispatcher() {
    }

    public void g() {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            List listE = f.e(10);
            if (listE != null && !listE.isEmpty()) {
                Iterator it = listE.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((e) it.next()).m());
                }
                jSONObject.put("tokens", a.a());
                jSONObject.put("events", jSONArray);
                n8.e eVarB = o8.b.b(this.f23455f.b(), 2000, jSONObject.toString());
                if (eVarB == null || eVarB.a() != 200) {
                    this.f23450a = this.f23455f.c();
                } else {
                    this.f23450a = this.f23455f.a();
                }
                Iterator it2 = listE.iterator();
                while (it2.hasNext()) {
                    f.b(((e) it2.next()).k());
                }
            }
        } catch (Throwable th2) {
            b.b("EventLogDispatcher", "Failed dispatching events", th2);
        }
    }

    public static EventLogDispatcher h() {
        if (f23449g == null) {
            synchronized (EventLogDispatcher.class) {
                try {
                    if (f23449g == null) {
                        f23449g = new EventLogDispatcher();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f23449g;
    }

    public static void j(i iVar) {
        h().i(iVar);
        h().k();
    }

    public void i(i iVar) {
        this.f23455f = iVar;
        this.f23450a = iVar.a();
    }

    protected void k() {
        this.f23451b.postDelayed(this.f23453d, this.f23450a);
    }
}
