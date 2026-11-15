package com.transsion.hubsdk.aosp.gamemode;

import android.content.Context;
import android.os.Bundle;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.interfaces.gamemode.ITranTouchInjectionAdapter;

public class TranAospTouchInjection implements ITranTouchInjectionAdapter {
    public TranAospTouchInjection(Context context) {
    }

    @Override
    public void closeChannel() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method closeChannel");
    }

    @Override
    public boolean inject(int i, int i2, int i3) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method inject");
    }

    @Override
    public boolean injectViaChannel(int i, int i2, int i3, int i4) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method injectViaChannel");
    }

    @Override
    @Deprecated
    public boolean injectVieChanel(int i, int i2, int i3, int i4) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method injectVieChanel");
    }

    @Override
    public void openChannel() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method openChannel");
    }

    @Override
    public boolean inject(int i, int i2) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method inject");
    }

    @Override
    public boolean inject(int i, int i2, int i3, Bundle bundle) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method inject");
    }

    @Override
    public boolean inject(int i, int i2, int i3, int i4) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method inject");
    }

    @Override
    public boolean inject(int i, int i2, int i3, int i4, Bundle bundle) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method inject");
    }
}
