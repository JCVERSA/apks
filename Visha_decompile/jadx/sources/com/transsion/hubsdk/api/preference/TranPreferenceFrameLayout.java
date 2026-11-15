package com.transsion.hubsdk.api.preference;

import android.view.View;
import android.view.ViewGroup;
import com.transsion.hubsdk.aosp.preference.TranAospPreferenceFrameLayout;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.preference.TranThubPreferenceFrameLayout;
import com.transsion.hubsdk.interfaces.preference.ITranPreferenceFrameLayoutAdapter;

public class TranPreferenceFrameLayout {
    private static final String TAG = "TranPreferenceFrameLayout";
    private TranAospPreferenceFrameLayout mAospService;
    private TranThubPreferenceFrameLayout mThubService;

    public ITranPreferenceFrameLayoutAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubPreferenceFrameLayout");
            TranThubPreferenceFrameLayout tranThubPreferenceFrameLayout = this.mThubService;
            if (tranThubPreferenceFrameLayout != null) {
                return tranThubPreferenceFrameLayout;
            }
            TranThubPreferenceFrameLayout tranThubPreferenceFrameLayout2 = new TranThubPreferenceFrameLayout();
            this.mThubService = tranThubPreferenceFrameLayout2;
            return tranThubPreferenceFrameLayout2;
        }
        TranSdkLog.i(TAG, "TranThubPreferenceFrameLayout");
        TranAospPreferenceFrameLayout tranAospPreferenceFrameLayout = this.mAospService;
        if (tranAospPreferenceFrameLayout != null) {
            return tranAospPreferenceFrameLayout;
        }
        TranAospPreferenceFrameLayout tranAospPreferenceFrameLayout2 = new TranAospPreferenceFrameLayout();
        this.mAospService = tranAospPreferenceFrameLayout2;
        return tranAospPreferenceFrameLayout2;
    }

    public void setRemoveBorders(ViewGroup viewGroup, View view, boolean z) {
        if (viewGroup == null || view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33181).setRemoveBorders(viewGroup, view, z);
    }
}
