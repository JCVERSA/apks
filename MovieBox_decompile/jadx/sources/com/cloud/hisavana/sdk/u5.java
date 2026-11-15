package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.transsion.push.PushConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class u5 {

    private long f22355a;

    private final x2 f22356b;

    private List f22357c = null;

    private float f22358d = -1.0f;

    private float f22359e = -1.0f;

    private float f22360f = -1.0f;

    private float f22361g = -1.0f;

    private final Map f22362h = new HashMap();

    private class b implements View.OnClickListener {

        private final AdsDTO f22363a;

        private final TaNativeInfo f22364b;

        b(AdsDTO adsDTO, TaNativeInfo taNativeInfo) {
            this.f22363a = adsDTO;
            this.f22364b = taNativeInfo;
        }

        @Override
        public void onClick(View view) {
            if (view == null || this.f22363a == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (view instanceof AdCloseView) {
                if (jCurrentTimeMillis - s2.p().r() >= 2000) {
                    u5.this.f22355a = jCurrentTimeMillis;
                    if (this.f22363a.getSource() != 4) {
                        if (s2.p().o(view.getContext(), u5.this.f22356b, this.f22363a, (AdCloseView) view)) {
                            s2.p().n(u5.this.f22356b, this.f22364b);
                            return;
                        }
                        return;
                    } else {
                        if (u5.this.f22356b == null || u5.this.f22356b.Z() == null) {
                            return;
                        }
                        u5.this.f22356b.Z().o(this.f22364b, this.f22363a);
                        return;
                    }
                }
                return;
            }
            if (this.f22363a.getPslinkInfo() != null) {
                if (view.getTag() == null || !TextUtils.equals("ad_download", view.getTag().toString())) {
                    this.f22363a.getPslinkInfo().setClickType(1);
                    this.f22363a.setTrackUserClickArea(1);
                    b4.b().d("ssp", "pslink half setClickType, click_img");
                } else {
                    this.f22363a.getPslinkInfo().setClickType(2);
                    this.f22363a.setTrackUserClickArea(2);
                    b4.b().d("ssp", "pslink half setClickType, click_install");
                }
            }
            if (jCurrentTimeMillis - u5.this.f22355a > 1000) {
                try {
                    J0.b(view.getContext(), this.f22363a, new DownUpPointBean(u5.this.f22358d, u5.this.f22359e, u5.this.f22360f, u5.this.f22361g, view.getMeasuredHeight(), view.getMeasuredWidth()), u5.this.f22356b == null ? false : u5.this.f22356b.p().v());
                    AthenaTracker.W(this.f22363a);
                    if (u5.this.f22356b != null && u5.this.f22356b.Z() != null) {
                        u5.this.f22356b.Z().y(this.f22364b);
                    }
                    u5.this.f22355a = jCurrentTimeMillis;
                } catch (Throwable th2) {
                    b4.b().e(Log.getStackTraceString(th2));
                }
            }
        }
    }

    private class c implements View.OnTouchListener {
        private c() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                u5.this.f22358d = motionEvent.getX();
                u5.this.f22359e = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            u5.this.f22360f = motionEvent.getX();
            u5.this.f22361g = motionEvent.getY();
            return false;
        }
    }

    u5(x2 x2Var) {
        this.f22356b = x2Var;
    }

    private boolean g(View view) {
        if (view == null || view.getTag() == null) {
            return false;
        }
        return view.getTag().equals("adxAdChoice") || view.getTag().equals("image_webview");
    }

    private void n() {
        Iterator it = this.f22362h.entrySet().iterator();
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
        this.f22362h.clear();
    }

    public void d() {
        n();
        b4.b().d("ssp", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    void e(View view, List list, TaNativeInfo taNativeInfo, AdsDTO adsDTO) {
        if (list != null) {
            Iterator it = list.iterator();
            this.f22362h.put(taNativeInfo, list);
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

    void f(TaNativeInfo taNativeInfo) {
        x2 x2Var = this.f22356b;
        if (x2Var == null || x2Var.Z() == null) {
            return;
        }
        this.f22356b.W(taNativeInfo);
        AdsDTO adItem = taNativeInfo == null ? null : taNativeInfo.getAdItem();
        if (adItem == null || adItem.getImpBeanRequest() == null) {
            return;
        }
        O.g().k(adItem.getImpBeanRequest().pmid);
        if (adItem.getSource() == 4) {
            Y.f20925a.q(adItem.getAdCreativeId(), adItem.getCodeSeatId());
        } else if (adItem.isOfflineAd()) {
            adItem.setShowNum(Integer.valueOf(adItem.getShowNum().intValue() + 1));
            p.F().q(adItem);
        }
    }

    List j() {
        return this.f22357c;
    }

    void k(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return;
        }
        List<View> list = (List) this.f22362h.get(taNativeInfo);
        if (com.cloud.hisavana.sdk.common.util.i.a(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(null);
                    view.setOnTouchListener(null);
                }
            }
            this.f22362h.remove(taNativeInfo);
        }
    }
}
