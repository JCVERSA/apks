package com.mgmi.ssp;

import java.util.List;

public interface NativeExpressADListener extends BasicADListener {
    void onADClicked(NativeExpressADView nativeExpressADView);

    void onADClosed(NativeExpressADView nativeExpressADView);

    void onADExposure(NativeExpressADView nativeExpressADView);

    void onADLoaded(List<NativeExpressADView> list);

    void onRenderFail(NativeExpressADView nativeExpressADView);

    void onRenderSuccess(NativeExpressADView nativeExpressADView);
}
