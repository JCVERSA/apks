package com.mgtv.data.aphone.core.c;

import android.content.Context;
import com.mgtv.data.aphone.core.bean.SystemErrorBean;
import com.mgtv.data.aphone.core.constants.EventContants;
import java.util.HashMap;

public class g {
    public void a(Context context, HashMap<String, String> map) {
        com.mgtv.data.aphone.a.a.a().a(EventContants.EventType.EVENT_CRASH, new SystemErrorBean(context, map).getSoCrashParams(), (com.mgtv.data.aphone.a.b.b) null);
    }
}
