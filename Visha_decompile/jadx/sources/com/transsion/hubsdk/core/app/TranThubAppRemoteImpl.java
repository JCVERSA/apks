package com.transsion.hubsdk.core.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.UserHandle;
import android.view.View;
import com.transsion.hubsdk.app.TranAppRemoteImpl;
import com.transsion.hubsdk.interfaces.app.ITranAppRemoteImplAdapter;

public class TranThubAppRemoteImpl implements ITranAppRemoteImplAdapter {
    private final TranAppRemoteImpl mTranAppRemoteImpl = new TranAppRemoteImpl();

    @Override
    public boolean finishCurrentAnimation() {
        return this.mTranAppRemoteImpl.finishCurrentAnimation();
    }

    @Override
    public boolean isSupported() {
        return this.mTranAppRemoteImpl.isSupported();
    }

    @Override
    public Object newAnimationCallback() {
        return this.mTranAppRemoteImpl.newAnimationCallback();
    }

    @Override
    public boolean setAppRemoteView(View view, Context context, Bundle bundle, Object obj) {
        return this.mTranAppRemoteImpl.setAppRemoteView(view, context, bundle, obj);
    }

    @Override
    public void skipBackAnim(Activity activity) {
        this.mTranAppRemoteImpl.skipBackAnim(activity);
    }

    @Override
    public void startActivity(Activity activity, Intent intent, View view) {
        this.mTranAppRemoteImpl.startActivity(activity, intent, view);
    }

    @Override
    public void startActivityAsUser(Activity activity, Intent intent, UserHandle userHandle, View view) {
        this.mTranAppRemoteImpl.startActivityAsUser(activity, intent, userHandle, view);
    }

    @Override
    public void startActivityForResult(Activity activity, Intent intent, int i, View view) {
        this.mTranAppRemoteImpl.startActivityForResult(activity, intent, i, view);
    }

    @Override
    public void startActivity(Activity activity, Intent intent, Bundle bundle, View view, Bundle bundle2, Object obj) {
        this.mTranAppRemoteImpl.startActivity(activity, intent, bundle, view, bundle2, obj);
    }

    @Override
    public void startActivityAsUser(Activity activity, Intent intent, UserHandle userHandle, Bundle bundle, View view, Bundle bundle2, Object obj) {
        this.mTranAppRemoteImpl.startActivityAsUser(activity, intent, userHandle, bundle, view, bundle2, obj);
    }

    @Override
    public void startActivityForResult(Activity activity, Intent intent, int i, Bundle bundle, View view, Bundle bundle2, Object obj) {
        this.mTranAppRemoteImpl.startActivityForResult(activity, intent, i, bundle, view, bundle2, obj);
    }
}
