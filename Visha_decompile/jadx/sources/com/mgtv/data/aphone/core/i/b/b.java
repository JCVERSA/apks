package com.mgtv.data.aphone.core.i.b;

import com.mgtv.data.aphone.core.bean.TraceBasketBean;

public class b implements c {
    private static b a;
    private Object b = new Object();

    private b() {
        b();
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                try {
                    if (a == null) {
                        a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    private void b() {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "TraceLogRequestHandler  init()");
    }

    @Override
    public com.mgtv.data.aphone.core.i.a.c a(com.mgtv.data.aphone.core.i.a.b bVar) {
        if (bVar != null) {
            try {
                TraceBasketBean traceBasketBeanA = TraceBasketBean.a(bVar.b);
                if (traceBasketBeanA != null) {
                    a(traceBasketBeanA);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        byte[] bytes = "OK".getBytes();
        return new com.mgtv.data.aphone.core.i.a.c(new com.mgtv.data.aphone.core.i.a.a((byte) 20, bytes.length), bytes);
    }

    private void a(TraceBasketBean traceBasketBean) {
        synchronized (this.b) {
            com.mgtv.data.aphone.core.i.b.a().a(traceBasketBean.c(), traceBasketBean.d());
        }
    }
}
