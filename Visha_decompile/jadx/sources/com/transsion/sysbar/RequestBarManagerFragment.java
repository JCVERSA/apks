package com.transsion.sysbar;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;

public final class RequestBarManagerFragment extends Fragment {
    public ImmersionDelegate b;

    public ImmersionBar a(Activity activity, Dialog dialog) {
        if (this.b == null) {
            this.b = new ImmersionDelegate(activity, dialog);
        }
        return this.b.get();
    }

    public ImmersionBar b(Object obj) {
        if (this.b == null) {
            this.b = new ImmersionDelegate(obj);
        }
        return this.b.get();
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ImmersionDelegate immersionDelegate = this.b;
        if (immersionDelegate != null) {
            immersionDelegate.onActivityCreated(getResources().getConfiguration());
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ImmersionDelegate immersionDelegate = this.b;
        if (immersionDelegate != null) {
            immersionDelegate.onConfigurationChanged(configuration);
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        ImmersionDelegate immersionDelegate = this.b;
        if (immersionDelegate != null) {
            immersionDelegate.onDestroy();
            this.b = null;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        ImmersionDelegate immersionDelegate = this.b;
        if (immersionDelegate != null) {
            immersionDelegate.onResume();
        }
    }
}
