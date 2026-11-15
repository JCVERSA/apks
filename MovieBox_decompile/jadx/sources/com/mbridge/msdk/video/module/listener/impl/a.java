package com.mbridge.msdk.video.module.listener.impl;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;

public class a extends f {

    private Activity f38615a;

    private CampaignEx f38616b;

    public a(Activity activity, CampaignEx campaignEx) {
        this.f38615a = activity;
        this.f38616b = campaignEx;
    }

    @Override
    public void a(int i10, Object obj) {
        super.a(i10, obj);
        if (i10 != 106 || this.f38615a == null || this.f38616b == null) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            String strA = com.mbridge.msdk.click.c.a(this.f38616b.getClickURL(), "-999", "-999");
            if (!TextUtils.isEmpty(strA)) {
                intent.setData(Uri.parse(strA));
                this.f38615a.startActivity(intent);
            }
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage(), th2);
        }
        this.f38615a.finish();
    }
}
