package com.doman.core.ig.proxy;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.mq.mgmi.client.message.n;
import com.mq.mgmi.client.message.q;
import com.transsion.push.PushConstants;
import defpackage.bmd;
import defpackage.cld;
import defpackage.ekd;
import defpackage.f9d;
import defpackage.ggd;
import defpackage.h6d;
import defpackage.hjd;
import defpackage.v7d;
import defpackage.yad;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.text.StringSubstitutor;

public class MqttAndroidClient extends BroadcastReceiver implements f9d {
    public static final ExecutorService a = Executors.newCachedThreadPool();
    public final b b;
    public MqttService c;
    public String d;
    public Context e;
    public bmd f;
    public ggd g;
    public volatile boolean h;
    private final SparseArray<ggd> i;
    private int j;
    private final String k;
    private final String l;
    private cld m;
    private hjd n;
    private i o;
    private final int p;
    private boolean q;
    private volatile boolean r;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {
        public static final int a = 1;
        public static final int b = 2;
        private static final int[] c = {1, 2};
    }

    public final class b implements ServiceConnection {
        final MqttAndroidClient a;

        @Override
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                if (iBinder instanceof g) {
                    this.a.c = ((g) iBinder).a;
                    MqttAndroidClient.a(this.a);
                    MqttAndroidClient.b(this.a);
                }
            } catch (Exception unused) {
            }
        }

        @Override
        public final void onServiceDisconnected(ComponentName componentName) {
            this.a.c = null;
        }
    }

    private synchronized ggd b(Bundle bundle) {
        return this.i.get(Integer.parseInt(bundle.getString("MqttService.activityToken")));
    }

    @Override
    public void close() {
        MqttService mqttService = this.c;
        if (mqttService != null) {
            if (this.d == null) {
                try {
                    this.d = mqttService.a(this.k, this.l, this.e.getApplicationInfo().packageName, this.m);
                } catch (Throwable unused) {
                }
            }
            try {
                e eVarB = this.c.b(this.d);
                eVarB.j.a("MqttConnection", "close()");
                try {
                    com.mq.mgmi.client.message.h hVar = eVarB.h;
                    if (hVar != null) {
                        hVar.close();
                    }
                } catch (n e) {
                    eVarB.a(new Bundle(), e);
                }
            } catch (Exception unused2) {
            }
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("MqttService.clientHandle");
        if (string == null || !string.equals(this.d)) {
            return;
        }
        String string2 = extras.getString("MqttService.callbackAction");
        if ("connect".equals(string2)) {
            ggd ggdVar = this.g;
            a(extras);
            a(ggdVar, extras);
            return;
        }
        if ("connectExtended".equals(string2)) {
            if (this.n instanceof ekd) {
                ((ekd) this.n).a(extras.getBoolean("MqttService.reconnect", false), extras.getString("MqttService.serverURI"));
                return;
            }
            return;
        }
        if ("messageArrived".equals(string2)) {
            if (this.n != null) {
                String string3 = extras.getString("MqttService.messageId");
                String string4 = extras.getString("MqttService.destinationName");
                ParcelableMqttMessage parcelableMqttMessage = (ParcelableMqttMessage) extras.getParcelable("MqttService.PARCEL");
                try {
                    if (this.p != a.a) {
                        parcelableMqttMessage.a = string3;
                        this.n.a(string4, parcelableMqttMessage);
                        return;
                    }
                    this.n.a(string4, parcelableMqttMessage);
                    MqttService mqttService = this.c;
                    if (mqttService.c.a(this.d, string3)) {
                        j jVar = j.OK;
                        return;
                    } else {
                        j jVar2 = j.OK;
                        return;
                    }
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        if (PushConstants.TOPIC_SUBSCRIBE.equals(string2)) {
            a(a(extras), extras);
            return;
        }
        if (PushConstants.TOPIC_UNSUBSCRIBE.equals(string2)) {
            a(a(extras), extras);
            return;
        }
        if ("send".equals(string2)) {
            a(b(extras), extras);
            return;
        }
        if ("messageDelivered".equals(string2)) {
            ggd ggdVarA = a(extras);
            if (ggdVarA == null || this.n == null || ((j) extras.getSerializable("MqttService.callbackStatus")) != j.OK || !(ggdVarA instanceof yad)) {
                return;
            }
            this.n.a((yad) ggdVarA);
            return;
        }
        if ("onConnectionLost".equals(string2)) {
            if (this.n != null) {
                this.n.a((Exception) extras.getSerializable("MqttService.exception"));
                return;
            }
            return;
        }
        if ("disconnect".equals(string2)) {
            this.d = null;
            ggd ggdVarA2 = a(extras);
            if (ggdVarA2 != null) {
                ((h) ggdVarA2).b();
            }
            hjd hjdVar = this.n;
            if (hjdVar != null) {
                hjdVar.a((Throwable) null);
                return;
            }
            return;
        }
        if (!"trace".equals(string2)) {
            MqttService mqttService2 = this.c;
            if (mqttService2 != null) {
                mqttService2.b("MqttService", "Callback action doesn't exist.");
                return;
            }
            return;
        }
        if (this.o != null) {
            String string5 = extras.getString("MqttService.traceSeverity");
            String string6 = extras.getString("MqttService.errorMessage");
            String string7 = extras.getString("MqttService.traceTag");
            if ("debug".equals(string5)) {
                this.o.a(string7, string6);
            } else if ("error".equals(string5)) {
                this.o.b(string7, string6);
            } else {
                this.o.a(string7, string6, (Exception) extras.getSerializable("MqttService.exception"));
            }
        }
    }

    private synchronized ggd a(Bundle bundle) {
        String string = bundle.getString("MqttService.activityToken");
        if (string == null) {
            return null;
        }
        int i = Integer.parseInt(string);
        ggd ggdVar = this.i.get(i);
        this.i.delete(i);
        return ggdVar;
    }

    public final String b() {
        return this.k;
    }

    public static void b(MqttAndroidClient mqttAndroidClient) {
        try {
            if (mqttAndroidClient.d == null) {
                mqttAndroidClient.d = mqttAndroidClient.c.a(mqttAndroidClient.k, mqttAndroidClient.l, mqttAndroidClient.e.getApplicationInfo().packageName, mqttAndroidClient.m);
            }
            MqttService mqttService = mqttAndroidClient.c;
            mqttService.b = mqttAndroidClient.q;
            mqttService.a = mqttAndroidClient.d;
            String strA = mqttAndroidClient.a(mqttAndroidClient.g);
            MqttService mqttService2 = mqttAndroidClient.c;
            String str = mqttAndroidClient.d;
            bmd bmdVar = mqttAndroidClient.f;
            e eVarB = mqttService2.b(str);
            eVarB.e = bmdVar;
            eVarB.g = strA;
            if (bmdVar.a) {
                eVarB.j.c.b(eVarB.f);
            }
            eVarB.j.a("MqttConnection", "Connecting {" + eVarB.b + "} as {" + eVarB.c + StringSubstitutor.DEFAULT_VAR_END);
            Bundle bundle = new Bundle();
            bundle.putString("MqttService.activityToken", strA);
            bundle.putString("MqttService.invocationContext", null);
            bundle.putString("MqttService.callbackAction", "connect");
            try {
                if (eVarB.d == null) {
                    File externalFilesDir = eVarB.j.getExternalFilesDir("MqttConnection");
                    if (externalFilesDir == null && (externalFilesDir = eVarB.j.getDir("MqttConnection", 0)) == null) {
                        bundle.putString("MqttService.errorMessage", "Error! No external and internal storage available");
                        bundle.putSerializable("MqttService.exception", new q());
                        eVarB.j.a(eVarB.f, j.ERROR, bundle);
                        return;
                    }
                    eVarB.d = new h6d(externalFilesDir.getAbsolutePath());
                }
                e.a aVar = new e.a(bundle, bundle) {
                    final Bundle a;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(e.this, bundle, (byte) 0);
                        this.a = bundle;
                    }

                    @Override
                    public final void onFailure(ggd ggdVar, Throwable th) {
                        this.a.putString("MqttService.errorMessage", th.getLocalizedMessage());
                        this.a.putSerializable("MqttService.exception", th);
                        e.this.j.b("MqttConnection", "connect fail, call connect to reconnect.reason:" + th.getMessage());
                        e.b(e.this, this.a);
                    }

                    @Override
                    public final void onSuccess(ggd ggdVar) {
                        e.this.a(this.a);
                        e.this.j.a("MqttConnection", "connect success!");
                    }
                };
                if (eVarB.h == null) {
                    eVarB.i = new com.doman.core.ig.proxy.a(eVarB.j);
                    com.mq.mgmi.client.message.h hVar = new com.mq.mgmi.client.message.h(eVarB.b, eVarB.c, eVarB.d, eVarB.i, e.a);
                    eVarB.h = hVar;
                    hVar.h(eVarB);
                    eVarB.j.a("MqttConnection", "Do Real connect!");
                    eVarB.a(true);
                    eVarB.h.e(eVarB.e, null, aVar);
                    return;
                }
                if (eVarB.m) {
                    eVarB.j.a("MqttConnection", "myClient != null and the client is connecting. Connect return directly.");
                    eVarB.j.a("MqttConnection", "Connect return:isConnecting:" + eVarB.m + ".disconnected:" + eVarB.k);
                    return;
                }
                if (!eVarB.k) {
                    eVarB.j.a("MqttConnection", "myClient != null and the client is connected and notify!");
                    eVarB.a(bundle);
                } else {
                    eVarB.j.a("MqttConnection", "myClient != null and the client is not connected");
                    eVarB.j.a("MqttConnection", "Do Real connect!");
                    eVarB.a(true);
                    eVarB.h.e(eVarB.e, null, aVar);
                }
            } catch (Exception e) {
                eVarB.j.b("MqttConnection", "Exception occurred attempting to connect: " + e.getMessage());
                eVarB.a(false);
                eVarB.a(bundle, e);
            }
        } catch (Throwable th) {
            v7d v7dVarD = mqttAndroidClient.g.d();
            if (v7dVarD != null) {
                v7dVarD.onFailure(mqttAndroidClient.g, th);
            }
        }
    }

    public final ggd a(String str) {
        h hVar = new h(this, null, new String[]{str});
        this.c.a(this.d, str, a(hVar));
        return hVar;
    }

    @Override
    public final String a() {
        return this.l;
    }

    public final synchronized String a(ggd ggdVar) {
        int i;
        this.i.put(this.j, ggdVar);
        i = this.j;
        this.j = i + 1;
        return Integer.toString(i);
    }

    public final void a(BroadcastReceiver broadcastReceiver) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("MqttService.callbackToActivity.v0");
        LocalBroadcastManager.getInstance(this.e).registerReceiver(broadcastReceiver, intentFilter);
        this.h = true;
    }

    private void a(ggd ggdVar, Bundle bundle) {
        if (ggdVar == null) {
            MqttService mqttService = this.c;
            if (mqttService != null) {
                mqttService.b("MqttService", "simpleAction : token is null");
                return;
            }
            return;
        }
        if (((j) bundle.getSerializable("MqttService.callbackStatus")) == j.OK) {
            ((h) ggdVar).b();
        } else {
            ((h) ggdVar).a((Exception) bundle.getSerializable("MqttService.exception"));
        }
    }

    public static boolean a(MqttAndroidClient mqttAndroidClient) {
        mqttAndroidClient.r = true;
        return true;
    }
}
