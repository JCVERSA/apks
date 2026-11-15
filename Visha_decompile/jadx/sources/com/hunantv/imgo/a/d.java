package com.hunantv.imgo.a;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.data.CommonData;
import com.hunantv.imgo.net.RequestParams;

public class d extends b {
    private d(Context context) {
        super(context);
        this.c = context;
    }

    public static d a(Context context) {
        return new d(context);
    }

    public void a(RequestParams requestParams) {
        String str = requestParams.getParamsMap().get("bid");
        this.a.a(a(!TextUtils.isEmpty(str) && str.equals(CommonData.BID_LIVE_PLAY)), requestParams.toJson(), (com.hunantv.imgo.report.a) null);
    }

    public String a(boolean z) {
        if (z) {
            return "https://hw-event.log.mgtv.com/dispatcher.do";
        }
        return com.hunantv.imgo.report.c.p();
    }
}
