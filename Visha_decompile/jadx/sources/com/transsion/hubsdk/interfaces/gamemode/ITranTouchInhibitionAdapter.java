package com.transsion.hubsdk.interfaces.gamemode;

import android.graphics.Rect;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranTouchInhibitionAdapter {
    boolean acquire() throws TranThubIncompatibleException;

    void clear() throws TranThubIncompatibleException;

    void inhibit(Rect rect, int i) throws TranThubIncompatibleException;

    void inhibit(Rect rect, int i, int i2) throws TranThubIncompatibleException;

    void release() throws TranThubIncompatibleException;

    void submit() throws TranThubIncompatibleException;
}
