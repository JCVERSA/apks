package com.transsion.hubsdk.api.preference;

import android.preference.PreferenceFragment;
import android.widget.ListView;
import com.transsion.hubsdk.aosp.preference.TranAospPreferenceFragment;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.preference.TranThubPreferenceFragment;
import com.transsion.hubsdk.interfaces.preference.ITranPreferenceFragmentAdapter;

public class TranPreferenceFragment {
    private static final String TAG = "TranPreferenceFragment";
    private TranAospPreferenceFragment mAospService;
    private TranThubPreferenceFragment mThubService;

    public ListView getListView(PreferenceFragment preferenceFragment) {
        return getService(TranVersion.Core.VERSION_33181).getListView(preferenceFragment);
    }

    public ITranPreferenceFragmentAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubPreferenceFragment");
            TranThubPreferenceFragment tranThubPreferenceFragment = this.mThubService;
            if (tranThubPreferenceFragment != null) {
                return tranThubPreferenceFragment;
            }
            TranThubPreferenceFragment tranThubPreferenceFragment2 = new TranThubPreferenceFragment();
            this.mThubService = tranThubPreferenceFragment2;
            return tranThubPreferenceFragment2;
        }
        TranSdkLog.i(TAG, "TranAospPreferenceFragment");
        TranAospPreferenceFragment tranAospPreferenceFragment = this.mAospService;
        if (tranAospPreferenceFragment != null) {
            return tranAospPreferenceFragment;
        }
        TranAospPreferenceFragment tranAospPreferenceFragment2 = new TranAospPreferenceFragment();
        this.mAospService = tranAospPreferenceFragment2;
        return tranAospPreferenceFragment2;
    }
}
