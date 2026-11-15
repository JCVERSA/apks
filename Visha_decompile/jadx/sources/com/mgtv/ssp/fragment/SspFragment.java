package com.mgtv.ssp.fragment;

import androidx.fragment.app.Fragment;

public abstract class SspFragment extends Fragment {
    protected boolean isStarted = false;
    protected boolean isOuterPrepared = false;

    public boolean isStarted() {
        return this.isStarted;
    }

    public boolean onClickBack() {
        return false;
    }

    public abstract void requestData();

    public abstract void start(boolean z);
}
