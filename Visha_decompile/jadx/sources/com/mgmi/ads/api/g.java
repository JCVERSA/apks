package com.mgmi.ads.api;

import android.text.TextUtils;
import com.mgmi.R;
import com.mgmi.net.bean.BaseAdWidgetInfoImpBean;

public class g {
    public static void a(BaseAdWidgetInfoImpBean baseAdWidgetInfoImpBean, boolean z, String str) {
        String string;
        if (baseAdWidgetInfoImpBean == null || c.a() == null) {
            return;
        }
        if (z) {
            string = !TextUtils.isEmpty(str) ? c.a().getResources().getString(R.string.mgmi_adform_dsc, str) : c.a().getResources().getString(R.string.mgmi_template_ad);
        } else {
            string = "";
        }
        baseAdWidgetInfoImpBean.setAdLogoAndOriginName(string);
    }
}
