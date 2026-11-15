package b7;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import java.util.List;
import java.util.Map;

public abstract class a {

    protected F f15591a;

    protected String f15592b;

    protected boolean f15593c;

    protected int f15594d;

    protected boolean f15595e;

    protected com.cloud.hisavana.sdk.api.listener.d f15596f;

    protected boolean f15597g;

    protected boolean f15598h;

    protected d7.a f15599i;

    protected d7.b f15600j;

    private long f15601k = 0;

    protected androidx.collection.b f15602l = new androidx.collection.b();

    protected static class C0135a extends AdCallback {

        protected final a f15603a;

        C0135a(a aVar) {
            this.f15603a = aVar;
        }

        @Override
        public com.cloud.hisavana.sdk.api.listener.d d() {
            a aVar = this.f15603a;
            if (aVar != null) {
                return aVar.f15596f;
            }
            return null;
        }

        @Override
        public String e() {
            a aVar = this.f15603a;
            return aVar != null ? SSPTrackingHelper.f21368a.o(aVar.f15591a) : "";
        }

        @Override
        public String g() {
            a aVar = this.f15603a;
            return aVar != null ? SSPTrackingHelper.f21368a.q(aVar.f15591a) : "";
        }

        @Override
        public void q(F f10, Bundle bundle) {
            a aVar = this.f15603a;
            if (aVar != null) {
                aVar.f15591a = f10;
            }
            super.q(f10, bundle);
        }

        @Override
        public void r(F f10, List list, Bundle bundle) {
            a aVar = this.f15603a;
            if (aVar != null) {
                aVar.f15591a = f10;
            }
            super.r(f10, list, bundle);
        }
    }

    public a(String str) {
        this.f15592b = str;
    }

    protected void a(TaErrorCode taErrorCode, Bundle bundle) {
        try {
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            sSPTrackingHelper.N(Integer.valueOf(taErrorCode.getErrorCode()), sSPTrackingHelper.q(this.f15591a), this.f15592b, sSPTrackingHelper.m(this.f15591a), bundle);
        } catch (Throwable unused) {
        }
    }

    protected boolean b() {
        if (TextUtils.isEmpty(c7.b.f16688b)) {
            b4.b().e("ssp", "AppId is empty, please check your config.");
            com.cloud.hisavana.sdk.api.listener.d dVar = this.f15596f;
            if (dVar != null) {
                dVar.onError(TaErrorCode.ERROR_INVALID_APP_ID);
            }
            return false;
        }
        if (!com.cloud.sdk.commonutil.util.e.h()) {
            b4.b().e("ssp", "You should init first");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jN = SSPTrackingHelper.f21368a.n();
        if (jCurrentTimeMillis - this.f15601k > jN) {
            this.f15601k = jCurrentTimeMillis;
            return true;
        }
        b4.b().d("ssp", "Ad request rate limit exceeded，current interval is" + jN);
        return false;
    }

    public void c() {
        this.f15596f = null;
        try {
            F f10 = this.f15591a;
            if (f10 != null) {
                this.f15602l.remove(f10);
                if (b4.c()) {
                    b4.b().i("ssp", "NonViewApi mLoadedAd destroy");
                }
                this.f15591a.m();
            }
            if (this.f15602l.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < this.f15602l.size(); i10++) {
                F f11 = (F) this.f15602l.o(i10);
                if (f11 != null) {
                    b4.b().d("ssp", "baseAd destroy " + f11);
                    f11.m();
                }
            }
            this.f15602l.clear();
        } catch (Throwable unused) {
        }
    }

    public int d() {
        F f10 = this.f15591a;
        if (f10 != null) {
            return f10.q();
        }
        return 1;
    }

    public double e() {
        F f10 = this.f15591a;
        if (f10 != null) {
            return f10.t();
        }
        return 0.0d;
    }

    public int f() {
        F f10 = this.f15591a;
        if (f10 != null) {
            return f10.u();
        }
        return 0;
    }

    public d7.a g() {
        return this.f15599i;
    }

    public boolean h() {
        F f10 = this.f15591a;
        return f10 != null && f10.A();
    }

    public boolean i() {
        return this.f15591a != null;
    }

    public boolean j() {
        F f10 = this.f15591a;
        if (f10 != null) {
            return f10.B();
        }
        return false;
    }

    public boolean k() {
        F f10 = this.f15591a;
        if (f10 == null) {
            return false;
        }
        int iR = f10.r();
        boolean z10 = iR == 0;
        if (!z10) {
            Bundle bundle = new Bundle();
            bundle.putString("s_err_code", iR + "");
            a(TaErrorCode.ERROR_SHOW_OUTER_INVALID, bundle);
        }
        return z10;
    }

    public void l(String str, String str2, Map map) {
        this.f15600j = new d7.b(str, str2, map);
    }

    public void m(boolean z10) {
        this.f15597g = z10;
    }

    public void n(boolean z10) {
        this.f15593c = z10;
    }

    public void o(int i10) {
        this.f15594d = i10;
    }

    public void p(com.cloud.hisavana.sdk.api.listener.d dVar) {
        this.f15596f = dVar;
    }

    public void q(String str) {
        this.f15592b = str;
    }

    public void r(d7.a aVar) {
        this.f15599i = aVar;
    }
}
