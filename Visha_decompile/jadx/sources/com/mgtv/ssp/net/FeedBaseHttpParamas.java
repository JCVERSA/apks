package com.mgtv.ssp.net;

import com.hunantv.imgo.util.b;
import com.mgtv.task.http.HttpParams;

public class FeedBaseHttpParamas extends ContentSdkBaseImgoHttpParams {
    public FeedBaseHttpParamas() {
        put("uuid", b.n(), HttpParams.Type.BODY);
    }
}
