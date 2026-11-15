package com.mbridge.msdk.video.module.listener.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;

public class e implements com.mbridge.msdk.foundation.same.image.c {

    protected ImageView f38620a;

    private CampaignEx f38621b;

    private String f38622c;

    class a implements Runnable {

        final String f38623a;

        a(String str) {
            this.f38623a = str;
        }

        @Override
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.n nVarA = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (e.this.f38621b == null) {
                    o0.a("ImageLoaderListener", "campaign is null");
                    return;
                }
                com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                mVar.j("2000044");
                mVar.c(k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
                mVar.b(e.this.f38621b.getId());
                mVar.i(e.this.f38621b.getImageUrl());
                mVar.n(e.this.f38621b.getRequestId());
                mVar.o(e.this.f38621b.getRequestIdNotice());
                mVar.u(e.this.f38622c);
                mVar.m(this.f38623a);
                nVarA.a(mVar);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public e(ImageView imageView) {
        this.f38620a = imageView;
    }

    @Override
    public void onFailedLoad(String str, String str2) {
        a aVar = new a(str);
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
        } else {
            aVar.run();
        }
        o0.b("ImageLoaderListener", "desc:" + str);
    }

    @Override
    public void onSuccessLoad(Bitmap bitmap, String str) {
        try {
            if (bitmap == null) {
                o0.b("ImageLoaderListener", "bitmap=null");
            } else {
                if (this.f38620a == null || bitmap.isRecycled()) {
                    return;
                }
                this.f38620a.setImageBitmap(bitmap);
                this.f38620a.setVisibility(0);
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }

    public e(ImageView imageView, CampaignEx campaignEx, String str) {
        this.f38620a = imageView;
        this.f38621b = campaignEx;
        this.f38622c = str;
    }
}
