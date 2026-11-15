package com.transsion.hubsdk.core.dragdrop;

import android.content.Context;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.dragdrop.TranDragDropManager;
import com.transsion.hubsdk.interfaces.dragdrop.ITranDragDropManagerAdapter;

public class TranThubDragDropManager implements ITranDragDropManagerAdapter {
    private static final String TAG = "TranThubDragDropManager";
    private final Context mContext;

    public TranThubDragDropManager(Context context) {
        this.mContext = context != null ? context.getApplicationContext() : null;
    }

    private TranDragDropManager.DrawShadowCallback toCommonCallback(final com.transsion.hubsdk.api.dragdrop.TranDragDropManager.DrawShadowCallback drawShadowCallback) {
        if (drawShadowCallback == null) {
            return null;
        }
        return new TranDragDropManager.DrawShadowCallback() {
            public void onUpdateDrawShadow(String str, int i) {
                drawShadowCallback.onUpdateDrawShadow(str, i);
            }
        };
    }

    @Override
    public Object createDragStateListener(Context context, com.transsion.hubsdk.api.dragdrop.TranDragDropManager.DrawShadowCallback drawShadowCallback) {
        TranSdkLog.d(TAG, "createDragStateListener");
        return TranDragDropManager.createDragStateListener(context, toCommonCallback(drawShadowCallback));
    }

    @Override
    public float[] getDragDropLocation() {
        TranSdkLog.d(TAG, "getDragDropLocation");
        return TranDragDropManager.getDragDropLocation();
    }

    @Override
    public String getDragDropPkg() {
        TranSdkLog.d(TAG, "getDragDropPkg");
        return TranDragDropManager.getDragDropPkg();
    }

    @Override
    public int getDragDropStatus(Context context) {
        TranSdkLog.d(TAG, "getDragDropStatus");
        if (context == null) {
            context = this.mContext;
        }
        if (context != null) {
            return TranDragDropManager.getDragDropStatus(context);
        }
        return 0;
    }

    @Override
    public boolean isDragDropStatus(Context context) {
        TranSdkLog.d(TAG, "isDragDropStatus");
        if (context == null) {
            context = this.mContext;
        }
        return context != null && TranDragDropManager.isDragDropStatus(context);
    }

    @Override
    public boolean isSupportedDragDrop() {
        TranSdkLog.d(TAG, "isSupportedDragDrop");
        return TranDragDropManager.isSupportedDragDrop();
    }

    @Override
    public boolean isSupportedUpdateClipData(int i) {
        TranSdkLog.d(TAG, "isSupportedUpdateClipData flags=" + i);
        return TranDragDropManager.isSupportedUpdateClipData(i);
    }

    @Override
    public void setDragDropStatus(Context context, int i) {
        TranSdkLog.d(TAG, "setDragDropStatus value=" + i);
        if (context == null) {
            context = this.mContext;
        }
        if (context != null) {
            TranDragDropManager.setDragDropStatus(context, i);
        }
    }

    @Override
    public void setDragStateListener(Object obj, com.transsion.hubsdk.api.dragdrop.TranDragDropManager.DrawShadowCallback drawShadowCallback) {
        TranSdkLog.d(TAG, "setDragStateListener");
        TranDragDropManager.setDragStateListener(obj, toCommonCallback(drawShadowCallback));
    }

    @Override
    public Object createDragStateListener(Context context, boolean z) {
        TranSdkLog.d(TAG, "createDragStateListener isListenerAppInner=" + z);
        return TranDragDropManager.createDragStateListener(context, z);
    }
}
