package com.mbridge.msdk.foundation.same.webview;

import android.webkit.DownloadListener;
import com.mbridge.msdk.foundation.entity.CampaignEx;

public class a implements DownloadListener {

    private String f34815a;

    private CampaignEx f34816b;

    public a(CampaignEx campaignEx) {
        this.f34816b = campaignEx;
    }

    public void a(String str) {
        this.f34815a = str;
    }

    @Override
    public void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
    }
}
