package com.just.agentweb;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

public class LollipopFixedWebView extends WebView {
    public LollipopFixedWebView(Context context) {
        super(getFixedContext(context));
    }

    public static Context getFixedContext(Context context) {
        return context;
    }

    public LollipopFixedWebView(Context context, AttributeSet attributeSet) {
        super(getFixedContext(context), attributeSet);
    }

    public LollipopFixedWebView(Context context, AttributeSet attributeSet, int i) {
        super(getFixedContext(context), attributeSet, i);
    }

    @TargetApi(21)
    public LollipopFixedWebView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(getFixedContext(context), attributeSet, i, i2);
    }

    public LollipopFixedWebView(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(getFixedContext(context), attributeSet, i, z);
    }
}
