package defpackage;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.b0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.u;
import com.transsion.push.PushConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class xt4 {
    public long a;
    public final b0 b;
    public List c = null;
    public float d = -1.0f;
    public float e = -1.0f;
    public float f = -1.0f;
    public float g = -1.0f;
    public final Map h = new HashMap();

    public class b implements View.OnClickListener {
        public final AdsDTO b;
        public final TaNativeInfo c;

        public b(AdsDTO adsDTO, TaNativeInfo taNativeInfo) {
            this.b = adsDTO;
            this.c = taNativeInfo;
        }

        @Override
        public void onClick(View view) {
            if (view == null || this.b == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (view instanceof AdCloseView) {
                if (jCurrentTimeMillis - u.n().p() >= 2000) {
                    xt4.this.a = jCurrentTimeMillis;
                    if (this.b.getSource() != 4) {
                        if (u.n().m(view.getContext(), xt4.this.b, this.b, (AdCloseView) view)) {
                            u.n().l(xt4.this.b, this.c);
                            return;
                        }
                        return;
                    } else {
                        if (xt4.this.b == null || xt4.this.b.Z() == null) {
                            return;
                        }
                        xt4.this.b.Z().o(this.c, this.b);
                        return;
                    }
                }
                return;
            }
            if (this.b.getPslinkInfo() != null) {
                if (view.getTag() == null || !TextUtils.equals("ad_download", view.getTag().toString())) {
                    this.b.getPslinkInfo().setClickType(1);
                    this.b.setTrackUserClickArea(1);
                    ikd.b().d("ssp", "pslink half setClickType, click_img");
                } else {
                    this.b.getPslinkInfo().setClickType(2);
                    this.b.setTrackUserClickArea(2);
                    ikd.b().d("ssp", "pslink half setClickType, click_install");
                }
            }
            if (jCurrentTimeMillis - xt4.this.a > 1000) {
                try {
                    U0.b(view.getContext(), this.b, new DownUpPointBean(xt4.this.d, xt4.this.e, xt4.this.f, xt4.this.g, view.getMeasuredHeight(), view.getMeasuredWidth()), xt4.this.b == null ? false : xt4.this.b.p().x());
                    AthenaTracker.b0(this.b);
                    if (xt4.this.b != null && xt4.this.b.Z() != null) {
                        xt4.this.b.Z().y(this.c);
                    }
                    xt4.this.a = jCurrentTimeMillis;
                } catch (Throwable th) {
                    ikd.b().e(Log.getStackTraceString(th));
                }
            }
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                xt4.this.d = motionEvent.getX();
                xt4.this.e = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            xt4.this.f = motionEvent.getX();
            xt4.this.g = motionEvent.getY();
            return false;
        }
    }

    public xt4(b0 b0Var) {
        this.b = b0Var;
    }

    public void d() {
        n();
        ikd.b().d("ssp", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    public void e(View view, List list, TaNativeInfo taNativeInfo, AdsDTO adsDTO) {
        if (list != null) {
            Iterator it = list.iterator();
            this.h.put(taNativeInfo, list);
            c cVar = new c();
            b bVar = new b(adsDTO, taNativeInfo);
            if (view != null) {
                view.setOnTouchListener(cVar);
                view.setOnClickListener(bVar);
            }
            while (it.hasNext()) {
                View view2 = (View) it.next();
                if (view2 != null && !g(view2) && !(view2 instanceof AdChoicesView)) {
                    view2.setOnClickListener(bVar);
                }
            }
        }
    }

    public void f(TaNativeInfo taNativeInfo) {
        b0 b0Var = this.b;
        if (b0Var == null || b0Var.Z() == null) {
            return;
        }
        this.b.W(taNativeInfo);
        HSCommonUtils.a.x(taNativeInfo == null ? null : taNativeInfo.getAdItem());
    }

    public final boolean g(View view) {
        if (view == null || view.getTag() == null) {
            return false;
        }
        return view.getTag().equals("adxAdChoice") || view.getTag().equals("image_webview");
    }

    public List j() {
        return this.c;
    }

    public void k(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return;
        }
        List<View> list = (List) this.h.get(taNativeInfo);
        if (x93.a(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(null);
                    view.setOnTouchListener(null);
                }
            }
            this.h.remove(taNativeInfo);
        }
    }

    public final void n() {
        Iterator it = this.h.entrySet().iterator();
        while (it.hasNext()) {
            List<View> list = (List) ((Map.Entry) it.next()).getValue();
            if (list != null) {
                for (View view : list) {
                    if (view != null) {
                        view.setOnClickListener(null);
                        view.setOnTouchListener(null);
                    }
                }
            }
        }
        this.h.clear();
    }
}
