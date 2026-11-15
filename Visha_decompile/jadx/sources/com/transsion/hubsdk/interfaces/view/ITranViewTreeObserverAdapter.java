package com.transsion.hubsdk.interfaces.view;

import android.view.ViewTreeObserver;
import com.transsion.hubsdk.api.view.TranViewTreeObserver;

public interface ITranViewTreeObserverAdapter {
    void addOnComputeInternalInsetsListener(ViewTreeObserver viewTreeObserver, TranViewTreeObserver.ITranOnComputeInternalInsetsListener iTranOnComputeInternalInsetsListener);

    void removeOnComputeInternalInsetsListener(ViewTreeObserver viewTreeObserver, TranViewTreeObserver.ITranOnComputeInternalInsetsListener iTranOnComputeInternalInsetsListener);
}
