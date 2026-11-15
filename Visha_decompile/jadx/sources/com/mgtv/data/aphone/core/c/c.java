package com.mgtv.data.aphone.core.c;

import android.content.Context;
import com.mgtv.data.aphone.core.bean.SctrEventBean;
import com.mgtv.data.aphone.core.webview.BigDataSDKJSParameter;

public class c {
    public void a(Context context, String str, BigDataSDKJSParameter bigDataSDKJSParameter) {
        try {
            SctrEventBean sctrEventBean = new SctrEventBean(context, bigDataSDKJSParameter);
            com.mgtv.data.aphone.core.j.c.c("BigDataSDK_new  SDK " + getClass().getSimpleName() + " (" + hashCode() + ")", "  SDK  AppPvEventReport()  pvEventBean:" + sctrEventBean.getSctrParams());
            com.mgtv.data.aphone.a.a.a().a(false).a("event_webview_" + str, sctrEventBean.getSctrParams(), (com.mgtv.data.aphone.a.b.b) null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
