package com.mgtv.ssp;

import com.mgtv.ssp.authbase.AccountInfo;

public interface MgSspLoginStatusReceiver {
    void result(int i, AccountInfo accountInfo);
}
