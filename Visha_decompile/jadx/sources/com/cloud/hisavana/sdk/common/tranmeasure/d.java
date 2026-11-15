package com.cloud.hisavana.sdk.common.tranmeasure;

import android.view.View;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import defpackage.c2d;
import defpackage.ikd;
import defpackage.ja1;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

public class d {
    public final Object a;
    public b b;
    public WeakReference c;
    public defpackage.b e;
    public final com.cloud.hisavana.sdk.common.tranmeasure.c h;
    public boolean d = false;
    public boolean f = true;
    public AtomicBoolean g = new AtomicBoolean(false);

    public class a implements Runnable {
        public a() {
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
        public final WeakReference a;

        public c(d dVar) {
            this.a = new WeakReference(dVar);
        }

        @Override
        public void onRun() {
            d dVar;
            WeakReference weakReference = this.a;
            if (weakReference == null || (dVar = (d) weakReference.get()) == null) {
                return;
            }
            b bVar = dVar.b;
            Object objG = dVar.g();
            if (bVar == null || objG == null) {
                return;
            }
            ikd.b().d("ssp", "----------------> 曝光回调");
            bVar.a(objG);
        }
    }

    public d(Object obj) {
        defpackage.b bVar = new defpackage.b();
        this.e = bVar;
        bVar.c = 1000;
        bVar.a = 50.0f;
        bVar.b = 0;
        this.a = obj;
        this.h = new com.cloud.hisavana.sdk.common.tranmeasure.c(this);
    }

    public void a() {
        WeakReference weakReference = this.c;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.b = null;
        HSScopeHelper.a.j(new a());
    }

    public void b(View view, b bVar) {
        ikd.b().d(ja1.MEASURE_TAG, "MeasureSession registerView,isImpression = " + this.d);
        if (this.d) {
            return;
        }
        this.c = new WeakReference(view);
        this.b = bVar;
        e.c().d(this);
        com.cloud.hisavana.sdk.common.tranmeasure.c cVar = this.h;
        if (cVar == null || cVar.d() <= 0 || this.d) {
            return;
        }
        if (this.b != null) {
            AdsDTO adsDTOE = e();
            if (adsDTOE != null && view != null) {
                adsDTOE.setImageWidth(Integer.valueOf(view.getMeasuredWidth()));
                adsDTOE.setImageHeight(Integer.valueOf(view.getMeasuredHeight()));
            }
            Preconditions.d(new c(this));
            this.d = true;
        }
        AdsDTO adsDTOE2 = e();
        if (adsDTOE2 != null) {
            adsDTOE2.setShowReportTimeType(1);
            c2d.a(adsDTOE2);
        }
    }

    public void c(boolean z) {
        this.d = z;
    }

    public boolean d(Object obj) {
        return this.a == obj;
    }

    public AdsDTO e() {
        Object obj = this.a;
        if (obj instanceof AdsDTO) {
            return (AdsDTO) obj;
        }
        if (obj instanceof TaNativeInfo) {
            return ((TaNativeInfo) obj).getAdItem();
        }
        return null;
    }

    public View f() {
        WeakReference weakReference = this.c;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public Object g() {
        return this.a;
    }

    public boolean h() {
        return this.d;
    }

    public boolean i() {
        return this.g.get();
    }

    public void j() {
        com.cloud.hisavana.sdk.common.tranmeasure.c cVar = this.h;
        if (cVar != null) {
            cVar.c();
        }
    }
}
