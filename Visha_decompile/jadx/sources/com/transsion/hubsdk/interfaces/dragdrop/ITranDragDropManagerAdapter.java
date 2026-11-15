package com.transsion.hubsdk.interfaces.dragdrop;

import android.content.Context;
import com.transsion.hubsdk.api.dragdrop.TranDragDropManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranDragDropManagerAdapter {
    Object createDragStateListener(Context context, TranDragDropManager.DrawShadowCallback drawShadowCallback) throws TranThubIncompatibleException;

    Object createDragStateListener(Context context, boolean z) throws TranThubIncompatibleException;

    float[] getDragDropLocation() throws TranThubIncompatibleException;

    String getDragDropPkg() throws TranThubIncompatibleException;

    int getDragDropStatus(Context context) throws TranThubIncompatibleException;

    boolean isDragDropStatus(Context context) throws TranThubIncompatibleException;

    boolean isSupportedDragDrop() throws TranThubIncompatibleException;

    boolean isSupportedUpdateClipData(int i) throws TranThubIncompatibleException;

    void setDragDropStatus(Context context, int i) throws TranThubIncompatibleException;

    void setDragStateListener(Object obj, TranDragDropManager.DrawShadowCallback drawShadowCallback) throws TranThubIncompatibleException;
}
