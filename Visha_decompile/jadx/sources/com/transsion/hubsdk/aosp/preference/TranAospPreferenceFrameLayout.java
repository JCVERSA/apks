package com.transsion.hubsdk.aosp.preference;

import android.view.View;
import android.view.ViewGroup;
import com.transsion.hubsdk.interfaces.preference.ITranPreferenceFrameLayoutAdapter;

public class TranAospPreferenceFrameLayout implements ITranPreferenceFrameLayoutAdapter {
    private TranAospPreferenceFrameLayoutExt mExt;

    private TranAospPreferenceFrameLayoutExt getTranAospPreferenceFrameLayout() {
        if (this.mExt == null) {
            this.mExt = new TranAospPreferenceFrameLayoutExt();
        }
        return this.mExt;
    }

    @Override
    public void setRemoveBorders(ViewGroup viewGroup, View view, boolean z) {
        getTranAospPreferenceFrameLayout().setRemoveBorders(viewGroup, view, z);
    }
}
