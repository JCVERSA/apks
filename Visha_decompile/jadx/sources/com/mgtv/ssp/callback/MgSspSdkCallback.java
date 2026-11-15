package com.mgtv.ssp.callback;

import com.mgtv.ssp.MgSspLoginStatusReceiver;
import com.mgtv.ssp.SspViewInterface;
import com.mgtv.ssp.fragment.SspFragment;

public interface MgSspSdkCallback {
    void gotoLogin(MgSspLoginStatusReceiver mgSspLoginStatusReceiver);

    void onFail(int i, String str);

    void onStarted(SspViewInterface sspViewInterface);

    void onStarted(SspFragment sspFragment);
}
