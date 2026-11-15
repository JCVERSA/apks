package com.cloud.hisavana.sdk.common.tranmeasure;

import android.view.View;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.q2;
import com.cloud.hisavana.sdk.r4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

public class d {

    private final Object f21525a;

    protected b f21526b;

    private WeakReference f21527c;

    protected r4 f21529e;

    private final com.cloud.hisavana.sdk.common.tranmeasure.c f21532h;

    private boolean f21528d = false;

    private boolean f21530f = true;

    private AtomicBoolean f21531g = new AtomicBoolean(false);

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            e.c().f(d.this);
        }
    }

    public interface b {
        void a(Object obj);
    }

    public static class c implements Preconditions.a {

        private final WeakReference f21534a;

        public c(d dVar) {
            this.f21534a = new WeakReference(dVar);
        }

        @Override
        public void onRun() {
            d dVar;
            WeakReference weakReference = this.f21534a;
            if (weakReference == null || (dVar = (d) weakReference.get()) == null) {
                return;
            }
            b bVar = dVar.f21526b;
            Object objG = dVar.g();
            if (bVar == null || objG == null) {
                return;
            }
            b4.b().d("ssp", "----------------> 曝光回调");
            bVar.a(objG);
        }
    }

    public d(Object obj) {
        r4 r4Var = new r4();
        this.f21529e = r4Var;
        r4Var.f22241c = 1000;
        r4Var.f22239a = 50.0f;
        r4Var.f22240b = 0;
        this.f21525a = obj;
        this.f21532h = new com.cloud.hisavana.sdk.common.tranmeasure.c(this);
    }

    public void a() {
        WeakReference weakReference = this.f21527c;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f21526b = null;
        HSScopeHelper.f22503a.e(new a());
    }

    protected void b(View view, b bVar) {
        b4.b().d("ssp_measure", "MeasureSession registerView,isImpression = " + this.f21528d);
        if (this.f21528d) {
            return;
        }
        this.f21527c = new WeakReference(view);
        this.f21526b = bVar;
        e.c().d(this);
        com.cloud.hisavana.sdk.common.tranmeasure.c cVar = this.f21532h;
        if (cVar == null || cVar.d() <= 0 || this.f21528d) {
            return;
        }
        if (this.f21526b != null) {
            AdsDTO adsDTOE = e();
            if (adsDTOE != null && view != null) {
                adsDTOE.setImageWidth(Integer.valueOf(view.getMeasuredWidth()));
                adsDTOE.setImageHeight(Integer.valueOf(view.getMeasuredHeight()));
            }
            Preconditions.d(new c(this));
            this.f21528d = true;
        }
        AdsDTO adsDTOE2 = e();
        if (adsDTOE2 != null) {
            adsDTOE2.setShowReportTimeType(1);
            q2.a(adsDTOE2);
        }
    }

    public void c(boolean z10) {
        this.f21528d = z10;
    }

    protected boolean d(Object obj) {
        return this.f21525a == obj;
    }

    protected AdsDTO e() {
        Object obj = this.f21525a;
        if (obj instanceof AdsDTO) {
            return (AdsDTO) obj;
        }
        if (obj instanceof TaNativeInfo) {
            return ((TaNativeInfo) obj).getAdItem();
        }
        return null;
    }

    protected View f() {
        WeakReference weakReference = this.f21527c;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    protected Object g() {
        return this.f21525a;
    }

    public boolean h() {
        return this.f21528d;
    }

    public boolean i() {
        return this.f21531g.get();
    }

    protected void j() {
        com.cloud.hisavana.sdk.common.tranmeasure.c cVar = this.f21532h;
        if (cVar != null) {
            cVar.c();
        }
    }
}
