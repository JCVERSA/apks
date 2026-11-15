package com.mbridge.msdk.foundation.tools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.net.URLEncoder;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public final class MIMManager {

    private static volatile String f34820i;

    private final AtomicBoolean f34821a;

    private int f34822b;

    private CopyOnWriteArrayList<CampaignEx> f34823c;

    private Context f34824d;

    private volatile Boolean f34825e;

    private CampaignEx f34826f;

    private volatile g f34827g;

    private volatile MiOverseaMiniCardBroadcasterReceiver f34828h;

    public static class MiOverseaMiniCardBroadcasterReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjK+n3eyNVx6ZVPn5jcincKZx5f5ncN=").equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("packageName");
                int intExtra = intent.getIntExtra("errorCode", 0);
                int intExtra2 = intExtra < 0 ? intent.getIntExtra("reason", 0) : -1;
                o0.b("MIMManager", stringExtra + " " + intExtra + " " + intExtra2);
                if (intExtra == 1 || intExtra == 2 || intExtra == 3 || intExtra == 4 || intExtra == 7) {
                    try {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("key", URLEncoder.encode("m_mini_card", "utf-8"));
                        CampaignEx campaignExA = MIMManager.b().a(stringExtra);
                        if (campaignExA != null) {
                            eVar.a("rid", campaignExA.getRequestId());
                            eVar.a("rid_n", campaignExA.getRequestIdNotice());
                            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, campaignExA.getCampaignUnitId());
                            eVar.a("u_stid", com.mbridge.msdk.foundation.controller.a.f34162r.get(campaignExA.getCampaignUnitId()));
                            cVar.a(campaignExA);
                        }
                        eVar.a(NotificationCompat.CATEGORY_EVENT, String.valueOf(intExtra));
                        eVar.a("pkg_name", stringExtra);
                        if (intExtra2 != -1) {
                            eVar.a("reasonCode", String.valueOf(intExtra2));
                        }
                        cVar.a("m_mini_card", eVar);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mini_card", cVar);
                    } catch (Exception e10) {
                        o0.b("MIMManager", e10.getMessage());
                    }
                }
            }
        }
    }

    class a implements Runnable {

        final Context f34829a;

        a(Context context) {
            this.f34829a = context;
        }

        @Override
        public void run() {
            if (MIMManager.this.f34821a.compareAndSet(false, true)) {
                try {
                    MIMManager mIMManager = MIMManager.this;
                    mIMManager.f34825e = mIMManager.a();
                } catch (Exception e10) {
                    o0.a("MIMManager", e10.getMessage());
                }
                if (MIMManager.this.f34825e == null || !MIMManager.this.f34825e.booleanValue() || this.f34829a == null) {
                    return;
                }
                try {
                    MIMManager.this.f34827g = new g(null);
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN="));
                    intentFilter.addAction(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN="));
                    intentFilter.addAction(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"));
                    this.f34829a.registerReceiver(MIMManager.this.f34827g, intentFilter);
                } catch (Exception e11) {
                    o0.a("MIMManager", e11.getMessage());
                }
            }
        }
    }

    class b implements Runnable {

        final Context f34831a;

        final CampaignEx f34832b;

        b(Context context, CampaignEx campaignEx) {
            this.f34831a = context;
            this.f34832b = campaignEx;
        }

        @Override
        public void run() {
            try {
                MIMManager.this.e(this.f34831a, this.f34832b);
            } catch (Exception e10) {
                o0.b("MIMManager", e10.getMessage());
            }
        }
    }

    class c implements Runnable {

        final Context f34834a;

        final CampaignEx f34835b;

        c(Context context, CampaignEx campaignEx) {
            this.f34834a = context;
            this.f34835b = campaignEx;
        }

        @Override
        public void run() {
            try {
                MIMManager.this.d(this.f34834a, this.f34835b);
            } catch (Exception e10) {
                o0.b("MIMManager", e10.getMessage());
            }
        }
    }

    class d implements Runnable {

        final Context f34837a;

        final CampaignEx f34838b;

        d(Context context, CampaignEx campaignEx) {
            this.f34837a = context;
            this.f34838b = campaignEx;
        }

        @Override
        public void run() {
            try {
                MIMManager.this.f(this.f34837a, this.f34838b);
            } catch (Exception e10) {
                o0.b("MIMManager", e10.getMessage());
            } finally {
                if (MIMManager.this.f34823c != null && MIMManager.this.f34823c.contains(this.f34838b)) {
                    MIMManager.this.f34823c.remove(this.f34838b);
                }
            }
        }
    }

    class e implements Runnable {

        final Context f34840a;

        final String f34841b;

        final CampaignEx f34842c;

        final int f34843d;

        e(Context context, String str, CampaignEx campaignEx, int i10) {
            this.f34840a = context;
            this.f34841b = str;
            this.f34842c = campaignEx;
            this.f34843d = i10;
        }

        @Override
        public void run() {
            try {
                if (this.f34840a == null || TextUtils.isEmpty(this.f34841b) || this.f34842c == null) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000100");
                jSONObject.put("network_type", k0.s(this.f34840a));
                jSONObject.put("rid", this.f34842c.getRequestId());
                jSONObject.put("rid_n", this.f34842c.getRequestIdNotice());
                if (!TextUtils.isEmpty(this.f34842c.getCampaignUnitId())) {
                    jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f34842c.getCampaignUnitId());
                    String str = com.mbridge.msdk.foundation.controller.a.f34162r.get(this.f34842c.getCampaignUnitId());
                    if (str == null) {
                        str = "";
                    }
                    jSONObject.put("u_stid", str);
                }
                jSONObject.put(BidResponsedEx.KEY_CID, this.f34842c.getId());
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, this.f34841b);
                jSONObject.put("code", this.f34843d);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("MIMManager", th2.getMessage());
            }
        }
    }

    private static final class f {

        private static final MIMManager f34845a = new MIMManager(null);
    }

    private static class g extends BroadcastReceiver {
        private g() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            CampaignEx campaignExA;
            String action = intent.getAction();
            if (TextUtils.isEmpty(action) || action.equals(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN=")) || action.equals(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN=")) || !action.equals(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"))) {
                return;
            }
            try {
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    return;
                }
                int i10 = extras.getInt("statusCode", -1);
                String string = extras.getString("packageName", "");
                if (i10 == -1 || TextUtils.isEmpty(string) || (campaignExA = MIMManager.b().a(string)) == null) {
                    return;
                }
                MIMManager.b().a(context, campaignExA, i10);
                MIMManager.b().a(context, "dm_page_status", i10, MIMManager.b().c());
            } catch (Exception e10) {
                o0.b("MIMManager", e10.getMessage());
            }
        }

        g(a aVar) {
            this();
        }
    }

    MIMManager(a aVar) {
        this();
    }

    public void f() {
        this.f34822b++;
    }

    public void g() {
        int i10 = this.f34822b - 1;
        this.f34822b = i10;
        if (i10 <= 0) {
            a(this.f34824d);
        }
    }

    public void h() {
        try {
            if (this.f34828h == null) {
                this.f34828h = new MiOverseaMiniCardBroadcasterReceiver();
            }
            IntentFilter intentFilter = new IntentFilter(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjK+n3eyNVx6ZVPn5jcincKZx5f5ncN="));
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (contextD != null) {
                contextD.registerReceiver(this.f34828h, intentFilter);
            }
        } catch (Exception e10) {
            o0.a("MIMManager", e10.getMessage());
        }
    }

    public void i() {
        try {
            if (this.f34828h != null) {
                Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
                if (contextD != null) {
                    contextD.unregisterReceiver(this.f34828h);
                }
                this.f34826f = null;
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f34823c;
                if (copyOnWriteArrayList != null) {
                    copyOnWriteArrayList.clear();
                }
                this.f34823c = null;
                this.f34828h = null;
            }
        } catch (Exception e10) {
            o0.a("MIMManager", e10.getMessage());
        }
    }

    private MIMManager() {
        this.f34822b = 0;
        this.f34823c = new CopyOnWriteArrayList<>();
        this.f34821a = new AtomicBoolean(false);
    }

    public void f(Context context, CampaignEx campaignEx) {
        String[] strArrW;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (strArrW = nativeVideoTracking.w()) == null) {
                    return;
                }
                for (String str : strArrW) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), str, false, false);
                }
            } catch (Exception e10) {
                o0.b("MIMManager", e10.getMessage());
            }
        }
    }

    public String d() {
        try {
            return f34820i == null ? "" : String.format("[%s]", f34820i);
        } catch (Exception unused) {
            return "";
        }
    }

    public Boolean e() {
        return this.f34825e;
    }

    public static MIMManager b() {
        return f.f34845a;
    }

    public void d(Context context, CampaignEx campaignEx) {
        String[] strArrU;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (strArrU = nativeVideoTracking.u()) == null) {
                    return;
                }
                for (String str : strArrU) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), str, false, false);
                }
            } catch (Exception e10) {
                o0.b("MIMManager", e10.getMessage());
            }
        }
    }

    public void e(Context context, CampaignEx campaignEx) {
        String[] strArrV;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (strArrV = nativeVideoTracking.v()) == null) {
                    return;
                }
                for (String str : strArrV) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), str, false, false);
                }
            } catch (Exception e10) {
                o0.b("MIMManager", e10.getMessage());
            }
        }
    }

    CampaignEx c() {
        return this.f34826f;
    }

    private Runnable c(Context context, CampaignEx campaignEx) {
        return new d(context, campaignEx);
    }

    public void b(Context context) {
        this.f34824d = context;
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context));
    }

    public void a(CampaignEx campaignEx) {
        try {
            if (this.f34825e != null && campaignEx != null && this.f34825e.booleanValue()) {
                this.f34826f = campaignEx;
                this.f34823c.add(campaignEx);
            }
            if (com.mbridge.msdk.util.b.b() && campaignEx != null && campaignEx.getDeepLinkURL().startsWith("mimarket")) {
                if (this.f34828h == null) {
                    h();
                }
                this.f34826f = campaignEx;
                this.f34823c.add(campaignEx);
            }
        } catch (Exception e10) {
            o0.b("MIMManager", e10.getMessage());
        }
    }

    public void b(CampaignEx campaignEx) {
        try {
            if (this.f34825e == null || campaignEx == null || !this.f34825e.booleanValue()) {
                return;
            }
            this.f34826f = null;
            try {
                this.f34823c.remove(campaignEx);
            } catch (Exception e10) {
                o0.a("MIMManager", e10.getMessage());
            }
        } catch (Exception e11) {
            o0.b("MIMManager", e11.getMessage());
        }
    }

    private Runnable b(Context context, CampaignEx campaignEx) {
        return new b(context, campaignEx);
    }

    public CampaignEx a(String str) {
        try {
            CampaignEx campaignEx = this.f34826f;
            if (campaignEx != null && TextUtils.equals(campaignEx.getPackageName(), str)) {
                return this.f34826f;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f34823c;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return null;
            }
            for (CampaignEx campaignEx2 : this.f34823c) {
                if (campaignEx2 != null && TextUtils.equals(campaignEx2.getPackageName(), str)) {
                    return campaignEx2;
                }
            }
            return null;
        } catch (Exception e10) {
            o0.b("MIMManager", e10.getMessage());
            return null;
        }
    }

    public Boolean a() {
        Cursor cursorQuery;
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        Boolean boolValueOf = null;
        if (contextD != null) {
            try {
                if (contextD.getContentResolver() != null) {
                    try {
                        cursorQuery = contextD.getContentResolver().query(Uri.parse(i0.a("DFK/J75/JaEXWFfXYZP9LkcXYk3/YkcBLF5TWgSBYbHuH75BW3xuhr5UJj2tLkeNhrKFLkxQhl==")), null, null, null, null);
                    } catch (Exception unused) {
                        cursorQuery = null;
                    }
                    if (cursorQuery != null) {
                        while (cursorQuery.moveToNext()) {
                            try {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndex("support"));
                                if (!TextUtils.isEmpty(string) && !string.equalsIgnoreCase("null") && (string.equalsIgnoreCase("false") || string.equalsIgnoreCase("true"))) {
                                    boolValueOf = Boolean.valueOf(Boolean.parseBoolean(string));
                                }
                            } catch (Exception e10) {
                                o0.a("MIMManager", e10.getMessage());
                            }
                            try {
                                f34820i = cursorQuery.getString(cursorQuery.getColumnIndex("detailStyle"));
                            } catch (Exception e11) {
                                o0.a("MIMManager", e11.getMessage());
                            }
                        }
                        try {
                            cursorQuery.close();
                        } catch (Exception e12) {
                            o0.a("MIMManager", e12.getMessage());
                        }
                    }
                }
            } catch (Exception e13) {
                o0.b("MIMManager", e13.getMessage());
            }
        }
        return boolValueOf;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0030 A[PHI: r4
      0x0030: PHI (r4v7 java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx>) = 
      (r4v6 java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx>)
      (r4v8 java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx>)
     binds: [B:20:0x002e, B:16:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    public void a(Context context) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList;
        if (context != null) {
            try {
                try {
                    if (this.f34827g != null) {
                        context.unregisterReceiver(this.f34827g);
                    }
                    if (this.f34828h != null) {
                        context.unregisterReceiver(this.f34828h);
                    }
                    this.f34826f = null;
                    copyOnWriteArrayList = this.f34823c;
                    if (copyOnWriteArrayList != null) {
                        copyOnWriteArrayList.clear();
                    }
                } catch (Exception e10) {
                    o0.a("MIMManager", e10.getMessage());
                    this.f34826f = null;
                    copyOnWriteArrayList = this.f34823c;
                    if (copyOnWriteArrayList != null) {
                        copyOnWriteArrayList.clear();
                    }
                }
                this.f34823c = null;
                this.f34827g = null;
                this.f34824d = null;
            } catch (Throwable th2) {
                this.f34826f = null;
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.f34823c;
                if (copyOnWriteArrayList2 != null) {
                    copyOnWriteArrayList2.clear();
                }
                this.f34823c = null;
                this.f34827g = null;
                this.f34824d = null;
                throw th2;
            }
        }
        try {
            i();
        } catch (Throwable th3) {
            o0.b("MIMManager", th3.getMessage());
        }
    }

    void a(Context context, CampaignEx campaignEx, int i10) {
        Runnable runnableB;
        if (i10 == 3001) {
            runnableB = b(context, campaignEx);
        } else if (i10 != 3002) {
            runnableB = i10 != 3008 ? null : c(context, campaignEx);
        } else {
            runnableB = a(context, campaignEx);
        }
        if (runnableB != null) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(runnableB);
        }
    }

    private Runnable a(Context context, CampaignEx campaignEx) {
        return new c(context, campaignEx);
    }

    void a(Context context, String str, int i10, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(context, str, campaignEx, i10));
    }
}
