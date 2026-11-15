package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class SystemHandlerWrapper implements HandlerWrapper {
    private final Handler handler;

    public SystemHandlerWrapper(Handler handler) {
        this.handler = handler;
    }

    @Override
    public Looper getLooper() {
        return this.handler.getLooper();
    }

    @Override
    public Message obtainMessage(int i10) {
        return this.handler.obtainMessage(i10);
    }

    @Override
    public boolean post(Runnable runnable) {
        return this.handler.post(runnable);
    }

    @Override
    public boolean postDelayed(Runnable runnable, long j10) {
        return this.handler.postDelayed(runnable, j10);
    }

    @Override
    public void removeCallbacksAndMessages(Object obj) {
        this.handler.removeCallbacksAndMessages(obj);
    }

    @Override
    public void removeMessages(int i10) {
        this.handler.removeMessages(i10);
    }

    @Override
    public boolean sendEmptyMessage(int i10) {
        return this.handler.sendEmptyMessage(i10);
    }

    @Override
    public boolean sendEmptyMessageAtTime(int i10, long j10) {
        return this.handler.sendEmptyMessageAtTime(i10, j10);
    }

    @Override
    public Message obtainMessage(int i10, Object obj) {
        return this.handler.obtainMessage(i10, obj);
    }

    @Override
    public Message obtainMessage(int i10, int i11, int i12) {
        return this.handler.obtainMessage(i10, i11, i12);
    }

    @Override
    public Message obtainMessage(int i10, int i11, int i12, Object obj) {
        return this.handler.obtainMessage(i10, i11, i12, obj);
    }
}
