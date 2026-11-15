package com.transsion.hubsdk.aosp.dragdrop;

import android.content.Context;
import com.transsion.hubsdk.api.dragdrop.TranDragDropManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.interfaces.dragdrop.ITranDragDropManagerAdapter;

public class TranAospDragDropManager implements ITranDragDropManagerAdapter {
    public TranAospDragDropManager(Context context) {
    }

    @Override
    public Object createDragStateListener(Context context, TranDragDropManager.DrawShadowCallback drawShadowCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method createDragStateListener");
    }

    @Override
    public float[] getDragDropLocation() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method getDragDropLocation");
    }

    @Override
    public String getDragDropPkg() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method getDragDropPkg");
    }

    @Override
    public int getDragDropStatus(Context context) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method getDragDropStatus");
    }

    @Override
    public boolean isDragDropStatus(Context context) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method isDragDropStatus");
    }

    @Override
    public boolean isSupportedDragDrop() throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method isSupportedDragDrop");
    }

    @Override
    public boolean isSupportedUpdateClipData(int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method isSupportedUpdateClipData");
    }

    @Override
    public void setDragDropStatus(Context context, int i) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method setDragDropStatus");
    }

    @Override
    public void setDragStateListener(Object obj, TranDragDropManager.DrawShadowCallback drawShadowCallback) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method setDragStateListener");
    }

    @Override
    public Object createDragStateListener(Context context, boolean z) throws TranThubIncompatibleException {
        throw new TranThubIncompatibleException("can not find method createDragStateListener");
    }
}
