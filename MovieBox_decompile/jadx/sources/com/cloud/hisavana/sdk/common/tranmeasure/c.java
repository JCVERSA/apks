package com.cloud.hisavana.sdk.common.tranmeasure;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.q2;
import com.cloud.hisavana.sdk.r4;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.util.Preconditions;

public class c {

    private final d f21517a;

    private final h f21518b;

    private long f21519c;

    private long f21520d;

    private boolean f21521e = false;

    private int f21522f = 0;

    private String f21523g;

    class a implements Preconditions.a {
        a() {
        }

        @Override
        public void onRun() {
            if (c.this.f21517a == null || c.this.f21517a.f21526b == null || c.this.f21517a.g() == null) {
                return;
            }
            c.this.f21517a.f21526b.a(c.this.f21517a.g());
        }
    }

    protected c(d dVar) {
        this.f21517a = dVar;
        this.f21518b = h.b(dVar.f21529e);
    }

    private boolean b() {
        r4 r4Var;
        d dVar = this.f21517a;
        return (dVar == null || (r4Var = dVar.f21529e) == null || this.f21520d < ((long) r4Var.f22241c)) ? false : true;
    }

    protected void c() {
        int iD;
        d dVar = this.f21517a;
        if (dVar == null) {
            return;
        }
        View viewF = dVar.f();
        if (this.f21518b == null || this.f21517a.f21529e == null || viewF == null) {
            return;
        }
        if (viewF.getTag(R$id.native_view_source) != null && !TextUtils.equals(Constants.f21456a, viewF.getTag(R$id.native_view_source).toString())) {
            if (viewF.getTag(R$id.native_view_source) != null) {
                b4.b().d("ssp_measure", "session.AdView.Tag" + viewF.getTag(R$id.native_view_source).toString());
                return;
            }
            return;
        }
        if (this.f21517a.i()) {
            return;
        }
        try {
            iD = d();
        } catch (Throwable th2) {
            b4.b().w("ssp_measure", Log.getStackTraceString(th2));
            iD = 0;
        }
        if (iD > 0 && !this.f21517a.h()) {
            d dVar2 = this.f21517a;
            if (dVar2.f21526b != null) {
                dVar2.c(true);
                Preconditions.d(new a());
                AdsDTO adsDTOE = this.f21517a.e();
                if (adsDTOE != null) {
                    int measuredWidth = viewF.getMeasuredWidth();
                    adsDTOE.setViewHeight(viewF.getMeasuredHeight());
                    adsDTOE.setViewWidth(measuredWidth);
                    adsDTOE.setShowReportTimeType(1);
                    q2.a(adsDTOE);
                }
            }
        }
        if (iD > this.f21522f) {
            this.f21522f = iD;
            this.f21523g = this.f21518b.f21552b;
        }
        if (iD > 0) {
            if (!this.f21521e) {
                b4.b().d("ssp_measure", "检查View在Window的可见性 返回百分比 --> exposureRatio = " + iD + " totalImpressionTime=" + this.f21520d);
            }
            if (this.f21519c > 0) {
                this.f21520d += SystemClock.uptimeMillis() - this.f21519c;
            }
            this.f21519c = SystemClock.uptimeMillis();
            if (b()) {
                float f10 = iD;
                d dVar3 = this.f21517a;
                if (f10 < dVar3.f21529e.f22239a || this.f21521e) {
                    return;
                }
                this.f21521e = true;
                AdsDTO adsDTOE2 = dVar3.e();
                if (adsDTOE2 != null) {
                    adsDTOE2.setShowReportTimeType(2);
                    adsDTOE2.setActualShowRate(Integer.valueOf(this.f21522f));
                    adsDTOE2.setShowArea(this.f21523g);
                    adsDTOE2.setActualShowTime(Long.valueOf(this.f21520d));
                    if (c7.c.a(adsDTOE2)) {
                        q2.b(adsDTOE2);
                    } else {
                        q2.a(adsDTOE2);
                    }
                } else {
                    b4.b().d("ssp_measure", "session.getmKey() instanceof AdsDTO --> false");
                }
                e.c().f(this.f21517a);
            }
        }
    }

    protected int d() {
        r4 r4Var;
        h hVar;
        d dVar = this.f21517a;
        if (dVar == null || (r4Var = dVar.f21529e) == null || (hVar = this.f21518b) == null) {
            return 0;
        }
        return hVar.a(r4Var, dVar.f());
    }
}
