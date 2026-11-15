package com.mgmi.ssp;

import android.view.View;
import com.mgtv.a.b.a;

public class NativeExpressADView {
    private a mBaseAdView;

    public NativeExpressADView(com.mgtv.a.b.a.a aVar) {
        this.mBaseAdView = (a) aVar;
    }

    public int getECPM() {
        a aVar = this.mBaseAdView;
        if (aVar != null) {
            return aVar.A();
        }
        return 0;
    }

    public String getValueTag() {
        a aVar = this.mBaseAdView;
        return aVar != null ? aVar.i() : "";
    }

    public View getView() {
        return this.mBaseAdView.a();
    }

    public boolean isVideoType() {
        a aVar = this.mBaseAdView;
        if (aVar != null) {
            return aVar.b();
        }
        return false;
    }
}
