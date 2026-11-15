package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;

public class WindVaneWebView extends BaseWebView {

    protected j f35693d;

    protected b f35694e;

    protected e f35695f;

    private Object f35696g;

    private Object f35697h;

    private String f35698i;

    private c f35699j;

    private String f35700k;

    private String f35701l;

    private CampaignEx f35702m;

    private int f35703n;

    private boolean f35704o;

    private float f35705p;

    private float f35706q;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            WindVaneWebView.this.f35704o = true;
            WindVaneWebView.this.destroy();
        }
    }

    public WindVaneWebView(Context context) {
        super(context);
        this.f35704o = false;
        this.f35705p = 0.0f;
        this.f35706q = 0.0f;
    }

    public void clearWebView() {
        if (this.f35704o) {
            return;
        }
        loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
    }

    public CampaignEx getCampaignEx() {
        return this.f35702m;
    }

    public String getCampaignId() {
        return this.f35698i;
    }

    public Object getJsObject(String str) {
        e eVar = this.f35695f;
        if (eVar == null) {
            return null;
        }
        return eVar.a(str);
    }

    public String getLocalRequestId() {
        return this.f35701l;
    }

    public Object getMraidObject() {
        return this.f35697h;
    }

    public Object getObject() {
        return this.f35696g;
    }

    public String getRid() {
        return this.f35700k;
    }

    public b getSignalCommunication() {
        return this.f35694e;
    }

    public c getWebViewListener() {
        return this.f35699j;
    }

    public boolean isDestoryed() {
        return this.f35704o;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.mbridge.msdk.mbsignalcommon.base.b bVar = this.mWebViewClient;
        if (bVar != null && (bVar.a() instanceof IntentFilter)) {
            String url = getUrl();
            if (!TextUtils.isEmpty(url) && url.contains("https://play.google.com")) {
                if (motionEvent.getAction() == 0) {
                    this.f35705p = motionEvent.getRawX();
                    this.f35706q = motionEvent.getRawY();
                } else {
                    float rawX = motionEvent.getRawX() - this.f35705p;
                    float y10 = motionEvent.getY() - this.f35706q;
                    if ((rawX >= 0.0f || rawX * (-1.0f) <= 48) && ((rawX <= 0.0f || rawX <= 48) && ((y10 >= 0.0f || (-1.0f) * y10 <= 48) && (y10 <= 0.0f || y10 <= 48)))) {
                        setClickable(false);
                        return true;
                    }
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void registerWindVanePlugin(Class cls) {
        e eVar = this.f35695f;
        if (eVar == null) {
            return;
        }
        eVar.a(cls.getSimpleName(), cls);
    }

    public void release() {
        try {
            if (!this.f35704o) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(this.f35703n));
                if (this.f35702m != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000135", this.f35702m, eVar);
                }
            }
        } catch (Exception unused) {
        }
        try {
            setVisibility(8);
            removeAllViews();
            setDownloadListener(null);
            this.f35696g = null;
            int iB = t0.b(getContext());
            if (iB == 0) {
                this.f35704o = true;
                destroy();
            } else {
                new Handler().postDelayed(new a(), iB * 1000);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void setApiManagerContext(Context context) {
        e eVar = this.f35695f;
        if (eVar != null) {
            eVar.a(context);
        }
    }

    public void setApiManagerJSFactory(Object obj) {
        e eVar = this.f35695f;
        if (eVar != null) {
            eVar.a(obj);
        }
    }

    public void setCampaignEx(CampaignEx campaignEx) {
        this.f35702m = campaignEx;
    }

    public void setCampaignId(String str) {
        this.f35698i = str;
    }

    public void setLocalRequestId(String str) {
        this.f35701l = str;
    }

    public void setMraidObject(Object obj) {
        this.f35697h = obj;
    }

    public void setObject(Object obj) {
        this.f35696g = obj;
    }

    public void setRid(String str) {
        this.f35700k = str;
    }

    public void setSignalCommunication(b bVar) {
        this.f35694e = bVar;
        bVar.a(this);
    }

    public void setTempTypeForMetrics(int i10) {
        this.f35703n = i10;
    }

    public void setWebViewChromeClient(j jVar) {
        this.f35693d = jVar;
        setWebChromeClient(jVar);
    }

    public void setWebViewListener(c cVar) {
        this.f35699j = cVar;
        j jVar = this.f35693d;
        if (jVar != null) {
            jVar.a(cVar);
        }
        com.mbridge.msdk.mbsignalcommon.base.b bVar = this.mWebViewClient;
        if (bVar != null) {
            bVar.a(cVar);
        }
    }

    public void setWebViewTransparent() {
        super.setTransparent();
    }

    @Override
    protected void a() {
        super.a();
        getSettings().setSavePassword(false);
        getSettings().setUserAgentString(getSettings().getUserAgentString() + " WindVane/3.0.2");
        if (this.f35693d == null) {
            this.f35693d = new j(this);
        }
        setWebViewChromeClient(this.f35693d);
        k kVar = new k();
        this.mWebViewClient = kVar;
        setWebViewClient(kVar);
        if (this.f35694e == null) {
            b hVar = new h(this.f35593a);
            this.f35694e = hVar;
            setSignalCommunication(hVar);
        }
        this.f35695f = new e(this.f35593a, this);
    }

    public WindVaneWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35704o = false;
        this.f35705p = 0.0f;
        this.f35706q = 0.0f;
    }

    public WindVaneWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f35704o = false;
        this.f35705p = 0.0f;
        this.f35706q = 0.0f;
    }
}
