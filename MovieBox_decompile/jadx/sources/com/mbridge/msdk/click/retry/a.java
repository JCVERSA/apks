package com.mbridge.msdk.click.retry;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.f;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

public class a {

    public static String f33578e = "mtg_retry_report=1";

    public static int f33579f = 10000;

    public static int f33580g = 3;

    public static int f33581h = 50;

    public static int f33582i = 600000;

    private static int f33583j = 0;

    private static int f33584k = 0;

    public static int f33585l = 0;

    public static int f33586m = 1;

    public static int f33587n = 2;

    public static int f33588o = 3;

    public static int f33589p = 4;

    public static int f33590q = 5;

    private ConcurrentHashMap<String, com.mbridge.msdk.click.retry.b> f33591a;

    private com.mbridge.msdk.click.retry.c f33592b;

    private BroadcastReceiver f33593c;

    private final Handler f33594d;

    class C0449a extends BroadcastReceiver {
        C0449a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                a.this.f33594d.sendEmptyMessage(2);
            }
        }
    }

    private static class b {

        private static a f33596a = new a(null);
    }

    private static class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(@NonNull Message message) {
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 != 2) {
                    return;
                }
                a.b().c();
            } else {
                Object obj = message.obj;
                if (obj instanceof String) {
                    a.b().a((String) obj, com.mbridge.msdk.click.retry.b.f33597k);
                }
            }
        }
    }

    a(C0449a c0449a) {
        this();
    }

    public void c() {
        com.mbridge.msdk.click.retry.c cVar = this.f33592b;
        if (cVar != null) {
            Iterator<String> it = cVar.a().iterator();
            while (it.hasNext()) {
                a(it.next(), com.mbridge.msdk.click.retry.b.f33598l);
            }
        }
    }

    private a() {
        this.f33591a = new ConcurrentHashMap<>();
        this.f33592b = new com.mbridge.msdk.click.retry.c(f33581h);
        this.f33594d = new c(Looper.getMainLooper());
        g gVarB = h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        f33580g = gVarB.d0();
        f33579f = gVarB.f0() * 1000;
        f33582i = gVarB.g0() * 1000;
        f33583j = gVarB.c0();
        f33584k = gVarB.e0();
        a();
    }

    public static a b() {
        return b.f33596a;
    }

    private boolean b(int i10) {
        return i10 == f33586m || i10 == f33587n;
    }

    public void a(String str, String str2, CampaignEx campaignEx, String str3, boolean z10, boolean z11, int i10) {
        if (!c(i10) || TextUtils.isEmpty(str)) {
            return;
        }
        String strReplace = str.replace(UrlUtils.QUESTION_MARK + f33578e, "").replace(UrlUtils.AND_MARK + f33578e, "");
        if (this.f33591a == null) {
            this.f33591a = new ConcurrentHashMap<>();
        }
        com.mbridge.msdk.click.retry.b bVarRemove = this.f33591a.remove(strReplace);
        if (bVarRemove == null) {
            bVarRemove = new com.mbridge.msdk.click.retry.b(str, str2);
            bVarRemove.b(i10);
            bVarRemove.a(z10);
            bVarRemove.b(z11);
            bVarRemove.a(campaignEx);
            bVarRemove.b(str3);
        } else if (bVarRemove.d() != com.mbridge.msdk.click.retry.b.f33598l) {
            bVarRemove.a(str2);
        }
        if ((!a(i10) || f33583j == 0) && ((!b(i10) || f33584k == 0) && i10 != f33590q)) {
            a(bVarRemove);
            return;
        }
        if (System.currentTimeMillis() < bVarRemove.c() + ((long) f33582i)) {
            a(strReplace, bVarRemove);
            if (bVarRemove.d() == com.mbridge.msdk.click.retry.b.f33597k) {
                if (bVarRemove.e() <= f33580g) {
                    a(strReplace);
                    return;
                } else {
                    a(bVarRemove);
                    return;
                }
            }
            return;
        }
        if (bVarRemove.d() == com.mbridge.msdk.click.retry.b.f33597k) {
            a(bVarRemove);
        }
    }

    private boolean c(int i10) {
        return a(i10) || b(i10) || i10 == f33590q;
    }

    private void a(com.mbridge.msdk.click.retry.b bVar) {
        String str;
        String requestIdNotice;
        try {
            CampaignEx campaignExA = bVar.a();
            if (campaignExA != null) {
                String requestId = campaignExA.getRequestId();
                requestIdNotice = campaignExA.getRequestIdNotice();
                str = requestId;
            } else {
                str = "";
                requestIdNotice = str;
            }
            a(com.mbridge.msdk.foundation.controller.c.m().d(), bVar.b().toString(), bVar.g(), str, requestIdNotice, bVar.h());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static void a(Context context, String str, String str2, String str3, String str4, int i10) {
        f.a().a(context, str, str2, str3, str4, i10);
    }

    private void a(String str, com.mbridge.msdk.click.retry.b bVar) {
        if (this.f33592b == null) {
            this.f33592b = new com.mbridge.msdk.click.retry.c(f33581h);
        }
        this.f33592b.a(str, bVar);
    }

    private void a(String str) {
        Message messageObtainMessage = this.f33594d.obtainMessage();
        messageObtainMessage.what = 1;
        messageObtainMessage.obj = str;
        this.f33594d.sendMessageDelayed(messageObtainMessage, f33579f);
    }

    public void a(String str, int i10) {
        String str2;
        com.mbridge.msdk.click.retry.c cVar = this.f33592b;
        if (cVar != null) {
            com.mbridge.msdk.click.retry.b bVarA = cVar.a(str);
            this.f33592b.b(str);
            if (bVarA == null) {
                com.mbridge.msdk.click.retry.b bVar = this.f33591a.get(str);
                if (bVar == null || System.currentTimeMillis() > bVar.c() + ((long) f33582i) || bVar.e() >= f33580g || i10 == com.mbridge.msdk.click.retry.b.f33598l) {
                    return;
                }
                a(str);
                return;
            }
            if (System.currentTimeMillis() <= bVarA.c() + ((long) f33582i)) {
                bVarA.a(i10);
                this.f33591a.put(str, bVarA);
                if (z0.c(str) == 0) {
                    str2 = str + UrlUtils.QUESTION_MARK + f33578e;
                } else {
                    str2 = str + UrlUtils.AND_MARK + f33578e;
                }
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), bVarA.a(), bVarA.f(), str2, bVarA.i(), bVarA.j(), bVarA.h());
                return;
            }
            if (i10 != com.mbridge.msdk.click.retry.b.f33598l) {
                a(bVarA);
            }
        }
    }

    private void a() {
        try {
            if (this.f33593c == null) {
                this.f33593c = new C0449a();
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                if (contextD != null) {
                    contextD.registerReceiver(this.f33593c, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean a(int i10) {
        return i10 == f33589p || i10 == f33588o;
    }
}
