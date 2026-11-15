package com.doman.core.ig.proxy;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import defpackage.bmd;
import defpackage.cld;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.io.IOUtils;

@SuppressLint({"Registered"})
public class MqttService extends Service implements i {
    String a;
    d c;
    private b d;
    private a e;
    private g g;
    boolean b = false;
    private volatile boolean f = true;
    private Map<String, e> h = new ConcurrentHashMap();

    public class a extends BroadcastReceiver {
        private a() {
        }

        @Override
        public final void onReceive(Context context, Intent intent) {
            ConnectivityManager connectivityManager = (ConnectivityManager) MqttService.this.getSystemService("connectivity");
            MqttService.this.a("MqttService", "Reconnect since BroadcastReceiver.");
            if (!connectivityManager.getBackgroundDataSetting()) {
                MqttService.this.f = false;
                MqttService.a(MqttService.this);
            } else {
                if (MqttService.this.f) {
                    return;
                }
                MqttService.this.f = true;
                MqttService.this.a();
            }
        }

        public a(MqttService mqttService, byte b) {
            this();
        }
    }

    public class b extends BroadcastReceiver {
        private b() {
        }

        @Override
        @SuppressLint({"Wakelock"})
        public final void onReceive(Context context, Intent intent) {
            try {
                MqttService.this.a("MqttService", "Internal network status receive.");
                PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) MqttService.this.getSystemService("power")).newWakeLock(1, "MQTT");
                wakeLockNewWakeLock.acquire();
                MqttService.this.a("MqttService", "Reconnect for Network recovery.");
                if (MqttService.this.b()) {
                    MqttService.this.a("MqttService", "Online,reconnect.");
                    MqttService.this.a();
                } else {
                    MqttService.a(MqttService.this);
                }
                wakeLockNewWakeLock.release();
            } catch (Exception unused) {
            }
        }

        public b(MqttService mqttService, byte b) {
            this();
        }
    }

    public final String a(String str, String str2, String str3, cld cldVar) {
        String str4 = str + StringUtils.PROCESS_POSTFIX_DELIMITER + str2 + StringUtils.PROCESS_POSTFIX_DELIMITER + str3;
        if (!this.h.containsKey(str4)) {
            this.h.put(str4, new e(this, str, str2, cldVar, str4));
        }
        return str4;
    }

    public final e b(String str) {
        Map<String, e> map = this.h;
        e eVar = (map == null || map.isEmpty()) ? null : this.h.get(str);
        if (eVar != null) {
            return eVar;
        }
        throw new IllegalArgumentException("Invalid ClientHandle");
    }

    @Override
    public IBinder onBind(Intent intent) {
        String stringExtra = intent.getStringExtra("MqttService.activityToken");
        g gVar = this.g;
        gVar.b = stringExtra;
        return gVar;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.g = new g(this);
        this.c = new com.doman.core.ig.proxy.b(this, this);
    }

    @Override
    public void onDestroy() {
        for (e eVar : this.h.values()) {
            try {
                eVar.j.a("MqttConnection", "disconnect()");
                eVar.k = true;
                Bundle bundle = new Bundle();
                bundle.putString("MqttService.activityToken", null);
                bundle.putString("MqttService.invocationContext", null);
                bundle.putString("MqttService.callbackAction", "disconnect");
                com.mq.mgmi.client.message.h hVar = eVar.h;
                if (hVar == null || !hVar.k()) {
                    bundle.putString("MqttService.errorMessage", "not connected");
                    eVar.j.b("disconnect", "not connected");
                    eVar.j.a(eVar.f, j.ERROR, bundle);
                } else {
                    try {
                        eVar.h.d(new e.a(eVar, bundle, (byte) 0));
                    } catch (Exception e) {
                        eVar.a(bundle, e);
                    }
                }
                bmd bmdVar = eVar.e;
                eVar.a();
            } catch (Exception unused) {
            }
        }
        try {
            if (this.g != null) {
                this.g = null;
            }
            b bVar = this.d;
            if (bVar != null) {
                unregisterReceiver(bVar);
                this.d = null;
            }
            d dVar = this.c;
            if (dVar != null) {
                dVar.b();
            }
        } catch (Exception unused2) {
        }
        super.onDestroy();
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.d != null) {
            return 1;
        }
        b bVar = new b(this, (byte) 0);
        this.d = bVar;
        registerReceiver(bVar, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        return 1;
    }

    public final void a() {
        a("MqttService", "Reconnect to server, client size=" + this.h.size());
        for (e eVar : this.h.values()) {
            a("Reconnect Client:", eVar.c + IOUtils.DIR_SEPARATOR_UNIX + eVar.b);
            if (b()) {
                eVar.c();
            }
        }
    }

    @Override
    public final void b(String str, String str2) {
        b("error", str, str2);
    }

    public static void a(MqttService mqttService) {
        Iterator<e> it = mqttService.h.values().iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    private void b(String str, String str2, String str3) {
        if (this.a == null || !this.b) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "trace");
        bundle.putString("MqttService.traceSeverity", str);
        bundle.putString("MqttService.traceTag", str2);
        bundle.putString("MqttService.errorMessage", str3);
        a(this.a, j.ERROR, bundle);
    }

    public final void a(String str, j jVar, Bundle bundle) {
        Intent intent = new Intent("MqttService.callbackToActivity.v0");
        if (str != null) {
            intent.putExtra("MqttService.clientHandle", str);
        }
        intent.putExtra("MqttService.callbackStatus", jVar);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    public final boolean b() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected() && this.f;
    }

    @Override
    public final void a(String str, String str2) {
        b("debug", str, str2);
    }

    @Override
    public final void a(String str, String str2, Exception exc) {
        if (this.a != null) {
            Bundle bundle = new Bundle();
            bundle.putString("MqttService.callbackAction", "trace");
            bundle.putString("MqttService.traceSeverity", "exception");
            bundle.putString("MqttService.errorMessage", str2);
            bundle.putSerializable("MqttService.exception", exc);
            bundle.putString("MqttService.traceTag", str);
            a(this.a, j.ERROR, bundle);
        }
    }

    public final void a(String str, String str2, String str3) {
        b(str).a(str2, str3);
    }

    public final boolean a(String str) {
        try {
            com.mq.mgmi.client.message.h hVar = b(str).h;
            return hVar != null && hVar.k();
        } catch (Exception unused) {
        }
    }
}
