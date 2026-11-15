package com.mbridge.msdk.foundation.same.task;

import android.annotation.SuppressLint;
import android.content.Context;
import com.mbridge.msdk.foundation.tools.q0;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class b {

    ThreadPoolExecutor f34802a;

    HashMap<Long, com.mbridge.msdk.foundation.same.task.a> f34803b;

    WeakReference<Context> f34804c;

    class a implements com.mbridge.msdk.foundation.same.task.a.InterfaceC0467a {

        final com.mbridge.msdk.foundation.same.task.a f34805a;

        final com.mbridge.msdk.foundation.same.task.a.InterfaceC0467a f34806b;

        a(com.mbridge.msdk.foundation.same.task.a aVar, com.mbridge.msdk.foundation.same.task.a.InterfaceC0467a interfaceC0467a) {
            this.f34805a = aVar;
            this.f34806b = interfaceC0467a;
        }

        @Override
        public void a(com.mbridge.msdk.foundation.same.task.a.b bVar) {
            if (bVar == com.mbridge.msdk.foundation.same.task.a.b.CANCEL || bVar == com.mbridge.msdk.foundation.same.task.a.b.FINISH) {
                b.this.f34803b.remove(Long.valueOf(this.f34805a.getId()));
            } else if (bVar == com.mbridge.msdk.foundation.same.task.a.b.RUNNING && b.this.f34804c.get() == null) {
                b.this.a();
            }
            com.mbridge.msdk.foundation.same.task.a.InterfaceC0467a interfaceC0467a = this.f34806b;
            if (interfaceC0467a != null) {
                interfaceC0467a.a(bVar);
            }
        }
    }

    @SuppressLint({"UseSparseArrays"})
    public b(Context context, int i10) {
        if (q0.a().a("c_t_l_t_p", true)) {
            this.f34802a = c.b();
        } else {
            if (i10 == 0) {
                this.f34802a = new ThreadPoolExecutor(1, 5, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            } else {
                this.f34802a = new ThreadPoolExecutor(i10, (i10 * 2) + 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            }
            this.f34802a.allowCoreThreadTimeOut(true);
        }
        this.f34803b = new HashMap<>();
        this.f34804c = new WeakReference<>(context);
    }

    public void a(com.mbridge.msdk.foundation.same.task.a aVar) {
        a(aVar, null);
        this.f34802a.execute(aVar);
    }

    public void b(com.mbridge.msdk.foundation.same.task.a aVar, com.mbridge.msdk.foundation.same.task.a.InterfaceC0467a interfaceC0467a) {
        a(aVar, interfaceC0467a);
        this.f34802a.execute(aVar);
    }

    private synchronized void a(com.mbridge.msdk.foundation.same.task.a aVar, com.mbridge.msdk.foundation.same.task.a.InterfaceC0467a interfaceC0467a) {
        this.f34803b.put(Long.valueOf(aVar.getId()), aVar);
        aVar.setOnStateChangeListener(new a(aVar, interfaceC0467a));
    }

    public synchronized void a() {
        try {
            Iterator<Map.Entry<Long, com.mbridge.msdk.foundation.same.task.a>> it = this.f34803b.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().cancel();
            }
            this.f34803b.clear();
        } catch (Exception unused) {
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @SuppressLint({"UseSparseArrays"})
    public b(Context context) {
        if (q0.a().a("c_t_l_t_p", true)) {
            this.f34802a = c.b();
        } else {
            if (q0.a().a("c_t_p_t_l", true)) {
                int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() * 2) + 1;
                this.f34802a = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            } else {
                this.f34802a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
            }
            this.f34802a.allowCoreThreadTimeOut(true);
        }
        this.f34803b = new HashMap<>();
        this.f34804c = new WeakReference<>(context);
    }
}
