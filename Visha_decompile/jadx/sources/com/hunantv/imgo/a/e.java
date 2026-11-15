package com.hunantv.imgo.a;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.data.EventClickData;
import com.hunantv.imgo.net.RequestParams;

public class e extends b {
    public e(Context context) {
        super(context);
    }

    public void a(EventClickData eventClickData) {
        if (eventClickData == null) {
            return;
        }
        RequestParams requestParamsCreateRequestParams = eventClickData.createRequestParams();
        requestParamsCreateRequestParams.put("dc", eventClickData.getUuid());
        requestParamsCreateRequestParams.put("pos", TextUtils.isEmpty(eventClickData.getPos()) ? "" : eventClickData.getPos());
        com.hunantv.imgo.report.d.a().a(b(), requestParamsCreateRequestParams.toJsonNew(), (com.hunantv.imgo.report.a) null);
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.x();
    }
}
