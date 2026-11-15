package com.transsion.hubsdk.core.preference;

import android.preference.PreferenceFragment;
import android.widget.ListView;
import com.transsion.hubsdk.interfaces.preference.ITranPreferenceFragmentAdapter;
import com.transsion.hubsdk.preference.TranPreferenceFragmentBridge;

public class TranThubPreferenceFragment implements ITranPreferenceFragmentAdapter {
    @Override
    public ListView getListView(PreferenceFragment preferenceFragment) {
        return new TranPreferenceFragmentBridge().getListView(preferenceFragment);
    }
}
