package com.mbridge.msdk.advanced.view;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.widget.MBAdChoice;
import java.util.HashMap;
import org.json.JSONObject;

public class MBNativeAdvancedView extends RelativeLayout {

    private static String f33410i = "MBAdvancedNativeView";

    private MBNativeAdvancedWebview f33411a;

    private View f33412b;

    private boolean f33413c;

    private boolean f33414d;

    private boolean f33415e;

    MBAdChoice f33416f;

    private com.mbridge.msdk.advanced.signal.b f33417g;

    private Context f33418h;

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            try {
                o0.a(MBNativeAdvancedView.f33410i, "webviewshow");
                String string = "";
                try {
                    int[] iArr = new int[2];
                    MBNativeAdvancedView.this.f33411a.getLocationOnScreen(iArr);
                    o0.b(MBNativeAdvancedView.f33410i, "coordinate:" + iArr[0] + "--" + iArr[1]);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("startX", t0.b(c.m().d(), (float) iArr[0]));
                    jSONObject.put("startY", t0.b(c.m().d(), (float) iArr[1]));
                    string = jSONObject.toString();
                } catch (Throwable th2) {
                    o0.b(MBNativeAdvancedView.f33410i, th2.getMessage(), th2);
                }
                f.a().a((WebView) MBNativeAdvancedView.this.f33411a, "webviewshow", Base64.encodeToString(string.toString().getBytes(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public MBNativeAdvancedView(Context context) {
        this(context, null);
    }

    private void b() {
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33411a;
        if (mBNativeAdvancedWebview != null && mBNativeAdvancedWebview.getParent() == null) {
            addView(this.f33411a, new ViewGroup.LayoutParams(-1, -1));
        }
        c();
        View view = this.f33412b;
        if (view != null) {
            if (view.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(getContext(), 28.0f), t0.a(getContext(), 16.0f));
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                layoutParams.rightMargin = t0.a(getContext(), 2.0f);
                layoutParams.topMargin = t0.a(getContext(), 2.0f);
                addView(this.f33412b, layoutParams);
            } else {
                bringChildToFront(this.f33412b);
            }
        }
        if (this.f33416f == null) {
            MBAdChoice mBAdChoice = new MBAdChoice(getContext());
            this.f33416f = mBAdChoice;
            mBAdChoice.setFeedbackDialogEventListener(new a());
        }
    }

    private void c() {
        int[] iArr = new int[2];
        this.f33411a.getLocationInWindow(iArr);
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33411a;
        transInfoForMraid(mBNativeAdvancedWebview, iArr[0], iArr[1], mBNativeAdvancedWebview.getWidth(), this.f33411a.getHeight());
        MBNativeAdvancedWebview mBNativeAdvancedWebview2 = this.f33411a;
        if (mBNativeAdvancedWebview2 != null) {
            mBNativeAdvancedWebview2.setObject(this.f33417g);
            this.f33411a.post(new b());
        }
    }

    public static void transInfoForMraid(WebView webView, int i10, int i11, int i12, int i13) {
        String str;
        o0.b(f33410i, "transInfoForMraid");
        try {
            int i14 = c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i14 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            } else {
                str = i14 == 1 ? "portrait" : "undefined";
            }
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
            float fN = k0.n(c.m().d());
            float fM = k0.m(c.m().d());
            HashMap mapV = k0.v(c.m().d());
            int iIntValue = ((Integer) mapV.get("width")).intValue();
            int iIntValue2 = ((Integer) mapV.get("height")).intValue();
            HashMap map = new HashMap();
            map.put("placementType", "inline");
            map.put("state", "default");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            float f10 = i10;
            float f11 = i11;
            float f12 = i12;
            float f13 = i13;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, f10, f11, f12, f13);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, f10, f11, f12, f13);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView);
        } catch (Throwable th2) {
            o0.b(f33410i, "transInfoForMraid", th2);
        }
    }

    public void changeCloseBtnState(int i10) {
        View view = this.f33412b;
        if (view != null) {
            if (i10 == 2) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
            }
        }
    }

    public void clearResState() {
        this.f33415e = false;
        this.f33414d = false;
        this.f33413c = false;
    }

    public void clearResStateAndRemoveClose() {
        clearResState();
        View view = this.f33412b;
        if (view != null && view.getParent() != null) {
            removeView(this.f33412b);
        }
        MBAdChoice mBAdChoice = this.f33416f;
        if (mBAdChoice == null || mBAdChoice.getParent() == null) {
            return;
        }
        removeView(this.f33416f);
    }

    public void destroy() {
        removeAllViews();
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33411a;
        if (mBNativeAdvancedWebview != null && !mBNativeAdvancedWebview.isDestoryed()) {
            this.f33411a.release();
            com.mbridge.msdk.advanced.signal.a.a(this.f33411a, "onSystemDestory", "");
        }
        if (this.f33418h != null) {
            this.f33418h = null;
        }
    }

    public com.mbridge.msdk.advanced.signal.b getAdvancedNativeSignalCommunicationImpl() {
        return this.f33417g;
    }

    public MBNativeAdvancedWebview getAdvancedNativeWebview() {
        return this.f33411a;
    }

    public View getCloseView() {
        return this.f33412b;
    }

    public boolean isEndCardReady() {
        return this.f33415e;
    }

    public boolean isH5Ready() {
        return this.f33413c;
    }

    public boolean isVideoReady() {
        return this.f33414d;
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void resetLoadState() {
        this.f33415e = false;
        this.f33414d = false;
        this.f33413c = false;
    }

    public void setAdChoiceCampaign(CampaignEx campaignEx) {
        MBAdChoice mBAdChoice = this.f33416f;
        if (mBAdChoice != null) {
            mBAdChoice.setCampaign(campaignEx);
            if (this.f33416f.getParent() != null) {
                bringChildToFront(this.f33416f);
                return;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t0.a(c.m().d(), 6.0f), t0.a(c.m().d(), 6.0f));
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            addView(this.f33416f, layoutParams);
        }
    }

    public void setAdvancedNativeSignalCommunicationImpl(com.mbridge.msdk.advanced.signal.b bVar) {
        this.f33417g = bVar;
        MBNativeAdvancedWebview mBNativeAdvancedWebview = this.f33411a;
        if (mBNativeAdvancedWebview != null) {
            mBNativeAdvancedWebview.setObject(bVar);
        }
    }

    public void setAdvancedNativeWebview(MBNativeAdvancedWebview mBNativeAdvancedWebview) {
        this.f33411a = mBNativeAdvancedWebview;
        com.mbridge.msdk.advanced.signal.b bVar = this.f33417g;
        if (bVar != null) {
            mBNativeAdvancedWebview.setObject(bVar);
        }
    }

    public void setCloseView(View view) {
        this.f33412b = view;
        if (view != null) {
            view.setContentDescription("closeButton");
        }
    }

    public void setEndCardReady(boolean z10) {
        this.f33415e = z10;
    }

    public void setH5Ready(boolean z10) {
        this.f33413c = z10;
    }

    public void setVideoReady(boolean z10) {
        this.f33414d = z10;
    }

    public void show() {
        b();
        clearResState();
    }

    public MBNativeAdvancedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBNativeAdvancedView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33418h = context;
    }

    class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override
        public void a() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBNativeAdvancedView.f33410i, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void close() {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBNativeAdvancedView.f33410i, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }

        @Override
        public void a(String str) {
            String string;
            try {
                JSONObject jSONObject = new JSONObject();
                if (c.m().d() != null) {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th2) {
                o0.b(MBNativeAdvancedView.f33410i, th2.getMessage(), th2);
                string = "";
            }
            f.a().a((WebView) MBNativeAdvancedView.this.getAdvancedNativeWebview(), "onFeedbackAlertStatusNotify", Base64.encodeToString(string.getBytes(), 2));
        }
    }
}
