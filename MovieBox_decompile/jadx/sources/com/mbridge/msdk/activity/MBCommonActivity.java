package com.mbridge.msdk.activity;

import android.os.Build;
import android.os.Bundle;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.foundation.webview.b;

public class MBCommonActivity extends DomainMBCommonActivity {

    public static final int f33204e = 0;

    private boolean f33205d = false;

    @Override
    public void finish() {
        BrowserView browserView = this.browserView;
        if (browserView != null) {
            browserView.setListener(null);
            this.browserView.destroy();
        }
        BrowserView browserViewRemove = b.f35063a.remove(this.f33193a);
        if (browserViewRemove != null) {
            browserViewRemove.setListener(null);
            browserViewRemove.destroy();
        }
        this.f33205d = true;
        super.finish();
    }

    @Override
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
        super.onCreate(bundle);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (this.f33205d) {
            return;
        }
        BrowserView browserView = this.browserView;
        if (browserView != null) {
            browserView.setListener(null);
            this.browserView.destroy();
        }
        BrowserView browserViewRemove = b.f35063a.remove(this.f33193a);
        if (browserViewRemove != null) {
            browserViewRemove.setListener(null);
            browserViewRemove.destroy();
        }
    }
}
