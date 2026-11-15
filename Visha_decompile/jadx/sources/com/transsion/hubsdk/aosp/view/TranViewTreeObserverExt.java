package com.transsion.hubsdk.aosp.view;

import android.graphics.Region;
import android.util.ArrayMap;
import android.view.ViewTreeObserver;

public class TranViewTreeObserverExt {
    private final ArrayMap<ITranOnComputeInternalInsetsListenerExt, TranOnComputeInternalInsetsListener> mListenerMap = new ArrayMap<>();

    public interface ITranOnComputeInternalInsetsListenerExt {
        void onComputeInternalInsets(Region region);
    }

    public class TranOnComputeInternalInsetsListener implements ViewTreeObserver.OnComputeInternalInsetsListener {
        private ITranOnComputeInternalInsetsListenerExt mListener;

        public TranOnComputeInternalInsetsListener(ITranOnComputeInternalInsetsListenerExt iTranOnComputeInternalInsetsListenerExt) {
            this.mListener = iTranOnComputeInternalInsetsListenerExt;
        }

        public void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
            internalInsetsInfo.setTouchableInsets(3);
            this.mListener.onComputeInternalInsets(internalInsetsInfo.touchableRegion);
        }
    }

    public void registerListener(ViewTreeObserver viewTreeObserver, ITranOnComputeInternalInsetsListenerExt iTranOnComputeInternalInsetsListenerExt) {
        if (viewTreeObserver == null) {
            return;
        }
        TranOnComputeInternalInsetsListener tranOnComputeInternalInsetsListener = new TranOnComputeInternalInsetsListener(iTranOnComputeInternalInsetsListenerExt);
        this.mListenerMap.put(iTranOnComputeInternalInsetsListenerExt, tranOnComputeInternalInsetsListener);
        viewTreeObserver.addOnComputeInternalInsetsListener(tranOnComputeInternalInsetsListener);
    }

    public void unregisterListener(ViewTreeObserver viewTreeObserver, ITranOnComputeInternalInsetsListenerExt iTranOnComputeInternalInsetsListenerExt) {
        TranOnComputeInternalInsetsListener tranOnComputeInternalInsetsListener = this.mListenerMap.get(iTranOnComputeInternalInsetsListenerExt);
        if (tranOnComputeInternalInsetsListener == null || viewTreeObserver == null) {
            return;
        }
        viewTreeObserver.removeOnComputeInternalInsetsListener(tranOnComputeInternalInsetsListener);
        this.mListenerMap.remove(iTranOnComputeInternalInsetsListenerExt);
    }
}
