package com.transsion.hubsdk.api.view;

import android.graphics.Region;
import android.util.ArrayMap;
import android.view.ViewTreeObserver;
import com.transsion.hubsdk.aosp.view.TranAospViewTreeObserver;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranViewTreeObserverAdapter;

public class TranViewTreeObserver {
    private static final String TAG = "TranViewTreeObserver";
    private TranAospViewTreeObserver mAospService;
    private final ArrayMap<ITranOnComputeInternalInsetsListener, String> mListenerMap = new ArrayMap<>();

    public interface ITranOnComputeInternalInsetsListener {
        void onComputeInternalInsets(Region region);
    }

    @TranLevel(level = 1)
    public void addOnComputeInternalInsetsListener(ViewTreeObserver viewTreeObserver, ITranOnComputeInternalInsetsListener iTranOnComputeInternalInsetsListener) {
        if (this.mListenerMap.containsKey(iTranOnComputeInternalInsetsListener)) {
            return;
        }
        this.mListenerMap.put(iTranOnComputeInternalInsetsListener, null);
        getService().addOnComputeInternalInsetsListener(viewTreeObserver, iTranOnComputeInternalInsetsListener);
    }

    public ITranViewTreeObserverAdapter getService() {
        TranSdkLog.i(TAG, "TranAospViewTreeObserver");
        TranAospViewTreeObserver tranAospViewTreeObserver = this.mAospService;
        if (tranAospViewTreeObserver != null) {
            return tranAospViewTreeObserver;
        }
        TranAospViewTreeObserver tranAospViewTreeObserver2 = new TranAospViewTreeObserver();
        this.mAospService = tranAospViewTreeObserver2;
        return tranAospViewTreeObserver2;
    }

    @TranLevel(level = 1)
    public void removeOnComputeInternalInsetsListener(ViewTreeObserver viewTreeObserver, ITranOnComputeInternalInsetsListener iTranOnComputeInternalInsetsListener) {
        if (this.mListenerMap.containsKey(iTranOnComputeInternalInsetsListener)) {
            this.mListenerMap.remove(iTranOnComputeInternalInsetsListener);
            getService().removeOnComputeInternalInsetsListener(viewTreeObserver, iTranOnComputeInternalInsetsListener);
        }
    }
}
