package com.doman.core.ig.manager;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.doman.core.CoreMain;
import com.doman.core.ig.proxy.MqttAndroidClient;
import com.doman.core.ig.proxy.MqttService;
import com.doman.core.ig.proxy.f;
import com.doman.core.ig.proxy.h;
import com.mq.mgmi.client.message.n;
import defpackage.bmd;
import defpackage.ggd;
import defpackage.hjd;
import defpackage.tod;
import defpackage.v7d;
import defpackage.yad;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.Charset;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class WebService extends Service {
    public static String c = "tourist_enter";
    public static String d = "message_arrived";
    private static MqttAndroidClient f;
    private bmd g;
    private static final Charset h = Charset.forName("UTF-8");
    private static String i = null;
    private static String j = null;
    private static boolean k = false;
    private static String l = null;
    private static boolean m = false;
    private static int n = 0;
    private static int o = 0;
    public static long e = -1;
    private static long r = 0;
    private static int s = 0;
    public String a = "admin";
    public String b = "password";
    private boolean p = false;
    private int q = 1;
    private d.a t = new d.a() {
    };
    private v7d u = new v7d() {
        @Override
        public final void onFailure(ggd ggdVar, Throwable th) {
            WebService.b();
            com.doman.core.manager.a.a();
            if (com.doman.core.manager.a.d() == 0) {
                com.doman.core.webview.c.a(com.doman.core.webview.c.ah, WebService.this.q + StringUtils.PROCESS_POSTFIX_DELIMITER + th);
            }
            WebService.this.q++;
            WebService.f();
            if (WebService.o <= 3) {
                WebService.a(WebService.this);
            }
        }

        @Override
        public final void onSuccess(ggd ggdVar) {
            try {
                com.doman.core.manager.a.a();
                if (com.doman.core.manager.a.d() == 0) {
                    String str = com.doman.core.webview.c.ag;
                    StringBuilder sb = new StringBuilder();
                    sb.append(WebService.this.q);
                    com.doman.core.webview.c.a(str, sb.toString());
                }
                WebService.this.q++;
                WebService.c();
                WebService.d();
                WebService.b();
                if (TextUtils.isEmpty(WebService.j)) {
                    WebService.f.a(WebService.c);
                } else {
                    WebService.f.a(WebService.j);
                }
            } catch (Exception unused) {
            }
        }
    };
    private hjd v = new hjd() {
        @Override
        public final void a(yad yadVar) {
        }

        @Override
        public final void a(String str, tod todVar) {
            try {
                WebService.a(WebService.this, todVar);
            } catch (JSONException unused) {
            }
        }

        @Override
        public final void a(Throwable th) {
            try {
                com.doman.core.webview.c.a(com.doman.core.webview.c.af);
                WebService.a(WebService.this);
            } catch (Exception unused) {
            }
        }
    };

    public static int c() {
        n = 0;
        return 0;
    }

    public static int d() {
        o = 0;
        return 0;
    }

    public static int f() {
        int i2 = o;
        o = i2 + 1;
        return i2;
    }

    private boolean h() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                activeNetworkInfo.getTypeName();
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @Override
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int i2, int i3) {
        return super.onStartCommand(intent, i2, i3);
    }

    public static boolean b() {
        m = false;
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void a(WebService webService) {
        v7d v7dVarD;
        MqttService mqttService;
        try {
            MqttAndroidClient mqttAndroidClient = f;
            String str = mqttAndroidClient.d;
            if ((str == null || (mqttService = mqttAndroidClient.c) == null || !mqttService.a(str)) && webService.h() && !webService.p && CoreMain.isAppOnForeground(CoreMain.getInstance().getContext())) {
                com.doman.core.webview.c.a(com.doman.core.webview.c.ae);
                MqttAndroidClient mqttAndroidClient2 = f;
                bmd bmdVar = webService.g;
                ggd hVar = new h(mqttAndroidClient2, webService.u);
                mqttAndroidClient2.f = bmdVar;
                mqttAndroidClient2.g = hVar;
                if (mqttAndroidClient2.c != null) {
                    MqttAndroidClient.a.execute(new Runnable() {
                        public AnonymousClass1() {
                        }

                        @Override
                        public final void run() {
                            MqttAndroidClient.b(MqttAndroidClient.this);
                            if (MqttAndroidClient.this.h) {
                                return;
                            }
                            MqttAndroidClient mqttAndroidClient3 = MqttAndroidClient.this;
                            mqttAndroidClient3.a((BroadcastReceiver) mqttAndroidClient3);
                        }
                    });
                    return;
                }
                Intent intent = new Intent();
                intent.setClassName(mqttAndroidClient2.e, "com.doman.core.ig.proxy.MqttService");
                if (mqttAndroidClient2.e.startService(intent) == null && (v7dVarD = hVar.d()) != null) {
                    v7dVarD.onFailure(hVar, new RuntimeException("cannot start service com.doman.core.ig.proxy.MqttService"));
                }
                mqttAndroidClient2.e.bindService(intent, mqttAndroidClient2.b, 1);
                if (mqttAndroidClient2.h) {
                    return;
                }
                mqttAndroidClient2.a((BroadcastReceiver) mqttAndroidClient2);
            }
        } catch (n | Exception unused) {
        }
    }

    public static void a(WebService webService, tod todVar) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject(new String(todVar.getPayload()));
        long jOptLong = jSONObject2.optLong(TtmlNode.ATTR_ID);
        int iOptInt = jSONObject2.optInt("msg_type");
        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("data");
        int iOptInt2 = jSONObjectOptJSONObject.optInt("protocol");
        int iOptInt3 = jSONObjectOptJSONObject.optInt("rd_time");
        String strOptString = jSONObjectOptJSONObject.optString("extra");
        if (iOptInt2 == 1) {
            if ((System.currentTimeMillis() / 1000) - r < s) {
                com.doman.core.webview.c.a(com.doman.core.webview.c.ai);
                return;
            }
            c.a().a(webService, "", iOptInt3, strOptString);
            try {
                if (jOptLong > 0) {
                    jSONObject = new JSONObject();
                    jSONObject.put(TtmlNode.ATTR_ID, jOptLong);
                    jSONObject.put("msg_type", iOptInt);
                } else {
                    jSONObject = new JSONObject();
                    jSONObject.put(TtmlNode.ATTR_ID, 0);
                    jSONObject.put("msg_type", iOptInt);
                }
                a(jSONObject.toString());
            } catch (Exception unused) {
            }
            com.doman.core.webview.c.a(com.doman.core.webview.c.al);
            return;
        }
        if (iOptInt2 == 1000) {
            try {
                if (iOptInt3 > 0) {
                    Math.random();
                    return;
                } else {
                    Math.random();
                    return;
                }
            } catch (Exception unused2) {
                return;
            }
        }
        if (iOptInt2 == 1001) {
            r = System.currentTimeMillis() / 1000;
            s = iOptInt3;
            return;
        }
        if (iOptInt2 <= 2000 || iOptInt2 >= 3000) {
            return;
        }
        com.doman.core.webview.c.a(com.doman.core.webview.c.aB);
        com.doman.core.a.b bVar = new com.doman.core.a.b();
        bVar.a = jSONObjectOptJSONObject;
        com.doman.core.a aVarA = com.doman.core.a.a();
        List<Object> list = aVarA.a;
        if (list == null || list.size() <= 0) {
            return;
        }
        Message message = new Message();
        message.what = 1;
        message.obj = bVar;
        aVarA.b.sendMessage(message);
    }

    private static void a(String str) {
        String str2 = d;
        try {
            MqttAndroidClient mqttAndroidClient = f;
            byte[] bytes = str.getBytes();
            tod todVar = new tod(bytes);
            todVar.setQos(2);
            todVar.setRetained(false);
            f fVar = new f(mqttAndroidClient, todVar);
            fVar.a = mqttAndroidClient.c.b(mqttAndroidClient.d).a(str2, bytes, 2, false, mqttAndroidClient.a(fVar));
        } catch (n unused) {
        }
    }
}
