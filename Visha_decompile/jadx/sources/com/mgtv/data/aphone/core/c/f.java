package com.mgtv.data.aphone.core.c;

import android.content.Context;
import com.mgtv.data.aphone.core.bean.BufferBean;
import com.mgtv.data.aphone.core.bean.PlayerVideoAPlayVvBean;
import com.mgtv.data.aphone.core.bean.PlayerVideoEndBean;
import com.mgtv.data.aphone.core.bean.PlayerVideoErrBean;
import com.mgtv.data.aphone.core.bean.PlayerVideoHeartbeatBean;
import com.mgtv.data.aphone.core.bean.PlayerVideoPvBean;
import com.mgtv.data.aphone.core.bean.PlayerVideoVvBean;
import com.mgtv.data.aphone.core.constants.EventContants;
import java.util.HashMap;

public class f {
    public void a(Context context, HashMap<String, String> map) {
        com.mgtv.data.aphone.a.a.a().a("event_ppv", new PlayerVideoPvBean(context, map).getPlayerVideoPvParams(), (com.mgtv.data.aphone.a.b.b) null);
    }

    public void b(Context context, HashMap<String, String> map) {
        com.mgtv.data.aphone.a.a.a().a("event_pvv", new PlayerVideoVvBean(context, map).getPlayerVideoVvParams(), (com.mgtv.data.aphone.a.b.b) null);
    }

    public void c(Context context, HashMap<String, String> map) {
        com.mgtv.data.aphone.a.a.a().a("event_perr", new PlayerVideoErrBean(context, map).getPlayerVideoErrParams(), (com.mgtv.data.aphone.a.b.b) null);
    }

    public void d(Context context, HashMap<String, String> map) {
        com.mgtv.data.aphone.a.a.a().a("event_pend", new PlayerVideoEndBean(context, map).getPlayerVideoEndParams(), (com.mgtv.data.aphone.a.b.b) null);
    }

    public void e(Context context, HashMap<String, String> map) {
        com.mgtv.data.aphone.a.a.a().a(EventContants.EventType.EVENT_VV, new PlayerVideoAPlayVvBean(context, map).getPlayerVideoAPlayVvParams(), (com.mgtv.data.aphone.a.b.b) null);
    }

    public void a(Context context, HashMap<String, String> map, String str, String str2) {
        com.mgtv.data.aphone.a.a.a().a(EventContants.EventType.EVENT_HB, new PlayerVideoHeartbeatBean(context, map, str, str2).getPlayerVideoHeartbeatParams(), (com.mgtv.data.aphone.a.b.b) null);
    }

    public void a(Context context, HashMap<String, String> map, String str) {
        com.mgtv.data.aphone.a.a.a().a(EventContants.EventType.EVENT_BUFFER, new BufferBean(context, map, str).getBufferParams(), (com.mgtv.data.aphone.a.b.b) null);
    }
}
