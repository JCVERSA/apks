package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;

public abstract class g {

    protected Context f35732a;

    protected Object f35733b;

    protected WindVaneWebView f35734c;

    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        this.f35732a = context;
        this.f35734c = windVaneWebView;
    }

    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        this.f35733b = obj;
        this.f35734c = windVaneWebView;
    }
}
