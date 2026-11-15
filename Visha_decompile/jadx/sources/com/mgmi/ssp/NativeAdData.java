package com.mgmi.ssp;

import android.view.View;
import com.mgtv.a.b.a.a;

public class NativeAdData implements NativeADDataRef {
    private boolean hasExpose = false;
    private a mBaseAdView;
    private String url;

    public NativeAdData(a aVar, String str) {
        this.mBaseAdView = aVar;
        this.url = str;
    }

    @Override
    public String getDesc() {
        a aVar = this.mBaseAdView;
        if (aVar != null) {
            return aVar.w();
        }
        return null;
    }

    @Override
    public String getImgUrl() {
        return this.url;
    }

    @Override
    public String getTitle() {
        a aVar = this.mBaseAdView;
        if (aVar != null) {
            return aVar.v();
        }
        return null;
    }

    @Override
    public void onClicked(View view) {
        a aVar = this.mBaseAdView;
        if (aVar == null || !this.hasExpose) {
            return;
        }
        aVar.z();
    }

    @Override
    public void onExposured(View view) {
        a aVar = this.mBaseAdView;
        if (aVar != null) {
            this.hasExpose = true;
            aVar.y();
        }
    }
}
