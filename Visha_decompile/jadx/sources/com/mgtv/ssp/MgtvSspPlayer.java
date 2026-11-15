package com.mgtv.ssp;

import android.app.Activity;
import android.content.Context;
import com.mgtv.ssp.auth.EntranceInfo;
import com.mgtv.ssp.callback.MgSspSdkCallback;

public class MgtvSspPlayer {
    private static MgtvSspPlayer inst;

    public static MgtvSspPlayer get() {
        if (inst == null) {
            synchronized (MgtvSspPlayer.class) {
                try {
                    if (inst == null) {
                        inst = new MgtvSspPlayer();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return inst;
    }

    @Deprecated
    public void enterFeedChannel(Context context, EntranceInfo entranceInfo, MgSspSdkCallback mgSspSdkCallback) {
        new a().a(context, 2, entranceInfo, mgSspSdkCallback);
    }

    @Deprecated
    public void enterImmersionChannel(Context context, EntranceInfo entranceInfo, MgSspSdkCallback mgSspSdkCallback) {
        new a().a(context, 3, entranceInfo, mgSspSdkCallback);
    }

    public void enterPlayDetail(Activity activity, EntranceInfo entranceInfo) {
        new a().a(activity, entranceInfo);
    }

    public void loadFeedView(Activity activity, EntranceInfo entranceInfo, MgSspSdkCallback mgSspSdkCallback) {
        new a().a(activity, 2, entranceInfo, mgSspSdkCallback);
    }

    public void loadImmersionView(Activity activity, EntranceInfo entranceInfo, MgSspSdkCallback mgSspSdkCallback) {
        new a().a(activity, 3, entranceInfo, mgSspSdkCallback);
    }
}
