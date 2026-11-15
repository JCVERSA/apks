package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;

public final class o extends Fragment {

    private ImmersionDelegate f32302a;

    public ImmersionBar a(Activity activity, Dialog dialog) {
        if (this.f32302a == null) {
            this.f32302a = new ImmersionDelegate(activity, dialog);
        }
        return this.f32302a.get();
    }

    public ImmersionBar b(Object obj) {
        if (this.f32302a == null) {
            this.f32302a = new ImmersionDelegate(obj);
        }
        return this.f32302a.get();
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ImmersionDelegate immersionDelegate = this.f32302a;
        if (immersionDelegate != null) {
            immersionDelegate.onActivityCreated(getResources().getConfiguration());
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ImmersionDelegate immersionDelegate = this.f32302a;
        if (immersionDelegate != null) {
            immersionDelegate.onConfigurationChanged(configuration);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ImmersionDelegate immersionDelegate = this.f32302a;
        if (immersionDelegate != null) {
            immersionDelegate.onDestroy();
            this.f32302a = null;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        ImmersionDelegate immersionDelegate = this.f32302a;
        if (immersionDelegate != null) {
            immersionDelegate.onResume();
        }
    }
}
