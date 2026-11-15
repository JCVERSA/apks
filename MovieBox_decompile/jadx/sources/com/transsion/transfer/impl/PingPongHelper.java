package com.transsion.transfer.impl;

import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Stack;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.jvm.internal.Intrinsics;

public final class PingPongHelper {

    private final String f53542a;

    private final boolean f53543b;

    private final com.transsion.transfer.androidasync.http.b0 f53544c;

    private final a f53545d;

    private final Stack f53546e;

    private boolean f53547f;

    private int f53548g;

    private final int f53549h;

    private final Timer f53550i;

    private final PingPongHelper$task$1 f53551j;

    public interface a {
        void a(String str, com.transsion.transfer.androidasync.http.b0 b0Var);
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.transsion.transfer.impl.PingPongHelper$task$1] */
    public PingPongHelper(String remoteIP, boolean z10, com.transsion.transfer.androidasync.http.b0 socket, a pingPongListener) {
        Intrinsics.h(remoteIP, "remoteIP");
        Intrinsics.h(socket, "socket");
        Intrinsics.h(pingPongListener, "pingPongListener");
        this.f53542a = remoteIP;
        this.f53543b = z10;
        this.f53544c = socket;
        this.f53545d = pingPongListener;
        this.f53546e = new Stack();
        this.f53549h = 2;
        socket.D(new com.transsion.transfer.androidasync.http.b0.b() {
            @Override
            public final void a(String str) {
                PingPongHelper.b(this.f53683a, str);
            }
        });
        this.f53550i = new Timer();
        this.f53551j = new TimerTask() {
            @Override
            public void run() {
                if (this.this$0.f53548g >= this.this$0.f53549h) {
                    this.this$0.f53545d.a(this.this$0.f53542a, this.this$0.f53544c);
                    this.this$0.f53547f = true;
                }
                if (this.this$0.f53547f) {
                    return;
                }
                String strM = this.this$0.m();
                this.this$0.f53546e.push(strM);
                this.this$0.f53544c.x(strM);
                this.this$0.f53548g++;
                if (this.this$0.f53546e.size() > this.this$0.f53549h) {
                    this.this$0.f53546e.remove(0);
                }
            }
        };
    }

    public static final void b(PingPongHelper pingPongHelper, String str) {
        pingPongHelper.f53548g = 0;
        pingPongHelper.f53546e.remove(str);
    }

    public final String m() {
        return (this.f53543b ? TmcConstants.CHANNEL_REQUEST_SERVER : "client") + "-" + System.currentTimeMillis();
    }

    public final void n() {
        this.f53550i.schedule(this.f53551j, 0L, 2000L);
    }

    public final void o() {
        this.f53547f = true;
        cancel();
        this.f53550i.cancel();
    }
}
