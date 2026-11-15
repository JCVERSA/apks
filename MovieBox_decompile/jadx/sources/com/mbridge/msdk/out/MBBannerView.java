package com.mbridge.msdk.out;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.error.b;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import org.json.JSONObject;

public class MBBannerView extends RelativeLayout implements BaseExtraInterfaceForHandler {
    private String bidToken;
    private com.mbridge.msdk.mbbanner.controll.a controller;
    private boolean hadAttached;
    private boolean isVisible;
    private BannerAdListener mBannerAdListener;
    private MBridgeIds mBridgeIds;
    private String unitId;

    public MBBannerView(Context context) {
        this(context, null);
    }

    private void callbackAndReportFail(c cVar, b bVar) {
        String strG = "";
        if (bVar != null) {
            try {
                strG = bVar.g();
            } catch (Throwable th2) {
                o0.b("BannerView", th2.getMessage());
            }
        }
        cVar.a(bVar);
        cVar.b(true);
        com.mbridge.msdk.mbbanner.common.report.a.a("2000047", cVar, (e) null);
        BannerAdListener bannerAdListener = this.mBannerAdListener;
        if (bannerAdListener != null) {
            bannerAdListener.onLoadFailed(this.mBridgeIds, strG);
        }
    }

    private void delayedNotify() {
        postDelayed(new Runnable() {
            @Override
            public void run() {
                if (MBBannerView.this.controller == null || com.mbridge.msdk.foundation.feedback.b.f34457f) {
                    return;
                }
                MBBannerView.this.controller.c(true);
            }
        }, 200L);
    }

    private void updateAttachedState(boolean z10) {
        this.hadAttached = z10;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.b(z10);
        }
    }

    public String getCreativeIdWithUnitId() {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        return aVar != null ? aVar.d() : "";
    }

    public String getRequestId() {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        return aVar != null ? aVar.e() : "";
    }

    public void init(BannerSize bannerSize, String str, String str2) {
        this.unitId = str2;
        this.mBridgeIds = new MBridgeIds(TextUtils.isEmpty(str) ? "" : str, str2);
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        com.mbridge.msdk.mbbanner.controll.a aVar = new com.mbridge.msdk.mbbanner.controll.a(this, bannerSize, str, str2);
        this.controller = aVar;
        aVar.c(this.isVisible);
        this.controller.b(this.hadAttached);
    }

    public void load() {
        String strB = com.mbridge.msdk.mbbanner.common.report.a.b(this.bidToken);
        c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.unitId, strB);
        cVarA.g("0");
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.b(this.hadAttached);
            this.controller.a("", strB);
        } else {
            b bVar = new b(880042);
            bVar.b(strB);
            callbackAndReportFail(cVarA, bVar);
        }
    }

    public void loadFromBid(String str) {
        this.bidToken = str;
        String strB = com.mbridge.msdk.mbbanner.common.report.a.b(str);
        c cVarA = com.mbridge.msdk.mbbanner.common.report.a.a(this.unitId, strB);
        cVarA.g("1");
        if (this.controller == null) {
            b bVar = new b(880042);
            bVar.b(strB);
            callbackAndReportFail(cVarA, bVar);
        } else if (TextUtils.isEmpty(str)) {
            b bVar2 = new b(880035);
            bVar2.b(strB);
            callbackAndReportFail(cVarA, bVar2);
        } else {
            this.controller.b(this.hadAttached);
            this.controller.b(0);
            this.controller.a(str, strB);
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateAttachedState(true);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateAttachedState(false);
    }

    public void onPause() {
        if (this.controller == null || !TextUtils.isEmpty(this.bidToken)) {
            return;
        }
        this.controller.g();
    }

    public void onResume() {
        if (this.controller == null || !TextUtils.isEmpty(this.bidToken) || com.mbridge.msdk.foundation.feedback.b.f34457f) {
            return;
        }
        this.controller.h();
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(i10, i11, i12, i13);
        }
    }

    @Override
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        this.isVisible = i10 == 0;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            if (i10 == 0) {
                delayedNotify();
            } else {
                aVar.c(false);
            }
        }
    }

    @Override
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.isVisible = i10 == 0;
        if (this.controller != null) {
            if (i10 == 0) {
                delayedNotify();
            } else {
                if (com.mbridge.msdk.foundation.feedback.b.f34457f) {
                    return;
                }
                this.controller.c(false);
            }
        }
    }

    public void release() {
        if (this.mBannerAdListener != null) {
            this.mBannerAdListener = null;
        }
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a((BannerAdListener) null);
            this.controller.i();
        }
        removeAllViews();
    }

    public void setAllowShowCloseBtn(boolean z10) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(z10);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.mBannerAdListener = bannerAdListener;
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(bannerAdListener);
        }
    }

    @Override
    public void setExtraInfo(JSONObject jSONObject) {
        com.mbridge.msdk.foundation.controller.c.m().a(this.unitId, jSONObject);
    }

    public void setRefreshTime(int i10) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar == null || i10 < 0) {
            return;
        }
        aVar.b(i10);
    }

    public void updateBannerSize(BannerSize bannerSize) {
        com.mbridge.msdk.mbbanner.controll.a aVar = this.controller;
        if (aVar != null) {
            aVar.a(bannerSize);
        }
    }

    public MBBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MBBannerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.hadAttached = false;
        this.isVisible = false;
        com.mbridge.msdk.foundation.controller.c.m().a(context);
    }
}
