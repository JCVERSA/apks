package com.transsion.hubsdk.interfaces.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.UserHandle;
import android.view.View;

public interface ITranAppRemoteImplAdapter {
    boolean finishCurrentAnimation();

    boolean isSupported();

    Object newAnimationCallback();

    boolean setAppRemoteView(View view, Context context, Bundle bundle, Object obj);

    void skipBackAnim(Activity activity);

    void startActivity(Activity activity, Intent intent, Bundle bundle, View view, Bundle bundle2, Object obj);

    void startActivity(Activity activity, Intent intent, View view);

    void startActivityAsUser(Activity activity, Intent intent, UserHandle userHandle, Bundle bundle, View view, Bundle bundle2, Object obj);

    void startActivityAsUser(Activity activity, Intent intent, UserHandle userHandle, View view);

    void startActivityForResult(Activity activity, Intent intent, int i, Bundle bundle, View view, Bundle bundle2, Object obj);

    void startActivityForResult(Activity activity, Intent intent, int i, View view);
}
