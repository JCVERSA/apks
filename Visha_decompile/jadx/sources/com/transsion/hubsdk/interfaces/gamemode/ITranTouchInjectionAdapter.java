package com.transsion.hubsdk.interfaces.gamemode;

import android.os.Bundle;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranTouchInjectionAdapter {
    void closeChannel() throws TranThubIncompatibleException;

    boolean inject(int i, int i2) throws TranThubIncompatibleException;

    boolean inject(int i, int i2, int i3) throws TranThubIncompatibleException;

    boolean inject(int i, int i2, int i3, int i4) throws TranThubIncompatibleException;

    boolean inject(int i, int i2, int i3, int i4, Bundle bundle) throws TranThubIncompatibleException;

    boolean inject(int i, int i2, int i3, Bundle bundle) throws TranThubIncompatibleException;

    boolean injectViaChannel(int i, int i2, int i3, int i4) throws TranThubIncompatibleException;

    @Deprecated
    boolean injectVieChanel(int i, int i2, int i3, int i4) throws TranThubIncompatibleException;

    void openChannel() throws TranThubIncompatibleException;
}
