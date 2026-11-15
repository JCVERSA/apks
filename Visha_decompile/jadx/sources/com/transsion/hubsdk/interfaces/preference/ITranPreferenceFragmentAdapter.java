package com.transsion.hubsdk.interfaces.preference;

import android.preference.PreferenceFragment;
import android.widget.ListView;

public interface ITranPreferenceFragmentAdapter {
    ListView getListView(PreferenceFragment preferenceFragment);
}
