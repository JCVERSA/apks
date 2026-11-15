package com.mbridge.msdk.mbbanner.common.util;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.o0;

public class a {

    private static final String f35317c = "a";

    private final Handler f35318a = new Handler(Looper.getMainLooper());

    private boolean f35319b;

    class RunnableC0479a implements Runnable {

        final com.mbridge.msdk.mbbanner.common.listener.b f35320a;

        final String f35321b;

        final CampaignUnit f35322c;

        RunnableC0479a(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, CampaignUnit campaignUnit) {
            this.f35320a = bVar;
            this.f35321b = str;
            this.f35322c = campaignUnit;
        }

        @Override
        public void run() {
            com.mbridge.msdk.mbbanner.common.listener.b bVar = this.f35320a;
            if (bVar != null) {
                bVar.a(this.f35321b, this.f35322c, a.this.f35319b);
            }
        }
    }

    class b implements Runnable {

        final com.mbridge.msdk.mbbanner.common.listener.b f35324a;

        final com.mbridge.msdk.foundation.error.b f35325b;

        b(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
            this.f35324a = bVar;
            this.f35325b = bVar2;
        }

        @Override
        public void run() {
            if (this.f35324a != null) {
                this.f35325b.a(a.this.f35319b);
                this.f35324a.a(this.f35325b);
            }
        }
    }

    class c implements Runnable {

        final com.mbridge.msdk.mbbanner.common.listener.b f35327a;

        final String f35328b;

        final int f35329c;

        c(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, int i10) {
            this.f35327a = bVar;
            this.f35328b = str;
            this.f35329c = i10;
        }

        @Override
        public void run() {
            com.mbridge.msdk.mbbanner.common.listener.b bVar = this.f35327a;
            if (bVar != null) {
                bVar.a(this.f35328b, this.f35329c, a.this.f35319b);
            }
        }
    }

    class d implements Runnable {

        final com.mbridge.msdk.mbbanner.common.listener.b f35331a;

        final com.mbridge.msdk.foundation.error.b f35332b;

        d(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
            this.f35331a = bVar;
            this.f35332b = bVar2;
        }

        @Override
        public void run() {
            if (this.f35331a != null) {
                this.f35332b.a(a.this.f35319b);
                this.f35331a.b(this.f35332b);
            }
        }
    }

    public void b(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
        o0.b(f35317c, "postResourceFail unitId=" + bVar2);
        this.f35318a.post(new d(bVar, bVar2));
    }

    public void a(boolean z10) {
        this.f35319b = z10;
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, CampaignUnit campaignUnit, String str) {
        o0.b(f35317c, "postCampaignSuccess unitId=" + str);
        this.f35318a.post(new RunnableC0479a(bVar, str, campaignUnit));
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
        this.f35318a.post(new b(bVar, bVar2));
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, int i10) {
        o0.b(f35317c, "postResourceSuccess unitId=" + str);
        this.f35318a.post(new c(bVar, str, i10));
    }
}
