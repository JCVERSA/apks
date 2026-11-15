package com.mgtv.data.aphone.core.c;

import android.content.Context;
import com.mgtv.data.aphone.core.bean.ClickEventBean;
import com.mgtv.data.aphone.core.webview.BigDataSDKJSParameter;

public class a {
    public void a(Context context, String str, BigDataSDKJSParameter bigDataSDKJSParameter) {
        try {
            ClickEventBean clickEventBean = new ClickEventBean(context, bigDataSDKJSParameter);
            com.mgtv.data.aphone.core.j.c.c("BigDataSDK_new  SDK " + getClass().getSimpleName() + " (" + hashCode() + ")", "  SDK  AppPvEventReport()  pvEventBean:" + clickEventBean.getClickParams());
            com.mgtv.data.aphone.a.a.a().a(false).a("event_webview_" + str, clickEventBean.getClickParams(), (com.mgtv.data.aphone.a.b.b) null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
