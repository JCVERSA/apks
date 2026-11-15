package com.hisavana.common.interfacz;

import android.app.Activity;

public interface IadInterstitial {
    boolean canShow();

    boolean isLoaded();

    void onResume();

    void show(Activity activity, String str, String str2);
}
