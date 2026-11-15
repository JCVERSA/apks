package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.mbridge.msdk.click.a;
import com.mbridge.msdk.click.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.mraid.b;
import com.mbridge.msdk.video.signal.h;

public abstract class MBridgeH5EndCardViewDiff extends MBridgeBaseView implements h, b, j {
    public String unitId;

    public MBridgeH5EndCardViewDiff(Context context) {
        super(context);
    }

    public abstract void close();

    public abstract void expand(String str, boolean z10);

    public abstract CampaignEx getMraidCampaign();

    public abstract void handlerPlayableException(String str);

    public abstract void install(CampaignEx campaignEx);

    public abstract void notifyCloseBtn(int i10);

    public void open(String str) {
        try {
            String clickURL = this.f38394b.getClickURL();
            if (!TextUtils.isEmpty(str)) {
                this.f38394b.setClickURL(str);
                reportOpen(str);
            }
            this.f38394b.setClickTempSource(2);
            this.f38394b.setClickType(2);
            this.f38394b.setTriggerClickSource(2);
            a aVar = new a(getContext(), this.unitId);
            aVar.a(this);
            aVar.a(this.f38394b);
            this.f38394b.setClickURL(clickURL);
            this.notifyListener.a(126, "");
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
    }

    public abstract void orientation(Configuration configuration);

    public abstract void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar);

    public abstract void readyStatus(int i10);

    public void reportOpen(String str) {
        CampaignEx mraidCampaign = getMraidCampaign();
        if (mraidCampaign != null) {
            new com.mbridge.msdk.foundation.same.report.h(getContext()).a(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.unitId, str, this.f38394b.isBidCampaign());
        }
    }

    public abstract void toggleCloseBtn(int i10);

    public abstract void unload();

    public abstract void useCustomClose(boolean z10);

    public abstract void webviewshow();

    public MBridgeH5EndCardViewDiff(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
