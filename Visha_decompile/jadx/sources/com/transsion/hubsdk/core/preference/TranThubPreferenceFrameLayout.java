package com.transsion.hubsdk.core.preference;

import android.view.View;
import android.view.ViewGroup;
import com.transsion.hubsdk.interfaces.preference.ITranPreferenceFrameLayoutAdapter;
import com.transsion.hubsdk.preference.TranPreferenceFrameLayout;

public class TranThubPreferenceFrameLayout implements ITranPreferenceFrameLayoutAdapter {
    private TranPreferenceFrameLayout mTranPreferenceFrameLayout;

    private TranPreferenceFrameLayout getTranPreferenceFrameLayoutImpl() {
        if (this.mTranPreferenceFrameLayout == null) {
            this.mTranPreferenceFrameLayout = new TranPreferenceFrameLayout();
        }
        return this.mTranPreferenceFrameLayout;
    }

    @Override
    public void setRemoveBorders(ViewGroup viewGroup, View view, boolean z) {
        getTranPreferenceFrameLayoutImpl().setRemoveBorders(viewGroup, view, z);
    }
}
