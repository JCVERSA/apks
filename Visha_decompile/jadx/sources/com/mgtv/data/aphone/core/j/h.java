package com.mgtv.data.aphone.core.j;

import android.content.Context;
import com.mgtv.data.aphone.core.bean.EventBean;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class h {
    public static void a(String str, String str2, Map<String, String> map, String str3, String str4, String str5, Context context) {
        if (f.e() > 100) {
            EventBean eventBean = new EventBean();
            eventBean.create_time = e.a(System.currentTimeMillis());
            eventBean.eventId = str;
            if (i.a(str2)) {
                str2 = String.valueOf(map.get("bid")).toString().equals("null") ? "" : String.valueOf(map.get("bid")).toString();
            }
            eventBean.bid = str2;
            if (i.a(str3)) {
                str3 = "https://hd-mobile-v1.log.mgtv.com/dispatcher.do";
            }
            eventBean.url = str3;
            if (i.a(str4)) {
                str4 = "POST";
            }
            eventBean.method = str4;
            eventBean.params = new JSONObject(map).toString();
            a(context, eventBean, str5);
        }
    }

    public static void b(Context context, List<com.mgtv.data.aphone.core.bean.b> list, String str, boolean z) {
        try {
            com.mgtv.data.aphone.core.db.e.c(context, list, str, z, true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, EventBean eventBean, String str) {
        try {
            com.mgtv.data.aphone.core.db.e.a(context, (List<EventBean>) Collections.singletonList(eventBean), str, true, true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, List<com.mgtv.data.aphone.core.bean.a> list, String str, boolean z) {
        try {
            com.mgtv.data.aphone.core.db.e.b(context, list, str, z, true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
