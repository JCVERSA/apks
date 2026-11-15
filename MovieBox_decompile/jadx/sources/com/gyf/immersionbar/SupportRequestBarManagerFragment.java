package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;

public final class SupportRequestBarManagerFragment extends Fragment {

    private ImmersionDelegate f32235a;

    public ImmersionBar V(Activity activity, Dialog dialog) {
        if (this.f32235a == null) {
            this.f32235a = new ImmersionDelegate(activity, dialog);
        }
        return this.f32235a.get();
    }

    public ImmersionBar W(Object obj) {
        if (this.f32235a == null) {
            this.f32235a = new ImmersionDelegate(obj);
        }
        return this.f32235a.get();
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ImmersionDelegate immersionDelegate = this.f32235a;
        if (immersionDelegate != null) {
            immersionDelegate.onActivityCreated(getResources().getConfiguration());
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ImmersionDelegate immersionDelegate = this.f32235a;
        if (immersionDelegate != null) {
            immersionDelegate.onConfigurationChanged(configuration);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ImmersionDelegate immersionDelegate = this.f32235a;
        if (immersionDelegate != null) {
            immersionDelegate.onDestroy();
            this.f32235a = null;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        ImmersionDelegate immersionDelegate = this.f32235a;
        if (immersionDelegate != null) {
            immersionDelegate.onResume();
        }
    }
}
