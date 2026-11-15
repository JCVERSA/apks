package com.transsion.dragdrop;

import android.content.Context;

public class DragDropManager {
    public static final String ACTION_DRAG_STATE = "tran.intent.action.DRAG_STATE";
    public static final int DRAG_FLAG_UPDATE = 268435456;
    public static final String TAG = "os.dragdrop";
    public static final int VALUE_DRAGDROP_OFF = 0;
    public static final int VALUE_DRAGDROP_ON = 1;

    private DragDropManager() {
        throw new RuntimeException("Stub!");
    }

    public static int getDragDropStatus(Context context) {
        throw new RuntimeException("Stub!");
    }

    public static DragDropManager instance() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isDragDropStatus(Context context) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isSupportedDragDrop() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isSupportedUpdateClipData(int i) {
        throw new RuntimeException("Stub!");
    }

    public float[] getDragDropLocation() {
        throw new RuntimeException("Stub!");
    }

    public String getDragDropPkg() {
        throw new RuntimeException("Stub!");
    }
}
