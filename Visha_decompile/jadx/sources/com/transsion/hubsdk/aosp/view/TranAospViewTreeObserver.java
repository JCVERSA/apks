package com.transsion.hubsdk.aosp.view;

import android.graphics.Region;
import android.util.ArrayMap;
import android.view.ViewTreeObserver;
import com.transsion.hubsdk.api.view.TranViewTreeObserver;
import com.transsion.hubsdk.interfaces.view.ITranViewTreeObserverAdapter;

public class TranAospViewTreeObserver implements ITranViewTreeObserverAdapter {
    private final ArrayMap<TranViewTreeObserver.ITranOnComputeInternalInsetsListener, TranAospComputeInternalInsertsListener> mListenerMap = new ArrayMap<>();
    private TranViewTreeObserverExt mViewTreeObserverExt = new TranViewTreeObserverExt();

    public class TranAospComputeInternalInsertsListener implements TranViewTreeObserverExt.ITranOnComputeInternalInsetsListenerExt {
        TranViewTreeObserver.ITranOnComputeInternalInsetsListener mListener;

        public TranAospComputeInternalInsertsListener(TranViewTreeObserver.ITranOnComputeInternalInsetsListener iTranOnComputeInternalInsetsListener) {
            this.mListener = iTranOnComputeInternalInsetsListener;
        }

        @Override
        public void onComputeInternalInsets(Region region) {
            this.mListener.onComputeInternalInsets(region);
        }
    }

    @Override
    public void addOnComputeInternalInsetsListener(ViewTreeObserver viewTreeObserver, TranViewTreeObserver.ITranOnComputeInternalInsetsListener iTranOnComputeInternalInsetsListener) {
        TranAospComputeInternalInsertsListener tranAospComputeInternalInsertsListener = new TranAospComputeInternalInsertsListener(iTranOnComputeInternalInsetsListener);
        this.mListenerMap.put(iTranOnComputeInternalInsetsListener, tranAospComputeInternalInsertsListener);
        this.mViewTreeObserverExt.registerListener(viewTreeObserver, tranAospComputeInternalInsertsListener);
    }

    @Override
    public void removeOnComputeInternalInsetsListener(ViewTreeObserver viewTreeObserver, TranViewTreeObserver.ITranOnComputeInternalInsetsListener iTranOnComputeInternalInsetsListener) {
        TranAospComputeInternalInsertsListener tranAospComputeInternalInsertsListener = this.mListenerMap.get(iTranOnComputeInternalInsetsListener);
        if (tranAospComputeInternalInsertsListener != null) {
            this.mViewTreeObserverExt.unregisterListener(viewTreeObserver, tranAospComputeInternalInsertsListener);
            this.mListenerMap.remove(iTranOnComputeInternalInsetsListener);
        }
    }
}
