package com.just.agentweb;

import android.webkit.WebView;

public class IndicatorHandler implements IndicatorController {
    private BaseIndicatorSpec mBaseIndicatorSpec;

    public static IndicatorHandler getInstance() {
        return new IndicatorHandler();
    }

    @Override
    public void finish() {
        BaseIndicatorSpec baseIndicatorSpec = this.mBaseIndicatorSpec;
        if (baseIndicatorSpec != null) {
            baseIndicatorSpec.hide();
        }
    }

    public IndicatorHandler inJectIndicator(BaseIndicatorSpec baseIndicatorSpec) {
        this.mBaseIndicatorSpec = baseIndicatorSpec;
        return this;
    }

    @Override
    public BaseIndicatorSpec offerIndicator() {
        return this.mBaseIndicatorSpec;
    }

    @Override
    public void progress(WebView webView, int i) {
        if (i == 0) {
            reset();
            return;
        }
        if (i > 0 && i <= 10) {
            showIndicator();
        } else if (i > 10 && i < 95) {
            setProgress(i);
        } else {
            setProgress(i);
            finish();
        }
    }

    public void reset() {
        BaseIndicatorSpec baseIndicatorSpec = this.mBaseIndicatorSpec;
        if (baseIndicatorSpec != null) {
            baseIndicatorSpec.reset();
        }
    }

    @Override
    public void setProgress(int i) {
        BaseIndicatorSpec baseIndicatorSpec = this.mBaseIndicatorSpec;
        if (baseIndicatorSpec != null) {
            baseIndicatorSpec.setProgress(i);
        }
    }

    @Override
    public void showIndicator() {
        BaseIndicatorSpec baseIndicatorSpec = this.mBaseIndicatorSpec;
        if (baseIndicatorSpec != null) {
            baseIndicatorSpec.show();
        }
    }
}
