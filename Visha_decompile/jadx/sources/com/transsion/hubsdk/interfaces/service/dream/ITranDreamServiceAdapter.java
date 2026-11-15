package com.transsion.hubsdk.interfaces.service.dream;

import android.os.IBinder;
import com.transsion.hubsdk.aosp.dream.TranAospDreamServiceWrapperExt;

public interface ITranDreamServiceAdapter {
    void finishSelf(IBinder iBinder, boolean z);

    IBinder getTranDreamServiceWrapper(TranAospDreamServiceWrapperExt.ITranDreamService iTranDreamService);

    void startDozing(IBinder iBinder, int i, int i2);

    void stopDozing(IBinder iBinder);
}
