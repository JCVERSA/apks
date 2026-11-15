package com.transsion.onlinevideo;

import android.os.Bundle;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.transsion.dbdata.beans.VishaPalmUserInfo;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.h27;

public class OnlineBaseActivity extends BaseActivity implements h27.b {
    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        switch (i) {
            case AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED:
                onUserLogin((VishaPalmUserInfo) objArr[0]);
                break;
            case AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED:
                userLogout();
                break;
            case AnalyticsListener.EVENT_RENDERER_READY_CHANGED:
                onUserReLogin((VishaPalmUserInfo) objArr[0]);
                break;
        }
    }

    public void initBackground() {
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initBackground();
        registerPalmIdListeners();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        unRegisterPalmIdListeners();
    }

    public void onUserLogin(VishaPalmUserInfo vishaPalmUserInfo) {
    }

    public void onUserReLogin(VishaPalmUserInfo vishaPalmUserInfo) {
    }

    public void registerPalmIdListeners() {
        h27.c().b(this, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED);
        h27.c().b(this, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED);
        h27.c().b(this, AnalyticsListener.EVENT_RENDERER_READY_CHANGED);
        h27.c().b(this, 1043);
    }

    public void unRegisterPalmIdListeners() {
        h27.c().f(this, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED);
        h27.c().f(this, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED);
        h27.c().f(this, AnalyticsListener.EVENT_RENDERER_READY_CHANGED);
        h27.c().f(this, 1043);
    }

    public void userLogout() {
    }
}
