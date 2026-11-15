package com.mbridge.msdk.mbnative.listener;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class a implements NativeListener.NativeAdListener {

    private NativeListener.NativeAdListener f35567a;

    private boolean f35568b = false;

    private String f35569c;

    private Context f35570d;

    private boolean f35571e;

    public a() {
    }

    public void a(boolean z10) {
        this.f35571e = z10;
    }

    public void b() {
        this.f35568b = true;
    }

    @Override
    public void onAdClick(Campaign campaign) {
        NativeListener.NativeAdListener nativeAdListener = this.f35567a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdClick(campaign);
        }
    }

    @Override
    public void onAdFramesLoaded(List<Frame> list) {
        NativeListener.NativeAdListener nativeAdListener = this.f35567a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdFramesLoaded(list);
        }
    }

    @Override
    public void onAdLoadError(String str) {
        this.f35568b = false;
        NativeListener.NativeAdListener nativeAdListener = this.f35567a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdLoadError(str);
            if (this.f35570d == null) {
                this.f35570d = c.m().d();
            }
            if (TextUtils.isEmpty(this.f35569c)) {
                return;
            }
            com.mbridge.msdk.mbnative.report.a.a(this.f35570d, str, this.f35569c, this.f35571e, (CampaignEx) null);
        }
    }

    @Override
    public void onAdLoaded(List<Campaign> list, int i10) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        try {
            this.f35568b = false;
            synchronized (list) {
                copyOnWriteArrayList = new CopyOnWriteArrayList(list);
            }
            if (this.f35567a != null) {
                if (copyOnWriteArrayList.size() > 0) {
                    this.f35567a.onAdLoaded(copyOnWriteArrayList, i10);
                } else {
                    this.f35567a.onAdLoaded(list, i10);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void onLoggingImpression(int i10) {
        NativeListener.NativeAdListener nativeAdListener = this.f35567a;
        if (nativeAdListener != null) {
            nativeAdListener.onLoggingImpression(i10);
        }
    }

    public void a(String str) {
        this.f35569c = str;
    }

    public a(NativeListener.NativeAdListener nativeAdListener) {
        this.f35567a = nativeAdListener;
    }

    public boolean a() {
        return this.f35568b;
    }

    public void a(CampaignEx campaignEx, String str) {
        this.f35568b = false;
        NativeListener.NativeAdListener nativeAdListener = this.f35567a;
        if (nativeAdListener != null) {
            nativeAdListener.onAdLoadError(str);
            if (this.f35570d == null) {
                this.f35570d = c.m().d();
            }
            if (TextUtils.isEmpty(this.f35569c)) {
                return;
            }
            com.mbridge.msdk.mbnative.report.a.a(this.f35570d, str, this.f35569c, this.f35571e, campaignEx);
        }
    }
}
