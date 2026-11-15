package com.mgmi.ssp;

import java.util.List;

public interface NativeAdListener extends BasicADListener {
    void onADLoaded(int i);

    void onADLoaded(List<NativeADDataRef> list);
}
