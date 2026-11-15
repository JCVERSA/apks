package com.doman.core.ig.proxy;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mq.mgmi.client.message.internal.ClientComms;
import defpackage.ord;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

final class a implements ord {
    private static final ExecutorService a = Executors.newSingleThreadExecutor();
    private ClientComms b;
    private MqttService c;
    private BroadcastReceiver d;
    private a e;
    private volatile boolean f = false;

    public class C0068a extends BroadcastReceiver {
        private final String b;
        private Runnable c = new Runnable() {
            @Override
            public final void run() {
            }
        };

        public C0068a() {
            this.b = "MqttService.client." + a.this.e.b.e().a();
        }

        @Override
        public final void onReceive(Context context, Intent intent) {
        }
    }

    public a(MqttService mqttService) {
        if (mqttService == null) {
            throw new IllegalArgumentException("Neither service nor client can be null.");
        }
        this.c = mqttService;
        this.e = this;
    }

    public final void a() {
        this.f = true;
    }

    public final void a(ClientComms clientComms) {
        this.d = new C0068a();
    }
}
