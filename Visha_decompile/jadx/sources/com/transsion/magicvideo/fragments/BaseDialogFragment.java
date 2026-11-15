package com.transsion.magicvideo.fragments;

import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;

public class BaseDialogFragment extends DialogFragment {
    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(bundle == null);
    }

    @Override
    public void show(FragmentManager fragmentManager, String str) {
        try {
            if (isStateSaved() || isAdded()) {
                return;
            }
            super.show(fragmentManager, str);
        } catch (Exception e) {
            e.printStackTrace();
            u();
        }
    }

    public void u() {
        try {
            dismissAllowingStateLoss();
        } catch (Exception e) {
            e.printStackTrace();
            Log.d("BaseDialogFragment", "<callDismiss> err: " + e.getMessage());
        }
    }
}
