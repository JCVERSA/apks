package com.mq.mgmi.client.message.internal;

import defpackage.bud;
import defpackage.es6;
import defpackage.f9d;
import defpackage.g6d;
import defpackage.wr6;
import defpackage.xr6;
import java.util.concurrent.ExecutorService;

public abstract class ClientComms {
    public final String a;
    public ExecutorService b;

    public class ConnectBG implements Runnable {
        ClientComms clientComms;
        wr6 conPacket;
        bud conToken;
        final ClientComms this$0;
        private String threadName;

        public ConnectBG(ClientComms clientComms, ClientComms clientComms2, bud budVar, wr6 wr6Var, ExecutorService executorService) {
            this.conToken = budVar;
            this.threadName = "MQTT Con: " + clientComms.e().a();
        }

        @Override
        public void run() {
            Thread.currentThread().setName(this.threadName);
            ClientComms.c(this.this$0);
            String unused = this.this$0.a;
            throw null;
        }

        public void start() {
            if (this.this$0.b == null) {
                new Thread(this).start();
            } else {
                this.this$0.b.execute(this);
            }
        }
    }

    public class DisconnectBG implements Runnable {
        xr6 disconnect;
        long quiesceTimeout;
        final ClientComms this$0;
        private String threadName;
        bud token;

        public DisconnectBG(ClientComms clientComms, xr6 xr6Var, long j, bud budVar, ExecutorService executorService) {
            this.quiesceTimeout = j;
            this.token = budVar;
        }

        @Override
        public void run() {
            Thread.currentThread().setName(this.threadName);
            ClientComms.c(this.this$0);
            String unused = this.this$0.a;
            throw null;
        }

        public void start() {
            this.threadName = "MQTT Disc: " + this.this$0.e().a();
            if (this.this$0.b == null) {
                new Thread(this).start();
            } else {
                this.this$0.b.execute(this);
            }
        }
    }

    public static g6d c(ClientComms clientComms) {
        clientComms.getClass();
        return null;
    }

    public abstract void d(int i);

    public abstract f9d e();

    public abstract void f(es6 es6Var, bud budVar);
}
