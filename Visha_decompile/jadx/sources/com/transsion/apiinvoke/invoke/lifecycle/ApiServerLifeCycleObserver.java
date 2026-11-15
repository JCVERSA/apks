package com.transsion.apiinvoke.invoke.lifecycle;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ApiServerLifeCycleObserver {
    private List<ApiServerLifeCycle> lifyCycles = Collections.synchronizedList(new ArrayList());

    public void onConnectTimeout() {
        synchronized (this.lifyCycles) {
            try {
                Iterator<ApiServerLifeCycle> it = this.lifyCycles.iterator();
                while (it.hasNext()) {
                    it.next().onError(0, "");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onServiceConnected() {
        synchronized (this.lifyCycles) {
            try {
                Iterator<ApiServerLifeCycle> it = this.lifyCycles.iterator();
                while (it.hasNext()) {
                    it.next().onConnected();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onServiceDisconnected() {
        synchronized (this.lifyCycles) {
            try {
                Iterator<ApiServerLifeCycle> it = this.lifyCycles.iterator();
                while (it.hasNext()) {
                    it.next().onDisConnected();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void registerLifeCycle(ApiServerLifeCycle apiServerLifeCycle) {
        if (!this.lifyCycles.contains(apiServerLifeCycle)) {
            this.lifyCycles.add(apiServerLifeCycle);
        }
    }

    public synchronized void unRegisterLifeCycle(ApiServerLifeCycle apiServerLifeCycle) {
        this.lifyCycles.remove(apiServerLifeCycle);
    }
}
