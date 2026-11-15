package com.just.agentweb;

public class MiddlewareWebChromeBase extends WebChromeClientDelegate {
    private MiddlewareWebChromeBase mMiddlewareWebChromeBase;

    public MiddlewareWebChromeBase(android.webkit.WebChromeClient webChromeClient) {
        super(webChromeClient);
    }

    public final MiddlewareWebChromeBase enq(MiddlewareWebChromeBase middlewareWebChromeBase) {
        setDelegate(middlewareWebChromeBase);
        this.mMiddlewareWebChromeBase = middlewareWebChromeBase;
        return middlewareWebChromeBase;
    }

    public final MiddlewareWebChromeBase next() {
        return this.mMiddlewareWebChromeBase;
    }

    @Override
    public final void setDelegate(android.webkit.WebChromeClient webChromeClient) {
        super.setDelegate(webChromeClient);
    }

    public MiddlewareWebChromeBase() {
        super(null);
    }
}
