package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;

public class e extends f {

    private int f33473e;

    private com.mbridge.msdk.foundation.same.task.b f33476h;

    private p f33477i;

    JumpLoaderResult f33470b = null;

    private int f33471c = 0;

    private String f33472d = null;

    private g f33474f = null;

    private boolean f33475g = true;

    private Handler f33478j = new Handler(Looper.getMainLooper());

    public e(Context context) {
        this.f33476h = new com.mbridge.msdk.foundation.same.task.b(context);
        this.f33477i = new p(context);
    }

    public void a(String str, CampaignEx campaignEx, g gVar, String str2, boolean z10, boolean z11, int i10) {
        String id2;
        this.f33472d = str2;
        this.f33474f = gVar;
        this.f33470b = null;
        this.f33473e = i10;
        boolean z12 = false;
        if (campaignEx != null) {
            z12 = "5".equals(campaignEx.getClick_mode()) || PrepareException.ERROR_NO_URL.equals(campaignEx.getClick_mode());
            id2 = campaignEx.getId();
        } else {
            id2 = "";
        }
        this.f33477i.a(str2, gVar, z12, id2, str, campaignEx, z10, z11, i10);
    }

    public void a(String str, CampaignEx campaignEx, g gVar) {
        this.f33472d = new String(campaignEx.getClickURL());
        this.f33474f = gVar;
        this.f33470b = null;
        this.f33477i.a(campaignEx.getClickURL(), gVar, "5".equals(campaignEx.getClick_mode()) || PrepareException.ERROR_NO_URL.equals(campaignEx.getClick_mode()), campaignEx.getId(), str, campaignEx, true, false, com.mbridge.msdk.click.retry.a.f33589p);
    }

    public void a() {
        this.f33475g = false;
    }
}
