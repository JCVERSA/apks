package com.mbridge.msdk.advanced.manager;

import android.content.Context;
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
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class a {

    protected CampaignEx f33228b;

    protected MBNativeAdvancedView f33229c;

    protected com.mbridge.msdk.advanced.middle.d f33230d;

    protected com.mbridge.msdk.click.a f33231e;

    private com.mbridge.msdk.advanced.middle.c f33232f;

    private boolean f33233g;

    private ImageView f33235i;

    protected String f33236j;

    private String f33237k;

    protected MBridgeIds f33238l;

    private boolean f33239m;

    private String f33227a = "NativeAdvancedShowManager";

    private int f33234h = -1;

    private View.OnClickListener f33240n = new ViewOnClickListenerC0441a();

    public Handler f33241o = new b(Looper.getMainLooper());

    private com.mbridge.msdk.advanced.middle.a f33242p = new c();

    class ViewOnClickListenerC0441a implements View.OnClickListener {
        ViewOnClickListenerC0441a() {
        }

        @Override
        public void onClick(View view) {
            if (a.this.f33233g) {
                a.this.a(1);
            }
        }
    }

    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(@NonNull Message message) {
            CampaignEx campaignEx;
            MBNativeAdvancedView mBNativeAdvancedView;
            MBNativeAdvancedWebview advancedNativeWebview;
            super.handleMessage(message);
            if (message.what != 2 || (campaignEx = a.this.f33228b) == null || !campaignEx.isActiveOm() || (mBNativeAdvancedView = a.this.f33229c) == null || (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) == null) {
                return;
            }
            try {
                com.iab.omid.library.mmadbridge.adsession.b adSession = advancedNativeWebview.getAdSession();
                if (adSession != null) {
                    com.iab.omid.library.mmadbridge.adsession.a aVarA = com.iab.omid.library.mmadbridge.adsession.a.a(adSession);
                    aVarA.c();
                    aVarA.b();
                    o0.a("OMSDK", "adSession.impressionOccurred()");
                }
            } catch (Throwable th2) {
                o0.a("OMSDK", th2.getMessage());
                CampaignEx campaignEx2 = a.this.f33228b;
                if (campaignEx2 != null) {
                    String requestId = campaignEx2.getRequestId();
                    String requestIdNotice = a.this.f33228b.getRequestIdNotice();
                    String id2 = a.this.f33228b.getId();
                    new h(advancedNativeWebview.getContext()).a(requestId, requestIdNotice, id2, a.this.f33236j, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
    }

    class c implements com.mbridge.msdk.advanced.middle.a {
        c() {
        }

        @Override
        public void a(CampaignEx campaignEx) {
            a.this.a(campaignEx, false, "");
        }

        @Override
        public void close() {
            a.this.a(1);
        }

        @Override
        public void toggleCloseBtn(int i10) {
            a.this.f33234h = i10;
            MBNativeAdvancedView mBNativeAdvancedView = a.this.f33229c;
            if (mBNativeAdvancedView != null) {
                mBNativeAdvancedView.changeCloseBtnState(i10);
            }
        }

        @Override
        public void triggerCloseBtn(Object obj, String str) {
            MBNativeAdvancedView mBNativeAdvancedView = a.this.f33229c;
            if (mBNativeAdvancedView != null) {
                mBNativeAdvancedView.setVisibility(8);
            }
            a.this.a(1);
        }

        @Override
        public void a(int i10) {
            o0.b(a.this.f33227a, "resetCountdown" + i10);
        }

        @Override
        public void a(boolean z10) {
            a aVar = a.this;
            if (aVar.f33230d != null) {
                aVar.f33239m = z10;
                if (z10) {
                    a aVar2 = a.this;
                    aVar2.f33230d.f(aVar2.f33238l);
                } else {
                    a aVar3 = a.this;
                    aVar3.f33230d.a(aVar3.f33238l);
                }
            }
        }

        @Override
        public void a(boolean z10, String str) {
            try {
                if (a.this.f33230d != null) {
                    if (TextUtils.isEmpty(str)) {
                        a aVar = a.this;
                        aVar.f33230d.b(aVar.f33238l);
                        a aVar2 = a.this;
                        aVar2.f33230d.d(aVar2.f33238l);
                    } else {
                        CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(CampaignEx.campaignToJsonObject(a.this.f33228b));
                        campaignWithBackData.setClickTempSource(2);
                        campaignWithBackData.setClickType(2);
                        campaignWithBackData.setTriggerClickSource(2);
                        campaignWithBackData.setClickURL(str);
                        a.this.a(campaignWithBackData, z10, str);
                    }
                }
            } catch (Exception e10) {
                o0.b(a.this.f33227a, e10.getMessage());
            }
        }
    }

    class e implements Runnable {

        final CampaignEx f33248a;

        final MBNativeAdvancedView f33249b;

        e(CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView) {
            this.f33248a = campaignEx;
            this.f33249b = mBNativeAdvancedView;
        }

        @Override
        public void run() {
            a.this.a(this.f33248a, this.f33249b, false);
        }
    }

    class f implements Runnable {

        final Context f33251a;

        final CampaignEx f33252b;

        f(Context context, CampaignEx campaignEx) {
            this.f33251a = context;
            this.f33252b = campaignEx;
        }

        @Override
        public void run() {
            try {
                j.a(g.a(this.f33251a)).b(this.f33252b.getId());
            } catch (Exception unused) {
                o0.b(a.this.f33227a, "campain can't insert db");
            }
        }
    }

    public a(Context context, String str, String str2) {
        this.f33236j = str2;
        this.f33237k = str;
        this.f33238l = new MBridgeIds(str, str2);
        if (this.f33235i == null) {
            ImageView imageView = new ImageView(context);
            this.f33235i = imageView;
            imageView.setPadding(t0.a(context, 2.0f), t0.a(context, 2.0f), t0.a(context, 2.0f), t0.a(context, 2.0f));
            d();
        }
    }

    private void d() {
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f33235i.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f33235i.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(t0.a(contextD, 29.0f), t0.a(contextD, 16.0f));
        }
        this.f33235i.setLayoutParams(layoutParams);
        this.f33235i.setImageResource(contextD.getResources().getIdentifier("mbridge_native_advanced_close_icon", "drawable", com.mbridge.msdk.foundation.controller.c.m().h()));
    }

    private void h() {
        if (this.f33228b.isReport()) {
            return;
        }
        a(this.f33228b);
        com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33228b, this.f33236j);
        com.mbridge.msdk.advanced.middle.d dVar = this.f33230d;
        if (dVar != null) {
            dVar.e(this.f33238l);
        }
    }

    private void i() {
        CampaignEx campaignEx;
        MBNativeAdvancedView mBNativeAdvancedView = this.f33229c;
        if (mBNativeAdvancedView == null || (campaignEx = this.f33228b) == null) {
            return;
        }
        mBNativeAdvancedView.setAdChoiceCampaign(campaignEx);
    }

    public void a(CampaignEx campaignEx, boolean z10, String str) {
        throw null;
    }

    public String c() {
        CampaignEx campaignEx = this.f33228b;
        return (campaignEx == null || campaignEx.getRequestId() == null) ? "" : this.f33228b.getRequestId();
    }

    public void e() {
        MBNativeAdvancedWebview advancedNativeWebview;
        MBNativeAdvancedView mBNativeAdvancedView = this.f33229c;
        if (mBNativeAdvancedView == null || (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) == null || advancedNativeWebview.isDestoryed()) {
            return;
        }
        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) advancedNativeWebview, "onViewDisappeared", "");
    }

    public void f() {
        MBNativeAdvancedWebview advancedNativeWebview;
        if (this.f33229c == null || com.mbridge.msdk.foundation.feedback.b.f34457f || (advancedNativeWebview = this.f33229c.getAdvancedNativeWebview()) == null || advancedNativeWebview.isDestoryed()) {
            return;
        }
        com.mbridge.msdk.advanced.signal.a.a(advancedNativeWebview, "onViewAppeared", "");
    }

    public void g() {
        if (this.f33230d != null) {
            this.f33230d = null;
        }
        if (this.f33242p != null) {
            this.f33242p = null;
        }
        if (this.f33240n != null) {
            this.f33240n = null;
        }
        MBNativeAdvancedView mBNativeAdvancedView = this.f33229c;
        if (mBNativeAdvancedView != null) {
            MBNativeAdvancedWebview advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview();
            if (advancedNativeWebview != null) {
                advancedNativeWebview.finishAdSession();
            }
            this.f33229c.destroy();
        }
        if (this.f33232f != null) {
            this.f33232f = null;
        }
        com.mbridge.msdk.foundation.feedback.b.b().d(this.f33236j);
    }

    public com.mbridge.msdk.advanced.middle.a b() {
        return this.f33242p;
    }

    private void b(CampaignEx campaignEx, Context context, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getOnlyImpressionURL())) {
                    return;
                }
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.f33587n);
            } catch (Throwable th2) {
                o0.b(this.f33227a, th2.getMessage());
            }
        }
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
                o0.b(this.f33227a, th2.getMessage());
            }
        }
    }

    public void a(com.mbridge.msdk.advanced.middle.c cVar) {
        this.f33232f = cVar;
    }

    public void a(com.mbridge.msdk.advanced.middle.d dVar) {
        this.f33230d = dVar;
    }

    public String a() {
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = this.f33228b;
        if (campaignEx != null) {
            arrayList.add(campaignEx);
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    class d implements com.mbridge.msdk.foundation.feedback.a {

        final MBNativeAdvancedView f33246a;

        d(MBNativeAdvancedView mBNativeAdvancedView) {
            this.f33246a = mBNativeAdvancedView;
        }

        @Override
        public void a() {
            String string;
            a.this.e();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(a.this.f33227a, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f33246a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void close() {
            String string;
            a.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(a.this.f33227a, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f33246a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            a.this.f();
            try {
                JSONObject jSONObject = new JSONObject();
                if (com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(a.this.f33227a, th2.getMessage(), th2);
                string = "";
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f33246a.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }

    public void a(CampaignEx campaignEx, MBNativeAdvancedView mBNativeAdvancedView, boolean z10) {
        MBNativeAdvancedWebview advancedNativeWebview;
        View viewA;
        RelativeLayout.LayoutParams layoutParams;
        if (mBNativeAdvancedView == null) {
            return;
        }
        this.f33228b = campaignEx;
        this.f33229c = mBNativeAdvancedView;
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f33236j, new d(mBNativeAdvancedView));
        if (campaignEx.isMraid() && com.mbridge.msdk.foundation.feedback.b.b().a() && (viewA = com.mbridge.msdk.foundation.feedback.b.b().a(this.f33236j)) != null) {
            try {
                layoutParams = (RelativeLayout.LayoutParams) viewA.getLayoutParams();
            } catch (Exception e10) {
                e10.printStackTrace();
                layoutParams = null;
            }
            if (layoutParams == null) {
                layoutParams = new RelativeLayout.LayoutParams(com.mbridge.msdk.foundation.feedback.b.f34456e, com.mbridge.msdk.foundation.feedback.b.f34455d);
            }
            layoutParams.addRule(12);
            ViewGroup viewGroup = (ViewGroup) viewA.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(viewA);
            }
            mBNativeAdvancedView.addView(viewA, layoutParams);
        }
        a(this.f33233g);
        com.mbridge.msdk.advanced.signal.b advancedNativeSignalCommunicationImpl = mBNativeAdvancedView.getAdvancedNativeSignalCommunicationImpl();
        if (advancedNativeSignalCommunicationImpl == null) {
            advancedNativeSignalCommunicationImpl = new com.mbridge.msdk.advanced.signal.b(mBNativeAdvancedView.getContext(), this.f33237k, this.f33236j);
            List<CampaignEx> arrayList = new ArrayList<>();
            arrayList.add(campaignEx);
            advancedNativeSignalCommunicationImpl.a(arrayList);
        }
        advancedNativeSignalCommunicationImpl.a(this.f33233g ? 1 : 0);
        advancedNativeSignalCommunicationImpl.a(this.f33242p);
        mBNativeAdvancedView.setAdvancedNativeSignalCommunicationImpl(advancedNativeSignalCommunicationImpl);
        if (campaignEx.isHasMBTplMark() || !this.f33233g) {
            this.f33235i.setVisibility(8);
        }
        a(this.f33235i);
        mBNativeAdvancedView.setCloseView(this.f33235i);
        if (mBNativeAdvancedView.getVisibility() != 0) {
            mBNativeAdvancedView.setVisibility(0);
        }
        boolean zA = b1.a(mBNativeAdvancedView.getAdvancedNativeWebview(), 0);
        com.mbridge.msdk.advanced.middle.c cVar = this.f33232f;
        if (cVar == null || zA || cVar.d() == null || this.f33232f.d().getAlpha() < 0.5f || this.f33232f.d().getVisibility() != 0 || this.f33239m) {
            if (z10) {
                mBNativeAdvancedView.postDelayed(new e(campaignEx, mBNativeAdvancedView), 200L);
                return;
            }
            return;
        }
        mBNativeAdvancedView.show();
        com.mbridge.msdk.foundation.controller.c.m().a(mBNativeAdvancedView.getContext());
        campaignEx.setCampaignUnitId(this.f33236j);
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f33236j, campaignEx);
        CampaignEx campaignEx2 = this.f33228b;
        if (campaignEx2 != null && campaignEx2.isActiveOm() && (advancedNativeWebview = mBNativeAdvancedView.getAdvancedNativeWebview()) != null) {
            try {
                com.iab.omid.library.mmadbridge.adsession.b bVarA = com.mbridge.msdk.omsdk.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), advancedNativeWebview, advancedNativeWebview.getUrl(), this.f33228b);
                if (bVarA != null) {
                    advancedNativeWebview.setAdSession(bVarA);
                    bVarA.d(advancedNativeWebview);
                    bVarA.g();
                    o0.a("OMSDK", "adSession.start()");
                }
            } catch (Throwable th2) {
                o0.a("OMSDK", th2.getMessage());
                CampaignEx campaignEx3 = this.f33228b;
                if (campaignEx3 != null) {
                    String requestId = campaignEx3.getRequestId();
                    String requestIdNotice = this.f33228b.getRequestIdNotice();
                    String id2 = this.f33228b.getId();
                    new h(com.mbridge.msdk.foundation.controller.c.m().d()).a(requestId, requestIdNotice, id2, this.f33236j, "fetch OM failed, exception" + th2.getMessage());
                }
            }
        }
        h();
        if (campaignEx.isMraid()) {
            i();
        }
        int i10 = this.f33234h;
        if (i10 != -1) {
            mBNativeAdvancedView.changeCloseBtnState(i10);
        }
        com.mbridge.msdk.advanced.manager.d.b(this.f33236j);
        com.mbridge.msdk.advanced.common.c.b(this.f33237k + this.f33236j + campaignEx.getRequestId());
        this.f33241o.sendEmptyMessageDelayed(2, 1000L);
        com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33228b.getMaitve(), this.f33228b.getMaitve_src());
    }

    private void a(CampaignEx campaignEx) {
        if (campaignEx.isHasMBTplMark()) {
            return;
        }
        a(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f33236j);
        campaignEx.setReport(true);
        com.mbridge.msdk.foundation.same.buffer.b.a(this.f33236j, campaignEx, "h5_native");
        b(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f33236j);
        c(campaignEx, com.mbridge.msdk.foundation.controller.c.m().d(), this.f33236j);
    }

    public void a(boolean z10) {
        this.f33233g = z10;
    }

    private void a(View view) {
        if (view != null) {
            view.setOnClickListener(this.f33240n);
        }
    }

    public void a(int i10) {
        com.mbridge.msdk.advanced.middle.d dVar = this.f33230d;
        if (dVar != null) {
            dVar.c(this.f33238l);
            this.f33230d = null;
            com.mbridge.msdk.advanced.report.a.a(this.f33236j, this.f33228b);
        }
        com.mbridge.msdk.advanced.report.a.a(this.f33236j, i10, this.f33228b);
        MBNativeAdvancedView mBNativeAdvancedView = this.f33229c;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.setVisibility(8);
            e();
            MBNativeAdvancedWebview advancedNativeWebview = this.f33229c.getAdvancedNativeWebview();
            if (advancedNativeWebview != null) {
                advancedNativeWebview.finishAdSession();
            }
        }
        Handler handler = this.f33241o;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
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
