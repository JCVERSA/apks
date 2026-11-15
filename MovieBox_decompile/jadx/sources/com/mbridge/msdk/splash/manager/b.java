package com.mbridge.msdk.splash.manager;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.mbridge.msdk.splash.view.MBSplashWebview;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class b {

    private CampaignEx f36584b;

    protected MBSplashView f36585c;

    protected com.mbridge.msdk.splash.middle.d f36586d;

    protected com.mbridge.msdk.click.a f36587e;

    private boolean f36588f;

    private TextView f36589g;

    private View f36590h;

    protected String f36591i;

    private String f36592j;

    protected MBridgeIds f36593k;

    protected boolean f36599q;

    private boolean f36600r;

    protected Context f36601s;

    private ImageView f36603u;

    private h f36604v;

    private com.iab.omid.library.mmadbridge.adsession.b f36605w;

    protected final String f36583a = "SplashShowManager";

    protected int f36594l = 5;

    protected String f36595m = "点击跳过|";

    protected String f36596n = "点击跳过|";

    protected String f36597o = "秒";

    protected String f36598p = "秒后自动关闭";

    protected boolean f36602t = true;

    private View.OnClickListener f36606x = new a();

    public Handler f36607y = new HandlerC0516b(Looper.getMainLooper());

    protected j f36608z = new d();

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            if (b.this.f36588f) {
                b.this.b(1);
                b.this.d(-1);
            }
        }
    }

    class HandlerC0516b extends Handler {
        HandlerC0516b(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00dc  */
        @Override
        public void handleMessage(@NonNull Message message) {
            MBSplashView mBSplashView;
            MBSplashWebview splashWebview;
            super.handleMessage(message);
            int i10 = message.what;
            if (i10 == 1) {
                if (!b.this.f36600r) {
                    b.this.i();
                }
                b bVar = b.this;
                if (bVar.f36594l <= 0) {
                    bVar.b(2);
                    return;
                }
                if (com.mbridge.msdk.foundation.feedback.b.f34457f) {
                    b.this.f();
                } else {
                    b bVar2 = b.this;
                    if (bVar2.f36599q) {
                        b.this.f();
                    } else {
                        int i11 = bVar2.f36594l - 1;
                        bVar2.f36594l = i11;
                        bVar2.d(i11);
                        b bVar3 = b.this;
                        if (!bVar3.f36602t) {
                            bVar3.g();
                        }
                    }
                }
                b.this.f36607y.removeMessages(1);
                sendEmptyMessageDelayed(1, 1000L);
                return;
            }
            if (i10 != 2 || b.this.f36584b == null || !b.this.f36584b.isActiveOm() || (mBSplashView = b.this.f36585c) == null || (splashWebview = mBSplashView.getSplashWebview()) == null) {
                return;
            }
            try {
                b.this.f36605w = splashWebview.getAdSession();
                if (b.this.f36605w != null) {
                    com.iab.omid.library.mmadbridge.adsession.a aVarA = com.iab.omid.library.mmadbridge.adsession.a.a(b.this.f36605w);
                    aVarA.c();
                    aVarA.b();
                }
                o0.a("OMSDK", "adSession.impressionOccurred()");
            } catch (Throwable th2) {
                o0.a("OMSDK", th2.getMessage());
                if (b.this.f36584b != null) {
                    String requestId = b.this.f36584b.getRequestId();
                    String requestIdNotice = b.this.f36584b.getRequestIdNotice();
                    String id2 = b.this.f36584b.getId();
                    new com.mbridge.msdk.foundation.same.report.h(splashWebview.getContext()).a(requestId, requestIdNotice, id2, b.this.f36591i, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
    }

    class d implements j {
        d() {
        }

        @Override
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, b.this.f36585c);
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, b.this.f36585c);
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            s0.b(campaign, b.this.f36585c);
        }
    }

    class e implements Runnable {

        final int f36613a;

        e(int i10) {
            this.f36613a = i10;
        }

        @Override
        public void run() {
            b.this.a(this.f36613a);
        }
    }

    class f implements Runnable {

        final Context f36615a;

        final CampaignEx f36616b;

        f(Context context, CampaignEx campaignEx) {
            this.f36615a = context;
            this.f36616b = campaignEx;
        }

        @Override
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f36615a)).b(this.f36616b.getId());
            } catch (Exception unused) {
                o0.b("SplashShowManager", "campain can't insert db");
            }
        }
    }

    class g implements com.mbridge.msdk.foundation.feedback.a {
        g() {
        }

        @Override
        public void a() {
            b.this.f();
        }

        @Override
        public void close() {
            b.this.g();
        }

        @Override
        public void a(String str) {
            b.this.g();
        }
    }

    private class h implements com.mbridge.msdk.splash.middle.a {
        private h() {
        }

        @Override
        public void a(CampaignEx campaignEx) {
            b.this.b(campaignEx, false, "");
        }

        @Override
        public void close() {
            b.this.b(1);
        }

        @Override
        public void toggleCloseBtn(int i10) {
            MBSplashView mBSplashView = b.this.f36585c;
            if (mBSplashView != null) {
                mBSplashView.changeCloseBtnState(i10);
            }
        }

        @Override
        public void triggerCloseBtn(Object obj, String str) {
            b.this.b(1);
        }

        h(b bVar, a aVar) {
            this();
        }

        @Override
        public void a(int i10) {
            o0.b("SplashShowManager", "resetCountdown" + i10);
            b bVar = b.this;
            bVar.f36594l = i10;
            bVar.f36607y.removeMessages(1);
            b.this.f36607y.sendEmptyMessageDelayed(1, 1000L);
        }

        @Override
        public void a(boolean z10) {
            if (z10) {
                b.this.f36607y.removeMessages(1);
            }
        }

        @Override
        public void a(boolean z10, String str) {
            try {
                if (b.this.f36586d != null) {
                    if (TextUtils.isEmpty(str)) {
                        b bVar = b.this;
                        bVar.f36586d.a(bVar.f36593k);
                    } else {
                        CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(b.this.f36584b));
                        campaignWithBackData.setClickTempSource(2);
                        campaignWithBackData.setClickType(2);
                        campaignWithBackData.setTriggerClickSource(2);
                        campaignWithBackData.setClickURL(str);
                        b.this.b(campaignWithBackData, true, str);
                    }
                }
            } catch (Exception e10) {
                o0.b("SplashShowManager", e10.getMessage());
            }
        }

        @Override
        public void a(int i10, int i11) {
            if (i10 == 1) {
                b.this.f36607y.removeMessages(1);
            }
            if (i10 == 2) {
                b bVar = b.this;
                bVar.f36594l = i11;
                bVar.f36607y.removeMessages(1);
                b.this.f36607y.sendEmptyMessageDelayed(1, 1000L);
            }
        }
    }

    public b(Context context, String str, String str2) {
        this.f36591i = str2;
        this.f36592j = str;
        this.f36593k = new MBridgeIds(str, str2);
        this.f36601s = context;
        if (this.f36589g == null) {
            TextView textView = new TextView(context);
            this.f36589g = textView;
            textView.setGravity(1);
            this.f36589g.setTextIsSelectable(false);
            this.f36589g.setPadding(t0.a(context, 5.0f), t0.a(context, 5.0f), t0.a(context, 5.0f), t0.a(context, 5.0f));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f36589g.getLayoutParams();
            this.f36589g.setLayoutParams(layoutParams == null ? new RelativeLayout.LayoutParams(t0.a(context, 100.0f), t0.a(context, 50.0f)) : layoutParams);
            e();
        }
    }

    public synchronized void i() {
        MBSplashView mBSplashView;
        try {
            if (this.f36584b == null) {
                return;
            }
            this.f36600r = true;
            if (this.f36586d != null && (mBSplashView = this.f36585c) != null) {
                if (mBSplashView.getContext() != null && (this.f36585c.getContext() instanceof Activity) && ((Activity) this.f36585c.getContext()).isFinishing()) {
                    o0.a("SplashShowManager", "Activity is finishing");
                }
                if (this.f36585c.isShown()) {
                    this.f36586d.b(this.f36593k);
                } else {
                    this.f36586d.a(this.f36593k, "SplashView or container is not visibility");
                }
            }
            if (!this.f36584b.isReport()) {
                MBSplashView mBSplashView2 = this.f36585c;
                if (mBSplashView2 == null || mBSplashView2.isDynamicView()) {
                    a(this.f36584b);
                } else {
                    b(this.f36584b);
                }
                com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36584b, this.f36591i);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void j() {
        String str;
        if (this.f36588f) {
            str = this.f36596n + this.f36594l + this.f36597o;
        } else {
            str = this.f36594l + this.f36598p;
        }
        this.f36589g.setText(str);
    }

    public void b(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    public void f() {
        Handler handler;
        this.f36602t = false;
        if (this.f36585c != null && this.f36594l > 0 && (handler = this.f36607y) != null) {
            handler.removeMessages(1);
        }
        MBSplashView mBSplashView = this.f36585c;
        if (mBSplashView != null) {
            mBSplashView.onPause();
            MBSplashWebview splashWebview = this.f36585c.getSplashWebview();
            if (splashWebview == null || splashWebview.isDestoryed()) {
                return;
            }
            com.mbridge.msdk.splash.signal.c.a(splashWebview, "onSystemPause", "");
        }
    }

    public void g() {
        MBSplashView mBSplashView;
        Handler handler;
        this.f36602t = true;
        if (this.f36585c != null && this.f36594l > 0 && (handler = this.f36607y) != null) {
            handler.removeMessages(1);
            this.f36607y.sendEmptyMessageDelayed(1, 1000L);
        }
        if (com.mbridge.msdk.foundation.feedback.b.f34457f || (mBSplashView = this.f36585c) == null) {
            return;
        }
        mBSplashView.onResume();
        MBSplashWebview splashWebview = this.f36585c.getSplashWebview();
        if (splashWebview == null || splashWebview.isDestoryed()) {
            return;
        }
        com.mbridge.msdk.splash.signal.c.a(splashWebview, "onSystemPause", "");
    }

    public void h() {
        if (this.f36586d != null) {
            this.f36586d = null;
        }
        if (this.f36604v != null) {
            this.f36604v = null;
        }
        if (this.f36606x != null) {
            this.f36606x = null;
        }
        MBSplashView mBSplashView = this.f36585c;
        if (mBSplashView != null) {
            mBSplashView.destroy();
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f36591i);
    }

    private void e() {
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (contextD != null) {
            String strH = com.mbridge.msdk.foundation.controller.c.m().h();
            int identifier = contextD.getResources().getIdentifier("mbridge_splash_count_time_can_skip", "string", strH);
            int identifier2 = contextD.getResources().getIdentifier("mbridge_splash_count_time_can_skip_not", "string", strH);
            int identifier3 = contextD.getResources().getIdentifier("mbridge_splash_count_time_can_skip_s", "string", strH);
            this.f36596n = contextD.getResources().getString(identifier);
            String string = contextD.getResources().getString(identifier2);
            this.f36598p = string;
            this.f36595m = string;
            this.f36597o = contextD.getResources().getString(identifier3);
            this.f36589g.setBackgroundResource(contextD.getResources().getIdentifier("mbridge_splash_close_bg", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
            this.f36589g.setTextColor(contextD.getResources().getColor(contextD.getResources().getIdentifier("mbridge_splash_count_time_skip_text_color", TtmlNode.ATTR_TTS_COLOR, strH)));
        }
    }

    public void c(int i10) {
        this.f36594l = i10;
    }

    public String d() {
        CampaignEx campaignEx = this.f36584b;
        return (campaignEx == null || campaignEx.getRequestId() == null) ? "" : this.f36584b.getRequestId();
    }

    public String c() {
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = this.f36584b;
        if (campaignEx != null) {
            arrayList.add(campaignEx);
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    private void b(CampaignEx campaignEx) {
        if (campaignEx.isHasMBTplMark()) {
            return;
        }
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36591i);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f36591i, campaignEx, "splash");
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36591i);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36591i);
    }

    public void a(com.mbridge.msdk.splash.middle.d dVar) {
        this.f36586d = dVar;
    }

    public void d(int i10) {
        MBSplashView mBSplashView = this.f36585c;
        if (mBSplashView != null) {
            mBSplashView.updateCountdown(i10);
            if (this.f36585c.getSplashSignalCommunicationImpl() != null) {
                this.f36585c.getSplashSignalCommunicationImpl().c(i10);
            }
        }
        if (i10 < 0) {
            this.f36594l = i10;
            return;
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f36586d;
        if (dVar != null) {
            dVar.a(this.f36593k, i10 * 1000);
        }
        if (this.f36590h == null) {
            j();
        }
    }

    public void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            viewGroup.setOnClickListener(this.f36606x);
        }
        this.f36590h = viewGroup;
    }

    private void c(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                List<String> pv_urls = campaignEx.getPv_urls();
                if (pv_urls == null || pv_urls.size() <= 0) {
                    return;
                }
                Iterator<String> it = pv_urls.iterator();
                while (it.hasNext()) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, it.next(), false, true);
                }
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage());
            }
        }
    }

    public void a(CampaignEx campaignEx, MBSplashView mBSplashView) {
        MBSplashWebview splashWebview;
        a(this.f36588f);
        this.f36584b = campaignEx;
        this.f36585c = mBSplashView;
        com.mbridge.msdk.splash.signal.b splashSignalCommunicationImpl = mBSplashView.getSplashSignalCommunicationImpl();
        if (splashSignalCommunicationImpl == null) {
            splashSignalCommunicationImpl = new com.mbridge.msdk.splash.signal.b(mBSplashView.getContext(), this.f36592j, this.f36591i);
            ArrayList arrayList = new ArrayList();
            arrayList.add(campaignEx);
            splashSignalCommunicationImpl.a(arrayList);
        }
        splashSignalCommunicationImpl.b(this.f36594l);
        splashSignalCommunicationImpl.a(this.f36588f ? 1 : 0);
        a aVar = null;
        if (this.f36604v == null) {
            this.f36604v = new h(this, aVar);
        }
        splashSignalCommunicationImpl.a(this.f36604v);
        mBSplashView.setSplashSignalCommunicationImpl(splashSignalCommunicationImpl);
        boolean zIsHasMBTplMark = campaignEx.isHasMBTplMark();
        View view = this.f36590h;
        if (view == null) {
            if (zIsHasMBTplMark) {
                this.f36589g.setVisibility(8);
            }
            j();
            a(this.f36589g);
            mBSplashView.setCloseView(this.f36589g);
        } else {
            if (zIsHasMBTplMark) {
                view.setVisibility(8);
            }
            a(this.f36590h);
            mBSplashView.setCloseView(this.f36590h);
        }
        mBSplashView.show();
        CampaignEx campaignEx2 = this.f36584b;
        if (campaignEx2 != null && campaignEx2.isActiveOm() && (splashWebview = mBSplashView.getSplashWebview()) != null) {
            try {
                com.iab.omid.library.mmadbridge.adsession.b bVarA = com.mbridge.msdk.omsdk.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), splashWebview, splashWebview.getUrl(), this.f36584b);
                this.f36605w = bVarA;
                if (bVarA != null) {
                    splashWebview.setAdSession(bVarA);
                    this.f36605w.d(splashWebview);
                    this.f36605w.g();
                }
                o0.a("OMSDK", "adSession.start()");
            } catch (Throwable th2) {
                o0.a("OMSDK", th2.getMessage());
                CampaignEx campaignEx3 = this.f36584b;
                if (campaignEx3 != null) {
                    String requestId = campaignEx3.getRequestId();
                    String requestIdNotice = this.f36584b.getRequestIdNotice();
                    String id2 = this.f36584b.getId();
                    new com.mbridge.msdk.foundation.same.report.h(splashWebview.getContext()).a(requestId, requestIdNotice, id2, this.f36591i, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
        com.mbridge.msdk.splash.manager.d.b(this.f36591i);
        this.f36607y.removeMessages(1);
        this.f36607y.sendEmptyMessageDelayed(1, 1000L);
        this.f36607y.sendEmptyMessageDelayed(2, 1000L);
        b();
        if (!this.f36584b.isMraid()) {
            a();
        }
        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36584b.getMaitve(), this.f36584b.getMaitve_src());
        try {
            BitmapDrawable bitmapDrawableA = com.mbridge.msdk.foundation.controller.c.m().a(this.f36591i, this.f36584b.getAdType());
            if (bitmapDrawableA != null) {
                if (this.f36603u == null) {
                    this.f36603u = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                if (this.f36603u.getVisibility() != 0) {
                    this.f36603u.setVisibility(0);
                }
                t0.a(this.f36603u, bitmapDrawableA, mBSplashView.getResources().getDisplayMetrics());
                if (this.f36603u.getParent() == null) {
                    mBSplashView.addView(this.f36603u, new ViewGroup.LayoutParams(-1, -1));
                }
                com.iab.omid.library.mmadbridge.adsession.b bVar = this.f36605w;
                if (bVar != null) {
                    bVar.a(this.f36603u, FriendlyObstructionPurpose.OTHER, null);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override
        public void a() {
            String string;
            b.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f36585c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void close() {
            String string;
            b.this.g();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f36585c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            b.this.g();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) b.this.f36585c.getSplashWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    protected void b(int i10) {
        CampaignEx campaignEx;
        MBSplashWebview splashWebview;
        MBSplashView mBSplashView = this.f36585c;
        if (mBSplashView != null && (splashWebview = mBSplashView.getSplashWebview()) != null) {
            splashWebview.finishAdSession();
        }
        if (this.f36607y != null && (campaignEx = this.f36584b) != null && campaignEx.isActiveOm()) {
            this.f36607y.postDelayed(new e(i10), 1500L);
        } else {
            a(i10);
        }
    }

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33587n);
            } catch (Throwable th2) {
                o0.b("SplashShowManager", th2.getMessage());
            }
        }
    }

    public void b() {
        MBSplashView mBSplashView;
        Context context;
        CampaignEx campaignEx = this.f36584b;
        if (campaignEx == null || campaignEx.getPrivacyButtonTemplateVisibility() != 1 || (mBSplashView = this.f36585c) == null || mBSplashView.getSplashWebview() == null || this.f36585c.isDynamicView() || !this.f36584b.isMraid() || (context = this.f36585c.getContext()) == null) {
            return;
        }
        try {
            int iA = g0.a(context, "mbridge_splash_notice", "drawable");
            int iA2 = t0.a(context, 35.0f);
            int iA3 = t0.a(context, 9.0f);
            ImageView imageView = new ImageView(context);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA2, iA2);
            layoutParams.addRule(9);
            layoutParams.addRule(10);
            layoutParams.setMargins(iA3, iA3, iA3, iA3);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setBackgroundResource(iA);
            t0.a(3, imageView, this.f36584b, context, true, new g());
            this.f36585c.addView(imageView);
        } catch (Throwable th2) {
            o0.b("SplashShowManager", th2.getMessage());
        }
    }

    private void a() {
        RelativeLayout.LayoutParams layoutParams;
        CampaignEx campaignEx = this.f36584b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.f36591i);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f36591i, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.f36591i, this.f36584b);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            MBSplashView mBSplashView = this.f36585c;
            if (mBSplashView == null || !mBSplashView.isDynamicView()) {
                com.mbridge.msdk.foundation.feedback.b.b().a(this.f36591i, new c());
                FeedBackButton feedBackButtonA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f36591i);
                if (feedBackButtonA != null) {
                    try {
                        layoutParams = (RelativeLayout.LayoutParams) feedBackButtonA.getLayoutParams();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        layoutParams = null;
                    }
                    if (layoutParams == null) {
                        layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f34456e, com.mbridge.msdk.foundation.feedback.b.f34455d);
                    }
                    layoutParams.topMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                    layoutParams.leftMargin = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f);
                    ViewGroup viewGroup = (ViewGroup) feedBackButtonA.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(feedBackButtonA);
                    }
                    MBSplashView mBSplashView2 = this.f36585c;
                    if (mBSplashView2 != null) {
                        mBSplashView2.addView(feedBackButtonA, layoutParams);
                    }
                }
            }
        }
    }

    private void a(CampaignEx campaignEx) {
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36591i);
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36591i);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f36591i);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f36591i, campaignEx, "splash");
    }

    public void a(boolean z10) {
        this.f36588f = z10;
        if (z10) {
            this.f36595m = this.f36596n;
        } else {
            this.f36595m = this.f36598p;
        }
    }

    protected void a(CampaignEx campaignEx, boolean z10, String str) {
        if (this.f36587e == null) {
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36591i);
            this.f36587e = aVar;
            aVar.a(this.f36608z);
        }
        campaignEx.setCampaignUnitId(this.f36591i);
        this.f36587e.a(campaignEx);
        if (!this.f36584b.isReportClick()) {
            this.f36584b.setReportClick(true);
            com.mbridge.msdk.splash.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.splash.middle.d dVar = this.f36586d;
        if (dVar != null) {
            dVar.a(this.f36593k);
            b(3);
        }
        if (!z10 || TextUtils.isEmpty(str)) {
            return;
        }
        com.mbridge.msdk.splash.report.a.a(campaignEx, this.f36591i, str);
    }

    private void a(View view) {
        if (view != null) {
            view.setOnClickListener(this.f36606x);
        }
    }

    public void a(int i10) {
        MBSplashView mBSplashView;
        try {
            com.mbridge.msdk.splash.middle.d dVar = this.f36586d;
            if (dVar != null) {
                dVar.a(this.f36593k, i10);
                this.f36586d = null;
                com.mbridge.msdk.splash.report.a.a(this.f36591i, this.f36584b);
            }
            ImageView imageView = this.f36603u;
            if (imageView != null && imageView.getParent() != null && (mBSplashView = this.f36585c) != null) {
                mBSplashView.removeView(this.f36603u);
                this.f36603u.setVisibility(8);
            }
            this.f36600r = false;
            com.mbridge.msdk.splash.report.a.a(this.f36591i, i10, this.f36584b);
            Handler handler = this.f36607y;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Exception e10) {
            o0.b("SplashShowManager", e10.getMessage());
        }
    }

    private void a(CampaignEx campaignEx, Context context, String str) {
        com.mbridge.msdk.foundation.controller.c.m().a(context);
        if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
            new Thread(new f(context, campaignEx)).start();
            com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33586m);
        }
        if (TextUtils.isEmpty(str) || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().k() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
    }
}
