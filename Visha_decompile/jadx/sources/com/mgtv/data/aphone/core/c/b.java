package com.mgtv.data.aphone.core.c;

import android.content.Context;
import com.mgtv.data.aphone.core.bean.PvEventBean;
import com.mgtv.data.aphone.core.webview.BigDataSDKJSParameter;

public class b {
    public void a(Context context, String str, String str2, BigDataSDKJSParameter bigDataSDKJSParameter) {
        try {
            PvEventBean pvEventBean = new PvEventBean(context, bigDataSDKJSParameter);
            com.mgtv.data.aphone.core.j.c.c("BigDataSDK_new  SDK " + getClass().getSimpleName() + " (" + hashCode() + ")", "  SDK  AppPvEventReport()  pvEventBean:" + pvEventBean.getPvParams());
            com.mgtv.data.aphone.a.a.a().a(false).a("event_webview_" + str, pvEventBean.getPvParams(), (com.mgtv.data.aphone.a.b.b) null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
