package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.b0;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.m;
import java.util.ArrayList;
import java.util.List;

public class tca extends r17 {
    public boolean n;
    public int o;
    public SSPWebPageReqInfo p;

    public tca(String str) {
        super(str);
    }

    public void A(boolean z) {
        this.n = z;
    }

    public void B(SSPWebPageReqInfo sSPWebPageReqInfo) {
        try {
            if (r6.l()) {
                this.p = sSPWebPageReqInfo;
            }
        } catch (Throwable unused) {
        }
    }

    public void C(String str, String str2) {
        G g = this.a;
        if (g == null) {
            return;
        }
        try {
            SSPTrackingHelper.a.E(g.p(), str, str2);
        } catch (Throwable unused) {
        }
    }

    public void D(List list) {
        if (this.a == null) {
            return;
        }
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    ikd.b().d("NativeApi", "infos is empty, return");
                } else {
                    SSPTrackingHelper.a.I(this.a.p(), list);
                }
            } catch (Throwable unused) {
            }
        } else {
            ikd.b().d("NativeApi", "infos is empty, return");
        }
    }

    public int r() {
        return this.n ? 6 : 1;
    }

    public AdChoicesView s(Context context, TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return null;
        }
        try {
            if (taNativeInfo.getNativeBridge() instanceof b0) {
                return ((b0) taNativeInfo.getNativeBridge()).G(context, taNativeInfo);
            }
            return null;
        } catch (Throwable th) {
            ikd.b().e("NativeApi", "getAdChoicesView", th);
            return null;
        }
    }

    public AdCloseView t(Context context) {
        G g = this.a;
        if (g instanceof b0) {
            return ((b0) g).H(context);
        }
        return null;
    }

    public int u(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null || !(taNativeInfo.getNativeBridge() instanceof b0)) {
            return 1116;
        }
        return ((b0) taNativeInfo.getNativeBridge()).V(taNativeInfo);
    }

    public void v() {
        if (a()) {
            ied iedVarG = new ied.b().i(r()).e(this.b).s(this.c).m(this.d).k(this.e).c(this.j).j(this.m).a(this.o).p(this.g).w(this.h).d(this.p).b(this.i).g();
            y();
            b0 b0Var = new b0(iedVarG);
            b0Var.g(new r17.a(this));
            b0Var.E();
        }
    }

    public final void w(ViewGroup viewGroup, TaNativeInfo taNativeInfo, List list) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.getNativeBridge() != null) {
                    m.a(((b0) taNativeInfo.getNativeBridge()).v(), taNativeInfo.getAdItem(), viewGroup, list);
                }
            } catch (Throwable th) {
                ikd.b().e("NativeApi", "onOmidRegister", th);
            }
        }
    }

    public void x(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.getNativeBridge() instanceof b0) {
                    if (TextUtils.isEmpty(taNativeInfo.getSceneId())) {
                        taNativeInfo.setSceneId(this.m);
                    }
                    try {
                        this.l.add((b0) taNativeInfo.getNativeBridge());
                    } catch (Throwable unused) {
                    }
                    ((b0) taNativeInfo.getNativeBridge()).Q(viewGroup, list, taNativeInfo);
                    ArrayList arrayList = new ArrayList();
                    if (viewGroup instanceof TNativeView) {
                        ((TNativeView) viewGroup).getMarkViews(arrayList);
                    }
                    w(viewGroup, taNativeInfo, arrayList);
                }
            } catch (Throwable unused2) {
            }
        }
    }

    public final void y() {
        this.p = null;
    }

    public void z(int i) {
        this.o = Math.min(Math.max(i, 1), 5);
    }
}
