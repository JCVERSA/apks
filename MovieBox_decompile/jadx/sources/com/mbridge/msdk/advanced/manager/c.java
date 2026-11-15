package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;

public class c extends com.mbridge.msdk.advanced.manager.a {

    class a implements NativeListener.TrackingExListener {

        final CampaignEx f33324a;

        a(CampaignEx campaignEx) {
            this.f33324a = campaignEx;
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
            if (campaign == null) {
                return;
            }
            s0.a(campaign, c.this.f33229c);
        }

        @Override
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override
        public void onLeaveApp() {
            c cVar = c.this;
            com.mbridge.msdk.advanced.middle.d dVar = cVar.f33230d;
            if (dVar != null) {
                dVar.d(cVar.f33238l);
            }
        }

        @Override
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, c.this.f33229c);
        }

        @Override
        public void onShowLoading(Campaign campaign) {
        }

        @Override
        public void onStartRedirection(Campaign campaign, String str) {
            s0.b(this.f33324a, c.this.f33229c);
        }
    }

    public c(Context context, String str, String str2) {
        super(context, str, str2);
    }

    @Override
    public void a(CampaignEx campaignEx, boolean z10, String str) {
        if (this.f33231e == null) {
            this.f33231e = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f33236j);
        }
        this.f33231e.a(new a(campaignEx));
        if (z10 && !TextUtils.isEmpty(str)) {
            com.mbridge.msdk.advanced.report.a.a(campaignEx, this.f33236j, str);
        }
        campaignEx.setCampaignUnitId(this.f33236j);
        this.f33231e.a(campaignEx);
        if (!this.f33228b.isReportClick()) {
            this.f33228b.setReportClick(true);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.advanced.middle.d dVar = this.f33230d;
        if (dVar != null) {
            dVar.b(this.f33238l);
        }
    }
}
