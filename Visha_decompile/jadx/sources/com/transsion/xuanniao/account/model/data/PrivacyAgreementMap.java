package com.transsion.xuanniao.account.model.data;

import android.content.Context;
import android.text.TextUtils;
import com.transsion.xuanniao.account.R;
import defpackage.ao7;
import defpackage.jr7;

public class PrivacyAgreementMap {
    public static String getAgreementUrl(Context context) {
        if (TextUtils.isEmpty(jr7.c())) {
            String strH = ao7.a.a.h();
            if (!"TECNO ID".equals(strH) && !"itel ID".equals(strH) && !"VIMOQ ID".equals(strH) && !"Infinix ID".equals(strH)) {
                return context.getString(R.string.sdk_config_agreement_url);
            }
        }
        return "";
    }

    public static String getPrivacyUrl(Context context) {
        if (TextUtils.isEmpty(jr7.c())) {
            String strH = ao7.a.a.h();
            if (!"TECNO ID".equals(strH) && !"itel ID".equals(strH) && !"VIMOQ ID".equals(strH) && !"Infinix ID".equals(strH)) {
                return context.getString(R.string.sdk_config_privacy_url);
            }
        }
        return "";
    }
}
