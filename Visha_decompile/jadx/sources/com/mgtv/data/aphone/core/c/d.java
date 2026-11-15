package com.mgtv.data.aphone.core.c;

import android.content.Context;
import com.mgtv.data.aphone.core.bean.ClickBean;
import com.mgtv.data.aphone.core.constants.EventContants;
import java.util.HashMap;

public class d {
    public void a(Context context, HashMap<String, String> map) {
        com.mgtv.data.aphone.a.a.a().a(EventContants.EventType.EVENT_CLICK, new ClickBean(context, map).getClickParams(), (com.mgtv.data.aphone.a.b.b) null);
    }
}
