package com.mbridge.msdk.mbbanner.common.manager;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.setting.l;

public class c extends d {

    class a implements NativeListener.TrackingExListener {
        a() {
        }

        @Override
        public void onDismissLoading(Campaign campaign) {
        }

        @Override
        public void onDownloadFinish(Campaign campaign) {
        }

        @Override
        public void onDownloadProgress(int i10) {
        }

        @Override
        public void onDownloadStart(Campaign campaign) {
        }

        @Override
        public void onFinishRedirection(Campaign campaign, String str) {
            s0.a(campaign, c.this.f35270d);
        }

        @Override
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override
        public void onLeaveApp() {
            com.mbridge.msdk.mbbanner.common.listener.c cVar = c.this.f35267a;
            if (cVar != null) {
                cVar.onLeaveApp();
            }
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            s0.a(campaign, c.this.f35270d);
        }

        @Override
        public void onShowLoading(Campaign campaign) {
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            s0.b(campaign, c.this.f35270d);
        }
    }

    public c(MBBannerView mBBannerView, com.mbridge.msdk.mbbanner.common.listener.c cVar, String str, String str2, boolean z10, l lVar) {
        super(mBBannerView, cVar, str, str2, z10, lVar);
    }

    @Override
    public void a(CampaignEx campaignEx, boolean z10, String str) {
        if (this.f35281o) {
            if (this.f35286t == null) {
                this.f35286t = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f35282p);
            }
            this.f35286t.a(new a());
            campaignEx.setCampaignUnitId(this.f35282p);
            this.f35286t.a(campaignEx);
            if (!this.f35269c.isReportClick()) {
                this.f35269c.setReportClick(true);
                com.mbridge.msdk.mbbanner.common.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
            }
            com.mbridge.msdk.mbbanner.common.listener.c cVar = this.f35267a;
            if (cVar != null) {
                cVar.c();
            }
            if (!z10 || TextUtils.isEmpty(str)) {
                return;
            }
            com.mbridge.msdk.mbbanner.common.report.a.a(campaignEx, this.f35282p, str);
        }
    }
}
