package com.mgtv.ssp.authbase;

import com.mgtv.ssp.MgSspLoginStatusReceiver;

public interface MgSspAccountCallback {
    void gotoLogin(MgSspLoginStatusReceiver mgSspLoginStatusReceiver);

    void onResult(int i, String str);
}
