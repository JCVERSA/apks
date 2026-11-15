package com.mbridge.msdk.interstitial.controller;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.out.InterstitialListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.ASTNode;

public class a {

    public static String f35085o;

    public static Map<String, Integer> f35086p = new HashMap();

    public static Map<String, Integer> f35087q = new HashMap();

    public static Map<String, d> f35088r = new HashMap();

    private Context f35090b;

    private String f35091c;

    private String f35092d;

    private String f35093e;

    private MBridgeIds f35094f;

    private Handler f35095g;

    private l f35096h;

    private InterstitialListener f35097i;

    private String f35089a = "InterstitialController";

    public boolean f35098j = false;

    private String f35099k = "";

    private String f35100l = "";

    private String f35101m = "";

    private boolean f35102n = false;

    class HandlerC0473a extends Handler {
        HandlerC0473a(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            if (message == null) {
                return;
            }
            int i10 = message.what;
            if (i10 == 1) {
                if (a.this.f35097i != null) {
                    a.this.f35097i.onInterstitialLoadSuccess(a.this.f35094f);
                    return;
                }
                return;
            }
            String str = "";
            if (i10 == 2) {
                if (a.this.f35097i != null) {
                    Object obj = message.obj;
                    if (obj != null && (obj instanceof String)) {
                        str = (String) obj;
                    }
                    a.this.f35097i.onInterstitialLoadFail(a.this.f35094f, TextUtils.isEmpty(str) ? "can't show because unknow error" : str);
                    return;
                }
                return;
            }
            if (i10 == 3) {
                a aVar = a.this;
                aVar.f35098j = true;
                if (aVar.f35097i != null) {
                    a.this.f35097i.onInterstitialShowSuccess(a.this.f35094f);
                    return;
                }
                return;
            }
            if (i10 == 4) {
                if (a.this.f35097i != null) {
                    Object obj2 = message.obj;
                    if (obj2 != null && (obj2 instanceof String)) {
                        str = (String) obj2;
                    }
                    a.this.f35097i.onInterstitialShowFail(a.this.f35094f, TextUtils.isEmpty(str) ? "can't show because unknow error" : str);
                    return;
                }
                return;
            }
            if (i10 == 6) {
                if (a.this.f35097i != null) {
                    a.this.f35097i.onInterstitialAdClick(a.this.f35094f);
                }
            } else {
                if (i10 != 7) {
                    return;
                }
                a aVar2 = a.this;
                aVar2.f35098j = false;
                if (aVar2.f35097i != null) {
                    a.this.f35097i.onInterstitialClosed(a.this.f35094f);
                }
            }
        }
    }

    public class b {

        private com.mbridge.msdk.interstitial.adapter.a f35104a;

        private c f35105b;

        public b(com.mbridge.msdk.interstitial.adapter.a aVar, c cVar) {
            this.f35104a = aVar;
            this.f35105b = cVar;
        }

        public void a(boolean z10, String str) {
            try {
                com.mbridge.msdk.interstitial.adapter.a aVar = this.f35104a;
                if (aVar != null) {
                    aVar.a((b) null);
                    this.f35104a = null;
                }
                if (this.f35105b != null) {
                    if (a.this.f35095g != null) {
                        a.this.f35095g.removeCallbacks(this.f35105b);
                    }
                    if (z10) {
                        if (a.this.f35097i != null) {
                            a.this.c(str);
                        }
                    } else if (a.this.f35097i != null) {
                        a.this.b(str);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void b(boolean z10, String str) {
            try {
                a.this.f35099k = str;
                try {
                    ArrayList arrayList = new ArrayList();
                    com.mbridge.msdk.interstitial.adapter.a aVar = this.f35104a;
                    if (aVar != null && aVar.d() != null) {
                        arrayList.add(this.f35104a.d());
                    }
                    a.this.f35100l = com.mbridge.msdk.foundation.same.c.b(arrayList);
                } catch (Exception e10) {
                    o0.b(a.this.f35089a, e10.getMessage());
                }
                if (this.f35105b != null) {
                    if (a.this.f35095g != null) {
                        a.this.f35095g.removeCallbacks(this.f35105b);
                    }
                    if (z10) {
                        a.this.b(false);
                    } else if (a.this.f35097i != null) {
                        a.this.h();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public class c implements Runnable {

        private com.mbridge.msdk.interstitial.adapter.a f35107a;

        public c(com.mbridge.msdk.interstitial.adapter.a aVar) {
            this.f35107a = aVar;
        }

        @Override
        public void run() {
            try {
                com.mbridge.msdk.interstitial.adapter.a aVar = this.f35107a;
                if (aVar != null) {
                    if (aVar.f()) {
                        a.this.c("load timeout");
                    } else if (a.this.f35097i != null) {
                        a.this.b("load timeout");
                    }
                    this.f35107a.a((b) null);
                    this.f35107a = null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public a() {
        try {
            c();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void h() {
        Handler handler = this.f35095g;
        if (handler != null) {
            handler.sendEmptyMessage(1);
        }
    }

    public void i() {
        Handler handler = this.f35095g;
        if (handler != null) {
            handler.sendEmptyMessage(3);
        }
    }

    public void g() {
        try {
            new j().a(this.f35090b, (String) null, (String) null, this.f35091c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void j() {
        try {
            if (this.f35090b == null) {
                c("context is null");
                return;
            }
            if (TextUtils.isEmpty(this.f35091c)) {
                c("unitid is null");
            } else if (!this.f35102n) {
                c("init error");
            } else {
                e();
                b(true);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            c("can't show because unknow error");
        }
    }

    public class d {
        public d() {
        }

        public void a(String str) {
            try {
                a.this.c(str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void b() {
            try {
                if (a.this.f35095g != null) {
                    a.this.f35095g.sendEmptyMessage(7);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void c() {
            try {
                a.this.i();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void a() {
            try {
                if (a.this.f35095g != null) {
                    a.this.f35095g.sendEmptyMessage(6);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void e() {
        try {
            g();
            l lVarE = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f35091c);
            this.f35096h = lVarE;
            if (lVarE == null) {
                this.f35096h = l.h(this.f35091c);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void f() {
        try {
            if (this.f35090b == null) {
                b("context is null");
                return;
            }
            if (TextUtils.isEmpty(this.f35091c)) {
                b("unitid is null");
            } else {
                if (!this.f35102n) {
                    b("init error");
                    return;
                }
                e();
                d();
                a(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            b("can't show because unknow error");
        }
    }

    private void c() {
        try {
            this.f35095g = new HandlerC0473a(Looper.getMainLooper());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        try {
            l lVar = this.f35096h;
            if (lVar != null) {
                int iE = lVar.e();
                int iY = this.f35096h.y();
                if (iE <= 0) {
                    iE = 1;
                }
                if (iY <= 0) {
                    iY = 1;
                }
                int i10 = iY * iE;
                if (f35087q == null || TextUtils.isEmpty(this.f35091c)) {
                    return;
                }
                f35087q.put(this.f35091c, Integer.valueOf(i10));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String b() {
        if (this.f35098j) {
            return this.f35101m;
        }
        return this.f35099k;
    }

    public static void a(String str, int i10) {
        try {
            if (f35086p == null || TextUtils.isEmpty(str)) {
                return;
            }
            f35086p.put(str, Integer.valueOf(i10));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c(String str) {
        try {
            if (this.f35095g != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 4;
                this.f35095g.sendMessage(messageObtain);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(boolean z10) {
        try {
            CampaignEx campaignExD = new com.mbridge.msdk.interstitial.adapter.a(this.f35090b, this.f35091c, this.f35092d, this.f35093e, true).d();
            if (campaignExD != null) {
                a(campaignExD);
            } else if (z10) {
                a(true);
            } else {
                c("no ads available can show");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            if (this.f35097i != null) {
                c("can't show because unknow error");
            }
        }
    }

    public static int a(String str) {
        Map<String, Integer> map;
        Integer num;
        try {
            if (TextUtils.isEmpty(str) || (map = f35086p) == null || !map.containsKey(str) || (num = f35086p.get(str)) == null) {
                return 0;
            }
            return num.intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public void a(InterstitialListener interstitialListener) {
        this.f35097i = interstitialListener;
    }

    public boolean a(Context context, Map<String, Object> map) {
        try {
            this.f35102n = false;
            if (map != null && context != null && map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID) && (map.get(MBridgeConstans.PROPERTIES_UNIT_ID) instanceof String)) {
                if (map.containsKey(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY) && (map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY) instanceof String)) {
                    this.f35093e = (String) map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY);
                }
                this.f35091c = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
                this.f35090b = context;
                if (map.containsKey(MBridgeConstans.PLACEMENT_ID) && map.get(MBridgeConstans.PLACEMENT_ID) != null) {
                    this.f35092d = (String) map.get(MBridgeConstans.PLACEMENT_ID);
                }
                this.f35094f = new MBridgeIds(this.f35092d, this.f35091c);
                this.f35102n = true;
                return this.f35102n;
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f35102n = false;
        }
    }

    public void b(String str) {
        try {
            if (this.f35095g != null) {
                Message messageObtain = Message.obtain();
                messageObtain.obj = str;
                messageObtain.what = 2;
                this.f35095g.sendMessage(messageObtain);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String a() {
        return this.f35100l;
    }

    public void a(boolean z10) {
        try {
            com.mbridge.msdk.interstitial.adapter.a aVar = new com.mbridge.msdk.interstitial.adapter.a(this.f35090b, this.f35091c, this.f35092d, this.f35093e, z10);
            c cVar = new c(aVar);
            aVar.a(new b(aVar, cVar));
            Handler handler = this.f35095g;
            if (handler != null) {
                handler.postDelayed(cVar, 30000L);
            }
            aVar.j();
        } catch (Exception e10) {
            e10.printStackTrace();
            if (z10) {
                return;
            }
            b("can't show because unknow error");
        }
    }

    private void a(CampaignEx campaignEx) {
        d dVar = new d();
        if (f35088r != null && !TextUtils.isEmpty(this.f35091c)) {
            f35088r.put(this.f35091c, dVar);
        }
        Intent intent = new Intent(this.f35090b, (Class<?>) MBInterstitialActivity.class);
        intent.addFlags(67108864);
        intent.addFlags(ASTNode.DEOP);
        if (!TextUtils.isEmpty(this.f35091c)) {
            intent.putExtra("unitId", this.f35091c);
        }
        if (campaignEx != null) {
            this.f35101m = campaignEx.getRequestId();
            intent.putExtra(MBInterstitialActivity.INTENT_CAMAPIGN, campaignEx);
        }
        Context context = this.f35090b;
        if (context != null) {
            context.startActivity(intent);
        }
    }
}
