package com.mgtv.data.aphone.a.c;

import android.content.Context;
import com.mgtv.data.aphone.core.bean.EventOnOffBean;
import com.mgtv.data.aphone.core.constants.EventContants;
import java.util.Map;

public interface b {
    void a(Context context);

    void a(EventOnOffBean eventOnOffBean, String str, com.mgtv.data.aphone.a.a.a aVar, com.mgtv.data.aphone.a.b.b bVar);

    void a(EventContants.EventType eventType, EventOnOffBean eventOnOffBean, Map<String, String> map, com.mgtv.data.aphone.a.a.a aVar, com.mgtv.data.aphone.a.b.b bVar);

    void a(String str, EventOnOffBean eventOnOffBean, Map<String, String> map, com.mgtv.data.aphone.a.a.a aVar, com.mgtv.data.aphone.a.b.b bVar);
}
