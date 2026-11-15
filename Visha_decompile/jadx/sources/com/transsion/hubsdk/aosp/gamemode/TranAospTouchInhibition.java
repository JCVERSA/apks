package com.transsion.hubsdk.aosp.gamemode;

import android.content.Context;
import android.graphics.Rect;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.interfaces.gamemode.ITranTouchInhibitionAdapter;

public class TranAospTouchInhibition implements ITranTouchInhibitionAdapter {
    public TranAospTouchInhibition(Context context) {
    }

    @Override
    public boolean acquire() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method acquire");
    }

    @Override
    public void clear() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method clear");
    }

    @Override
    public void inhibit(Rect rect, int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method inhibit");
    }

    @Override
    public void release() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method release");
    }

    @Override
    public void submit() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method submit");
    }

    @Override
    public void inhibit(Rect rect, int i, int i2) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method inhibit");
    }
}
