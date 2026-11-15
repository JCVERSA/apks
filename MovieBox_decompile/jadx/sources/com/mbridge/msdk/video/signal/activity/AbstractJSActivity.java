package com.mbridge.msdk.video.signal.activity;

import android.content.res.Configuration;
import com.mbridge.msdk.activity.MBBaseActivity;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.video.signal.b;
import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.mbridge.msdk.video.signal.factory.a;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.i;
import com.mbridge.msdk.video.signal.j;

public abstract class AbstractJSActivity extends MBBaseActivity implements IJSFactory {
    protected static final String TAG = "AbstractJSActivity";
    protected IJSFactory jsFactory = new a();

    public boolean canBackPress() {
        return false;
    }

    @Override
    public b getActivityProxy() {
        return this.jsFactory.getActivityProxy();
    }

    @Override
    public i getIJSRewardVideoV1() {
        return this.jsFactory.getIJSRewardVideoV1();
    }

    @Override
    public c getJSBTModule() {
        return this.jsFactory.getJSBTModule();
    }

    @Override
    public d getJSCommon() {
        return this.jsFactory.getJSCommon();
    }

    @Override
    public f getJSContainerModule() {
        return this.jsFactory.getJSContainerModule();
    }

    @Override
    public g getJSNotifyProxy() {
        return this.jsFactory.getJSNotifyProxy();
    }

    @Override
    public j getJSVideoModule() {
        return this.jsFactory.getJSVideoModule();
    }

    @Override
    public void onBackPressed() {
        if (getJSCommon().a()) {
            if (getJSContainerModule() == null || !getJSContainerModule().miniCardShowing()) {
                getActivityProxy().e();
                return;
            }
            return;
        }
        if (canBackPress()) {
            super.onBackPressed();
        } else {
            o0.a(TAG, "onBackPressed can't excute");
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (getJSCommon().a()) {
            getActivityProxy().a(configuration);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onPause() {
        super.onPause();
        if (getJSCommon().a()) {
            getActivityProxy().g();
        }
        getActivityProxy().a(1);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (com.mbridge.msdk.foundation.feedback.b.f34457f) {
            return;
        }
        if (getJSCommon().a()) {
            getActivityProxy().d();
        }
        getActivityProxy().a(0);
    }

    public void registerJsFactory(IJSFactory iJSFactory) {
        this.jsFactory = iJSFactory;
    }
}
