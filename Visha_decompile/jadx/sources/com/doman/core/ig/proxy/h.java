package com.doman.core.ig.proxy;

import com.mq.mgmi.client.message.n;
import defpackage.es6;
import defpackage.f9d;
import defpackage.ggd;
import defpackage.v7d;

public class h implements ggd {
    public ggd a;
    private v7d b;
    private volatile boolean c;
    private volatile n d;
    private Object e;
    private MqttAndroidClient f;
    private Object g;
    private String[] h;
    private n i;

    public h(MqttAndroidClient mqttAndroidClient, v7d v7dVar) {
        this(mqttAndroidClient, v7dVar, null);
    }

    public final void a(Throwable th) {
        synchronized (this.e) {
            try {
                this.c = true;
                this.i = th instanceof n ? (n) th : new n(th);
                this.e.notifyAll();
                if (th instanceof n) {
                    this.d = (n) th;
                }
                v7d v7dVar = this.b;
                if (v7dVar != null) {
                    v7dVar.onFailure(this, th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b() {
        synchronized (this.e) {
            try {
                this.c = true;
                this.e.notifyAll();
                v7d v7dVar = this.b;
                if (v7dVar != null) {
                    v7dVar.onSuccess(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final f9d c() {
        return this.f;
    }

    @Override
    public final v7d d() {
        return this.b;
    }

    @Override
    public final int e() {
        ggd ggdVar = this.a;
        if (ggdVar != null) {
            return ggdVar.e();
        }
        return 0;
    }

    @Override
    public final es6 f() {
        return this.a.f();
    }

    public h(MqttAndroidClient mqttAndroidClient, v7d v7dVar, String[] strArr) {
        this.e = new Object();
        this.f = mqttAndroidClient;
        this.g = null;
        this.b = v7dVar;
        this.h = strArr;
    }
}
