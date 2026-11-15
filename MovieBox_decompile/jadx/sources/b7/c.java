package b7;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.p3;
import com.cloud.hisavana.sdk.x2;
import com.cloud.hisavana.sdk.z;
import java.util.ArrayList;
import java.util.List;

public class c extends a {

    private boolean f15604m;

    private int f15605n;

    private SSPWebPageReqInfo f15606o;

    public c(String str) {
        super(str);
    }

    private void w(ViewGroup viewGroup, TaNativeInfo taNativeInfo, List list) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.getNativeBridge() != null) {
                    z.a(((x2) taNativeInfo.getNativeBridge()).v(), taNativeInfo.getAdItem(), viewGroup, list);
                }
            } catch (Throwable th2) {
                b4.b().e("NativeApi", "onOmidRegister", th2);
            }
        }
    }

    private void y() {
        this.f15606o = null;
    }

    public void A(boolean z10) {
        this.f15604m = z10;
    }

    public void B(SSPWebPageReqInfo sSPWebPageReqInfo) {
        try {
            if (c7.b.i()) {
                this.f15606o = sSPWebPageReqInfo;
            }
        } catch (Throwable unused) {
        }
    }

    public void C(String str, String str2) {
        F f10 = this.f15591a;
        if (f10 == null) {
            return;
        }
        try {
            SSPTrackingHelper.f21368a.E(f10.p(), str, str2);
        } catch (Throwable unused) {
        }
    }

    public void D(List list) {
        if (this.f15591a == null) {
            return;
        }
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    b4.b().d("NativeApi", "infos is empty, return");
                } else {
                    SSPTrackingHelper.f21368a.I(this.f15591a.p(), list);
                }
            } catch (Throwable unused) {
            }
        } else {
            b4.b().d("NativeApi", "infos is empty, return");
        }
    }

    public AdChoicesView s(Context context, TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return null;
        }
        try {
            if (taNativeInfo.getNativeBridge() instanceof x2) {
                return ((x2) taNativeInfo.getNativeBridge()).F(context, taNativeInfo);
            }
            return null;
        } catch (Throwable th2) {
            b4.b().e("NativeApi", "getAdChoicesView", th2);
            return null;
        }
    }

    public AdCloseView t(Context context) {
        F f10 = this.f15591a;
        if (f10 instanceof x2) {
            return ((x2) f10).G(context);
        }
        return null;
    }

    public boolean u(TaNativeInfo taNativeInfo) {
        boolean z10 = false;
        if (taNativeInfo != null && (taNativeInfo.getNativeBridge() instanceof x2)) {
            int iV = ((x2) taNativeInfo.getNativeBridge()).V(taNativeInfo);
            z10 = iV == 0;
            if (!z10) {
                Bundle bundle = new Bundle();
                bundle.putString("s_err_code", iV + "");
                a(TaErrorCode.ERROR_SHOW_OUTER_INVALID, bundle);
            }
        }
        return z10;
    }

    public void v() {
        if (b()) {
            p3 p3VarG = new p3.b().i(this.f15604m ? 6 : 1).e(this.f15592b).r(this.f15593c).l(this.f15594d).j(this.f15595e).d(this.f15600j).a(this.f15605n).o(this.f15597g).v(this.f15598h).b(this.f15606o).c(this.f15599i).g();
            y();
            x2 x2Var = new x2(p3VarG);
            x2Var.g(new a.C0135a(this));
            x2Var.E();
        }
    }

    public void x(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.getNativeBridge() instanceof x2) {
                    try {
                        this.f15602l.add((x2) taNativeInfo.getNativeBridge());
                    } catch (Throwable unused) {
                    }
                    ((x2) taNativeInfo.getNativeBridge()).Q(viewGroup, list, taNativeInfo);
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

    public void z(int i10) {
        this.f15605n = Math.min(Math.max(i10, 1), 5);
    }
}
