package com.cloud.hisavana.sdk.common.tranmeasure;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.R;
import com.cloud.sdk.commonutil.util.Preconditions;
import defpackage.c2d;
import defpackage.ikd;
import defpackage.ja1;
import defpackage.s8;
import defpackage.vfd;

public class c {
    public final d a;
    public final vfd b;
    public long c;
    public long d;
    public boolean e = false;
    public int f = 0;
    public String g;

    public class a implements Preconditions.a {
        public a() {
        }

        @Override
        public void onRun() {
            if (c.this.a == null || c.this.a.b == null || c.this.a.g() == null) {
                return;
            }
            c.this.a.b.a(c.this.a.g());
        }
    }

    public c(d dVar) {
        this.a = dVar;
        this.b = vfd.b(dVar.e);
    }

    public final boolean b() {
        defpackage.b bVar;
        d dVar = this.a;
        return (dVar == null || (bVar = dVar.e) == null || this.d < ((long) bVar.c)) ? false : true;
    }

    public void c() {
        int iD;
        d dVar = this.a;
        if (dVar == null) {
            return;
        }
        View viewF = dVar.f();
        if (this.b == null || this.a.e == null || viewF == null) {
            return;
        }
        int i = R.id.native_view_source;
        if (viewF.getTag(i) != null && !TextUtils.equals(Constants.a, viewF.getTag(i).toString())) {
            if (viewF.getTag(i) != null) {
                ikd.b().d(ja1.MEASURE_TAG, "session.AdView.Tag" + viewF.getTag(i).toString());
                return;
            }
            return;
        }
        if (this.a.i()) {
            return;
        }
        try {
            iD = d();
        } catch (Throwable th) {
            ikd.b().w(ja1.MEASURE_TAG, Log.getStackTraceString(th));
            iD = 0;
        }
        if (iD > 0 && !this.a.h()) {
            d dVar2 = this.a;
            if (dVar2.b != null) {
                dVar2.c(true);
                Preconditions.d(new a());
                AdsDTO adsDTOE = this.a.e();
                if (adsDTOE != null) {
                    int measuredWidth = viewF.getMeasuredWidth();
                    adsDTOE.setViewHeight(viewF.getMeasuredHeight());
                    adsDTOE.setViewWidth(measuredWidth);
                    adsDTOE.setShowReportTimeType(1);
                    c2d.a(adsDTOE);
                }
            }
        }
        if (iD > this.f) {
            this.f = iD;
            this.g = this.b.b;
        }
        if (iD <= 0) {
            this.c = 0L;
            return;
        }
        if (!this.e) {
            ikd.b().d(ja1.MEASURE_TAG, "检查View在Window的可见性 返回百分比 --> exposureRatio = " + iD + " totalImpressionTime=" + this.d);
        }
        if (this.c > 0) {
            this.d += SystemClock.uptimeMillis() - this.c;
        }
        this.c = SystemClock.uptimeMillis();
        if (b()) {
            float f = iD;
            d dVar3 = this.a;
            if (f < dVar3.e.a || this.e) {
                return;
            }
            this.e = true;
            AdsDTO adsDTOE2 = dVar3.e();
            if (adsDTOE2 != null) {
                adsDTOE2.setShowReportTimeType(2);
                adsDTOE2.setActualShowRate(Integer.valueOf(this.f));
                adsDTOE2.setShowArea(this.g);
                adsDTOE2.setActualShowTime(Long.valueOf(this.d));
                if (s8.a(adsDTOE2)) {
                    c2d.b(adsDTOE2);
                } else {
                    c2d.a(adsDTOE2);
                }
            } else {
                ikd.b().d(ja1.MEASURE_TAG, "session.getmKey() instanceof AdsDTO --> false");
            }
            e.c().f(this.a);
        }
    }

    public int d() {
        defpackage.b bVar;
        vfd vfdVar;
        d dVar = this.a;
        if (dVar == null || (bVar = dVar.e) == null || (vfdVar = this.b) == null) {
            return 0;
        }
        return vfdVar.a(bVar, dVar.f());
    }
}
