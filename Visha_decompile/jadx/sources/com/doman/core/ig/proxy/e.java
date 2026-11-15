package com.doman.core.ig.proxy;

import android.os.Bundle;
import android.os.PowerManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.mq.mgmi.client.message.n;
import com.transsion.push.PushConstants;
import defpackage.bmd;
import defpackage.cld;
import defpackage.ekd;
import defpackage.f6d;
import defpackage.ggd;
import defpackage.tod;
import defpackage.v7d;
import defpackage.yad;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import org.apache.commons.text.StringSubstitutor;

public final class e implements ekd {
    static final ScheduledExecutorService a = Executors.newScheduledThreadPool(4, new ThreadFactory() {
        @Override
        public final Thread newThread(@NonNull Runnable runnable) {
            return new Thread(runnable, "mgtv_mqttc");
        }
    });
    String b;
    String c;
    cld d;
    bmd e;
    String f;
    MqttService j;
    private String s;
    private f6d t;
    String g = null;
    com.mq.mgmi.client.message.h h = null;
    com.doman.core.ig.proxy.a i = null;
    volatile boolean k = true;
    boolean l = true;
    volatile boolean m = false;
    private Map<yad, String> n = new HashMap();
    private Map<yad, tod> o = new HashMap();
    private Map<yad, String> p = new HashMap();
    private Map<yad, String> q = new HashMap();
    private PowerManager.WakeLock r = null;

    public class a implements v7d {
        private final Bundle a;

        private a(Bundle bundle) {
            this.a = bundle;
        }

        @Override
        public void onFailure(ggd ggdVar, Throwable th) {
            this.a.putString("MqttService.errorMessage", th.getLocalizedMessage());
            this.a.putSerializable("MqttService.exception", th);
            e.this.j.a(e.this.f, j.ERROR, this.a);
        }

        @Override
        public void onSuccess(ggd ggdVar) {
            e.this.j.a(e.this.f, j.OK, this.a);
        }

        public a(e eVar, Bundle bundle, byte b) {
            this(bundle);
        }
    }

    public e(MqttService mqttService, String str, String str2, cld cldVar, String str3) {
        this.d = null;
        this.j = null;
        this.s = null;
        this.b = str;
        this.j = mqttService;
        this.c = str2;
        this.d = cldVar;
        this.f = str3;
        this.s = e.class.getCanonicalName() + " " + str2 + " on host " + str;
    }

    private static Bundle a(String str, String str2, tod todVar) {
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.messageId", str);
        bundle.putString("MqttService.destinationName", str2);
        bundle.putParcelable("MqttService.PARCEL", new ParcelableMqttMessage(todVar));
        return bundle;
    }

    private void d() {
        Iterator<d.a> itA = this.j.c.a(this.f);
        while (itA.hasNext()) {
            d.a next = itA.next();
            Bundle bundleA = a(next.a(), next.b(), next.c());
            bundleA.putString("MqttService.callbackAction", "messageArrived");
            this.j.a(this.f, j.OK, bundleA);
        }
    }

    private void e() {
        try {
            if (this.r == null) {
                this.r = ((PowerManager) this.j.getSystemService("power")).newWakeLock(1, this.s);
            }
            this.r.acquire();
        } catch (Exception unused) {
        }
    }

    public final synchronized void c() {
        try {
            if (this.h == null) {
                this.j.b("MqttConnection", "Reconnect myClient = null. Will not do reconnect");
                return;
            }
            if (this.m) {
                this.j.a("MqttConnection", "The client is connecting. Reconnect return directly.");
                return;
            }
            if (!this.j.b()) {
                this.j.a("MqttConnection", "The network is not reachable. Will not do reconnect");
                return;
            }
            if (this.e.b) {
                Log.i("MqttConnection", "Requesting Automatic reconnect using New Java AC");
                Bundle bundle = new Bundle();
                bundle.putString("MqttService.activityToken", this.g);
                bundle.putString("MqttService.invocationContext", null);
                bundle.putString("MqttService.callbackAction", "connect");
                try {
                    this.h.n();
                    return;
                } catch (n e) {
                    Log.e("MqttConnection", "Exception occurred attempting to reconnect: " + e.getMessage());
                    a(false);
                    a(bundle, e);
                    return;
                }
            }
            if (this.k && !this.l) {
                this.j.a("MqttConnection", "Do Real Reconnect!");
                final Bundle bundle2 = new Bundle();
                bundle2.putString("MqttService.activityToken", this.g);
                bundle2.putString("MqttService.invocationContext", null);
                bundle2.putString("MqttService.callbackAction", "connect");
                try {
                    try {
                        this.h.e(this.e, null, new a(bundle2) {
                            {
                                byte b = 0;
                            }

                            @Override
                            public final void onFailure(ggd ggdVar, Throwable th) {
                                bundle2.putString("MqttService.errorMessage", th.getLocalizedMessage());
                                bundle2.putSerializable("MqttService.exception", th);
                                e.this.j.a(e.this.f, j.ERROR, bundle2);
                                e.b(e.this, bundle2);
                            }

                            @Override
                            public final void onSuccess(ggd ggdVar) {
                                e.this.j.a("MqttConnection", "Reconnect Success!");
                                e.this.j.a("MqttConnection", "DeliverBacklog when reconnect.");
                                e.this.a(bundle2);
                            }
                        });
                        a(true);
                        return;
                    } catch (Exception e2) {
                        this.j.b("MqttConnection", "Cannot reconnect to remote server." + e2.getMessage());
                        a(false);
                        a(bundle2, new n(6, e2.getCause()));
                    }
                } catch (n e3) {
                    this.j.b("MqttConnection", "Cannot reconnect to remote server." + e3.getMessage());
                    a(false);
                    a(bundle2, e3);
                    return;
                }
            }
            return;
            throw th;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b() {
        if (this.k || this.l) {
            return;
        }
        a(new Exception("Android offline"));
    }

    public static void b(e eVar, Bundle bundle) {
        eVar.e();
        eVar.k = true;
        eVar.a(false);
        eVar.j.a(eVar.f, j.ERROR, bundle);
        eVar.a();
    }

    public final yad a(String str, byte[] bArr, int i, boolean z, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "send");
        bundle.putString("MqttService.activityToken", str2);
        yad yadVar = null;
        bundle.putString("MqttService.invocationContext", null);
        com.mq.mgmi.client.message.h hVar = this.h;
        if (hVar == null || !hVar.k()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            this.j.b("send", "not connected");
            this.j.a(this.f, j.ERROR, bundle);
            return null;
        }
        a aVar = new a(this, bundle, (byte) 0);
        try {
            tod todVar = new tod(bArr);
            todVar.setQos(i);
            todVar.setRetained(z);
            com.mq.mgmi.client.message.h hVar2 = this.h;
            tod todVar2 = new tod(bArr);
            todVar2.setQos(i);
            todVar2.setRetained(z);
            yad yadVarB = hVar2.b(str, todVar2, aVar);
            try {
                this.n.put(yadVarB, str);
                this.o.put(yadVarB, todVar);
                this.p.put(yadVarB, str2);
                this.q.put(yadVarB, null);
                return yadVarB;
            } catch (Exception e) {
                e = e;
                yadVar = yadVarB;
                a(bundle, e);
                return yadVar;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final void a() {
        try {
            PowerManager.WakeLock wakeLock = this.r;
            if (wakeLock == null || !wakeLock.isHeld()) {
                return;
            }
            this.r.release();
        } catch (Exception unused) {
        }
    }

    public final void a(Bundle bundle) {
        e();
        this.j.a(this.f, j.OK, bundle);
        d();
        a(false);
        this.k = false;
        a();
    }

    public final void a(Bundle bundle, Exception exc) {
        bundle.putString("MqttService.errorMessage", exc.getLocalizedMessage());
        bundle.putSerializable("MqttService.exception", exc);
        this.j.a(this.f, j.ERROR, bundle);
    }

    @Override
    public final void a(yad yadVar) {
        this.j.a("MqttConnection", "deliveryComplete(" + yadVar + ")");
        tod todVarRemove = this.o.remove(yadVar);
        if (todVarRemove != null) {
            String strRemove = this.n.remove(yadVar);
            String strRemove2 = this.p.remove(yadVar);
            String strRemove3 = this.q.remove(yadVar);
            Bundle bundleA = a(null, strRemove, todVarRemove);
            if (strRemove2 != null) {
                bundleA.putString("MqttService.callbackAction", "send");
                bundleA.putString("MqttService.activityToken", strRemove2);
                bundleA.putString("MqttService.invocationContext", strRemove3);
                this.j.a(this.f, j.OK, bundleA);
            }
            bundleA.putString("MqttService.callbackAction", "messageDelivered");
            this.j.a(this.f, j.OK, bundleA);
        }
    }

    public final void a(String str, String str2) {
        this.j.a("MqttConnection", "subscribe({" + str + "},2,{" + ((String) null) + "}, {" + str2 + StringSubstitutor.DEFAULT_VAR_END);
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", PushConstants.TOPIC_SUBSCRIBE);
        bundle.putString("MqttService.activityToken", str2);
        bundle.putString("MqttService.invocationContext", null);
        com.mq.mgmi.client.message.h hVar = this.h;
        if (hVar == null || !hVar.k()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            this.j.b(PushConstants.TOPIC_SUBSCRIBE, "not connected");
            this.j.a(this.f, j.ERROR, bundle);
        } else {
            try {
                this.h.g(new String[]{str}, new int[]{2}, new a(this, bundle, (byte) 0));
            } catch (Exception e) {
                a(bundle, e);
            }
        }
    }

    @Override
    public final void a(String str, tod todVar) {
        this.j.a("MqttConnection", "messageArrived(" + str + ",{" + todVar.toString() + "})");
        String strA = this.j.c.a(this.f, str, todVar);
        Bundle bundleA = a(strA, str, todVar);
        bundleA.putString("MqttService.callbackAction", "messageArrived");
        bundleA.putString("MqttService.messageId", strA);
        this.j.a(this.f, j.OK, bundleA);
    }

    @Override
    public final void a(Throwable th) {
        this.j.a("MqttConnection", "connectionLost(" + th.getMessage() + ")");
        this.k = true;
        try {
            if (!this.e.b) {
                this.h.d(new v7d() {
                    @Override
                    public final void onFailure(ggd ggdVar, Throwable th2) {
                    }

                    @Override
                    public final void onSuccess(ggd ggdVar) {
                    }
                });
            }
        } catch (Exception unused) {
        }
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "onConnectionLost");
        bundle.putString("MqttService.errorMessage", th.getMessage());
        if (th instanceof n) {
            bundle.putSerializable("MqttService.exception", th);
        }
        bundle.putString("MqttService.exceptionStack", Log.getStackTraceString(th));
        this.j.a(this.f, j.OK, bundle);
        a();
    }

    public final synchronized void a(boolean z) {
        this.m = z;
    }

    @Override
    public final void a(boolean z, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "connectExtended");
        bundle.putBoolean("MqttService.reconnect", z);
        bundle.putString("MqttService.serverURI", str);
        this.j.a(this.f, j.OK, bundle);
    }
}
