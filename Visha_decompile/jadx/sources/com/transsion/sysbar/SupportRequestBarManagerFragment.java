package com.transsion.sysbar;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;

public final class SupportRequestBarManagerFragment extends Fragment {
    public ImmersionDelegate l;

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ImmersionDelegate immersionDelegate = this.l;
        if (immersionDelegate != null) {
            immersionDelegate.onActivityCreated(getResources().getConfiguration());
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ImmersionDelegate immersionDelegate = this.l;
        if (immersionDelegate != null) {
            immersionDelegate.onConfigurationChanged(configuration);
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        ImmersionDelegate immersionDelegate = this.l;
        if (immersionDelegate != null) {
            immersionDelegate.onDestroy();
            this.l = null;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        ImmersionDelegate immersionDelegate = this.l;
        if (immersionDelegate != null) {
            immersionDelegate.onResume();
        }
    }

    public ImmersionBar u(Activity activity, Dialog dialog) {
        if (this.l == null) {
            this.l = new ImmersionDelegate(activity, dialog);
        }
        return this.l.get();
    }

    public ImmersionBar v(Object obj) {
        if (this.l == null) {
            this.l = new ImmersionDelegate(obj);
        }
        return this.l.get();
    }
}
