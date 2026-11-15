package com.transsion.apiinvoke.invoke.interceptor;

import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class InterceptorManager implements InvokeInterceptor, InvokeInterceptor2 {
    private List<InvokeInterceptor> interceptors = new CopyOnWriteArrayList();
    private List<InvokeInterceptor2> interceptor2s = new CopyOnWriteArrayList();

    public static class InterceptorManagerHolder {
        private static final InterceptorManager holder = new InterceptorManager();

        private InterceptorManagerHolder() {
        }
    }

    public static InterceptorManager getInstance() {
        return InterceptorManagerHolder.holder;
    }

    public void addInterceptor(InvokeInterceptor invokeInterceptor) {
        synchronized (this.interceptors) {
            try {
                if (this.interceptors.contains(invokeInterceptor)) {
                    return;
                }
                this.interceptors.add(invokeInterceptor);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addInterceptor2(InvokeInterceptor2 invokeInterceptor2) {
        synchronized (this.interceptors) {
            try {
                if (this.interceptor2s.contains(invokeInterceptor2)) {
                    return;
                }
                this.interceptor2s.add(invokeInterceptor2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean processChain(InvokeChain invokeChain) {
        synchronized (this.interceptors) {
            try {
                Iterator<InvokeInterceptor> it = this.interceptors.iterator();
                while (it.hasNext()) {
                    if (!it.next().processChain(invokeChain)) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public ApiResponse processChainV2(InvokeChain invokeChain) {
        synchronized (this.interceptors) {
            try {
                for (InvokeInterceptor invokeInterceptor : this.interceptors) {
                    if (!invokeInterceptor.processChain(invokeChain)) {
                        return ApiResponse.onInterceptorDined(invokeInterceptor.getClass().getName());
                    }
                }
                return ApiResponse.success(Boolean.TRUE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void removeInterceptor(InvokeInterceptor invokeInterceptor) {
        synchronized (this.interceptors) {
            this.interceptors.remove(invokeInterceptor);
        }
    }

    public void removeInterceptor2(InvokeInterceptor2 invokeInterceptor2) {
        synchronized (this.interceptor2s) {
            this.interceptor2s.remove(invokeInterceptor2);
        }
    }
}
