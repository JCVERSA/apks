package com.transsion.dragdrop;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class DragStateListener extends BroadcastReceiver {
    public static final int DRAG_STATE_ACCEPTABLE = 1;
    public static final int DRAG_STATE_APP_INNER = 4;
    public static final int DRAG_STATE_ENDED = 3;
    public static final int DRAG_STATE_UNACCEPTABLE = 2;
    public static final int DRAG_STATE_UNKNOWN = 0;

    public interface DrawShadowListener {
        void onUpdateDrawShadow(String str, int i);
    }

    public DragStateListener(Context context, DrawShadowListener drawShadowListener) {
        throw new RuntimeException("Stub!");
    }

    public static String intToStr(int i) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public void setListener(DrawShadowListener drawShadowListener) {
        throw new RuntimeException("Stub!");
    }

    public DragStateListener(Context context, boolean z) {
        throw new RuntimeException("Stub!");
    }
}
