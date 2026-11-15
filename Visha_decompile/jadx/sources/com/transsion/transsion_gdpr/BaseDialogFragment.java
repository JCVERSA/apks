package com.transsion.transsion_gdpr;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.annotation.RequiresApi;

@RequiresApi(api = 11)
public abstract class BaseDialogFragment extends DialogFragment {
    public Dialog b;

    public abstract Dialog a(boolean z);

    @Override
    public final Dialog onCreateDialog(Bundle bundle) {
        Activity activity = getActivity();
        if (activity != null) {
            this.b = a(activity.isInMultiWindowMode());
        } else {
            this.b = a(false);
        }
        return this.b;
    }

    @Override
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    @Override
    public void show(FragmentManager fragmentManager, String str) {
        try {
            Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(str);
            StringBuilder sb = new StringBuilder();
            sb.append("show: tag=");
            sb.append(str);
            sb.append(", existing=");
            sb.append(fragmentFindFragmentByTag != null);
            sb.append(", managerDestroyed=");
            sb.append(fragmentManager.isDestroyed());
            Log.d("BaseDialogFragment", sb.toString());
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            if (fragmentFindFragmentByTag != null) {
                fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
            }
            fragmentTransactionBeginTransaction.add(this, str);
            if (fragmentManager.isDestroyed()) {
                return;
            }
            Log.d("BaseDialogFragment", "show: commitNowAllowingStateLoss, tag=" + str);
            fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
        } catch (IllegalStateException e) {
            Log.e("BaseDialogFragment", "show: failed for tag=" + str, e);
        }
    }
}
