package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.ArraySet;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import java.util.List;
import java.util.Map;

public abstract class r17 {
    public G a;
    public String b;
    public boolean c;
    public int d;
    public boolean e;
    public n6 f;
    public boolean g;
    public boolean h;
    public w6 i;
    public d29 j;
    public long k = 0;
    public ArraySet l = new ArraySet();
    public String m;

    public static class a extends AdCallback {
        public final r17 a;

        public a(r17 r17Var) {
            this.a = r17Var;
        }

        @Override
        public n6 d() {
            r17 r17Var = this.a;
            if (r17Var != null) {
                return r17Var.f;
            }
            return null;
        }

        @Override
        public String e() {
            r17 r17Var = this.a;
            return r17Var != null ? SSPTrackingHelper.a.o(r17Var.a) : "";
        }

        @Override
        public String g() {
            r17 r17Var = this.a;
            return r17Var != null ? SSPTrackingHelper.a.q(r17Var.a) : "";
        }

        @Override
        public void q(G g, Bundle bundle) {
            r17 r17Var = this.a;
            if (r17Var != null) {
                r17Var.a = g;
            }
            super.q(g, bundle);
        }

        @Override
        public void r(G g, List list, Bundle bundle) {
            r17 r17Var = this.a;
            if (r17Var != null) {
                r17Var.a = g;
            }
            super.r(g, list, bundle);
        }
    }

    public r17(String str) {
        this.b = str;
    }

    public boolean a() {
        if (TextUtils.isEmpty(r6.b)) {
            ikd.b().e("ssp", "AppId is empty, please check your config.");
            n6 n6Var = this.f;
            if (n6Var != null) {
                n6Var.onError(TaErrorCode.ERROR_INVALID_APP_ID);
            }
            return false;
        }
        if (!ul4.i()) {
            ikd.b().e("ssp", "You should init first");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jN = SSPTrackingHelper.a.n();
        if (jCurrentTimeMillis - this.k > jN) {
            this.k = jCurrentTimeMillis;
            return true;
        }
        ikd.b().d("ssp", "Ad request rate limit exceeded，current interval is" + jN);
        return false;
    }

    public void b() {
        this.f = null;
        try {
            G g = this.a;
            if (g != null) {
                this.l.remove(g);
                if (ikd.c()) {
                    ikd.b().i("ssp", "NonViewApi mLoadedAd destroy");
                }
                this.a.m();
            }
            if (this.l.isEmpty()) {
                return;
            }
            for (int i = 0; i < this.l.size(); i++) {
                G g2 = (G) this.l.valueAt(i);
                if (g2 != null) {
                    ikd.b().d("ssp", "baseAd destroy " + g2);
                    g2.m();
                }
            }
            this.l.clear();
        } catch (Throwable unused) {
        }
    }

    public int c() {
        G g = this.a;
        if (g == null) {
            return 1115;
        }
        return g.r();
    }

    public int d() {
        G g = this.a;
        if (g != null) {
            return g.q();
        }
        return 1;
    }

    public double e() {
        G g = this.a;
        if (g != null) {
            return g.t();
        }
        return 0.0d;
    }

    public int f() {
        G g = this.a;
        if (g != null) {
            return g.u();
        }
        return 0;
    }

    public w6 g() {
        return this.i;
    }

    public boolean h() {
        G g = this.a;
        return g != null && g.A();
    }

    public boolean i() {
        return this.a != null;
    }

    public boolean j() {
        G g = this.a;
        if (g != null) {
            return g.B();
        }
        return false;
    }

    public void k(String str, String str2, Map map) {
        this.j = new d29(str, str2, map);
    }

    public void l(boolean z) {
        this.g = z;
    }

    public void m(boolean z) {
        this.c = z;
    }

    public void n(int i) {
        this.d = i;
    }

    public void o(n6 n6Var) {
        this.f = n6Var;
    }

    public void p(String str) {
        this.b = str;
    }

    public void q(w6 w6Var) {
        this.i = w6Var;
    }
}
