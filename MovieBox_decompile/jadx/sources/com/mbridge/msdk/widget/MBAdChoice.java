package com.mbridge.msdk.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.image.c;
import com.mbridge.msdk.foundation.same.net.utils.d;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;

public class MBAdChoice extends MBImageView {

    private final Context f39191c;

    private String f39192d;

    private String f39193e;

    private String f39194f;

    private CampaignEx f39195g;

    private com.mbridge.msdk.foundation.feedback.a f39196h;

    class a implements com.mbridge.msdk.foundation.feedback.a {
        a() {
        }

        @Override
        public void a() {
        }

        @Override
        public void close() {
        }

        @Override
        public void a(String str) {
        }
    }

    class b implements c {
        b() {
        }

        @Override
        public void onFailedLoad(String str, String str2) {
        }

        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            MBAdChoice.this.setImageBitmap(bitmap);
        }
    }

    public MBAdChoice(Context context) {
        super(context);
        this.f39192d = "";
        this.f39193e = "";
        this.f39194f = "";
        this.f39191c = context;
        b();
    }

    private boolean a(CampaignEx campaignEx) {
        this.f39195g = campaignEx;
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        c(campaignEx, gVarD);
        a(campaignEx, gVarD);
        b(campaignEx, gVarD);
        boolean z10 = (TextUtils.isEmpty(this.f39192d) || TextUtils.isEmpty(this.f39193e) || TextUtils.isEmpty(this.f39194f)) ? false : true;
        setImageUrl(this.f39192d);
        return z10;
    }

    private void b() {
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        setClickable(true);
    }

    private void c(CampaignEx campaignEx, g gVar) {
        this.f39195g = campaignEx;
        if (campaignEx == null) {
            if (gVar != null) {
                this.f39193e = gVar.c();
                return;
            }
            return;
        }
        String privacyUrl = campaignEx.getPrivacyUrl();
        this.f39193e = privacyUrl;
        if (TextUtils.isEmpty(privacyUrl)) {
            CampaignEx.a adchoice = campaignEx.getAdchoice();
            if (adchoice != null) {
                this.f39193e = adchoice.c();
            }
            if (TextUtils.isEmpty(this.f39193e) && gVar != null) {
                this.f39193e = gVar.c();
            }
            if (TextUtils.isEmpty(this.f39193e)) {
                this.f39193e = d.h().f34642g;
            }
        }
    }

    @Override
    public boolean performClick() {
        if (this.f39196h == null) {
            this.f39196h = new a();
        }
        t0.a(this.f39195g, this.f39196h, 4, "");
        return true;
    }

    public void setCampaign(Campaign campaign) {
        if (!(campaign instanceof CampaignEx)) {
            this.f39195g = null;
            return;
        }
        CampaignEx campaignEx = (CampaignEx) campaign;
        this.f39195g = campaignEx;
        if (a(campaignEx)) {
            a();
        }
    }

    public void setFeedbackDialogEventListener(com.mbridge.msdk.foundation.feedback.a aVar) {
        this.f39196h = aVar;
    }

    private void b(CampaignEx campaignEx, g gVar) {
        this.f39195g = campaignEx;
        if (campaignEx == null) {
            if (gVar != null) {
                this.f39194f = gVar.d();
                return;
            }
            return;
        }
        CampaignEx.a adchoice = campaignEx.getAdchoice();
        if (adchoice != null) {
            this.f39194f = adchoice.d();
        }
        if (!TextUtils.isEmpty(this.f39194f) || gVar == null) {
            return;
        }
        this.f39194f = gVar.d();
    }

    public MBAdChoice(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f39192d = "";
        this.f39193e = "";
        this.f39194f = "";
        this.f39191c = context;
        b();
    }

    private void a() {
        if (this.f39191c != null) {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.f39192d, new b());
        }
    }

    private void a(CampaignEx campaignEx, g gVar) {
        this.f39195g = campaignEx;
        if (campaignEx == null) {
            if (gVar != null) {
                this.f39192d = gVar.b();
                return;
            }
            return;
        }
        CampaignEx.a adchoice = campaignEx.getAdchoice();
        if (adchoice != null) {
            this.f39192d = adchoice.b();
        }
        if (!TextUtils.isEmpty(this.f39192d) || gVar == null) {
            return;
        }
        this.f39192d = gVar.b();
    }

    public MBAdChoice(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f39192d = "";
        this.f39193e = "";
        this.f39194f = "";
        this.f39191c = context;
        b();
    }
}
