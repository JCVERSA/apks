package com.transsion.hubsdk.core.app;

import android.app.ActionBar;
import com.transsion.hubsdk.app.TranActionBar;
import com.transsion.hubsdk.interfaces.app.ITranActionBarAdapter;

public class TranThubActionBar implements ITranActionBarAdapter {
    private TranActionBar mActionBar;

    private TranActionBar getTranActionBarImpl() {
        if (this.mActionBar == null) {
            this.mActionBar = new TranActionBar();
        }
        return this.mActionBar;
    }

    @Override
    public void setShowHideAnimationEnabled(ActionBar actionBar, boolean z) {
        getTranActionBarImpl().setShowHideAnimationEnabled(actionBar, z);
    }
}
