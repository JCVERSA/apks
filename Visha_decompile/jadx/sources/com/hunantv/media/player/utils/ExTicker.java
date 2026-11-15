package com.hunantv.media.player.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.hunantv.media.player.pragma.DebugLog;
import java.lang.ref.WeakReference;

public class ExTicker {
    private static final int MIN_TICKTIME = 10;
    private static final int MSG_UPDATE_TICK = 65536;
    private Handler handler;
    private volatile Status mCurState;
    private String mHostLogTag;
    private Object mLocker;
    private OnExTickListener mOnExTickListener;
    private onTickListener mOnTickListener;
    private int mSubTickCount;
    private int mTickCount;
    private int mTickTime;
    private String mTypeStr;

    public static class InternalHandler extends Handler {
        WeakReference<ExTicker> wrObj;

        public InternalHandler(Looper looper, ExTicker exTicker) {
            super(looper);
            this.wrObj = new WeakReference<>(exTicker);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<ExTicker> weakReference = this.wrObj;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            ExTicker exTicker = this.wrObj.get();
            if (message.what == 65536 && exTicker != null && exTicker.mCurState == Status.STATE_START) {
                ExTicker.access$108(exTicker);
                ExTicker.access$208(exTicker);
                DebugLog.d(exTicker.getLogTag(), "ExTicker count:" + exTicker.mTickCount + "_" + exTicker.mSubTickCount);
                exTicker.handler.sendEmptyMessageDelayed(65536, (long) exTicker.mTickTime);
                if (exTicker.mOnTickListener != null) {
                    exTicker.mOnTickListener.onTick(exTicker.mTickCount);
                }
                if (exTicker.mOnExTickListener != null) {
                    exTicker.mOnExTickListener.onTick(exTicker.mTickCount, exTicker.mSubTickCount);
                }
            }
        }

        public InternalHandler(ExTicker exTicker) {
            this.wrObj = new WeakReference<>(exTicker);
        }
    }

    public interface OnExTickListener {
        void onPlayOrPause(boolean z);

        void onTick(int i, int i2);
    }

    public enum Status {
        STATE_START,
        STATE_PAUSE,
        STATE_STOP
    }

    public interface onTickListener {
        void onTick(int i);
    }

    public ExTicker(int i) {
        this.mTickTime = 10;
        this.handler = new InternalHandler(this);
        this.mCurState = Status.STATE_STOP;
        this.mLocker = new Object();
        this.mTickTime = i;
        if (i < 10) {
            this.mTickTime = 10;
        }
    }

    public static int access$108(ExTicker exTicker) {
        int i = exTicker.mTickCount;
        exTicker.mTickCount = i + 1;
        return i;
    }

    public static int access$208(ExTicker exTicker) {
        int i = exTicker.mSubTickCount;
        exTicker.mSubTickCount = i + 1;
        return i;
    }

    private void callbackExTickPlayOrPause(boolean z) {
        OnExTickListener onExTickListener = this.mOnExTickListener;
        if (onExTickListener != null) {
            onExTickListener.onPlayOrPause(z);
        }
    }

    public String getLogTag() {
        return "[" + this.mHostLogTag + "-" + this.mTypeStr + "-exTicker]";
    }

    public int getTickCount() {
        return this.mTickCount;
    }

    public int getTickTime() {
        return this.mTickTime;
    }

    public boolean isPaused() {
        return this.mCurState == Status.STATE_PAUSE;
    }

    public boolean isTicking() {
        return this.mCurState == Status.STATE_START;
    }

    public void pause() {
        synchronized (this.mLocker) {
            try {
                if (this.mCurState != Status.STATE_START) {
                    return;
                }
                this.mSubTickCount = 0;
                DebugLog.i(getLogTag(), "ExTicker pause.status:" + this.mCurState);
                this.mCurState = Status.STATE_PAUSE;
                callbackExTickPlayOrPause(false);
                this.handler.removeMessages(65536);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void resume() {
        synchronized (this.mLocker) {
            try {
                if (this.mCurState != Status.STATE_PAUSE) {
                    return;
                }
                DebugLog.i(getLogTag(), "ExTicker resume.status:" + this.mCurState);
                this.mCurState = Status.STATE_START;
                callbackExTickPlayOrPause(true);
                this.handler.removeMessages(65536);
                this.handler.sendEmptyMessage(65536);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void seekto(int i) {
        this.mTickCount = i;
    }

    public void setCallback(onTickListener onticklistener) {
        this.mOnTickListener = onticklistener;
    }

    public void setExCallback(OnExTickListener onExTickListener) {
        this.mOnExTickListener = onExTickListener;
    }

    public ExTicker setHostLogTag(String str) {
        this.mHostLogTag = str;
        return this;
    }

    public ExTicker setTypeStr(String str) {
        this.mTypeStr = str;
        return this;
    }

    public void start() {
        stop();
        synchronized (this.mLocker) {
            this.mTickCount = 0;
            this.mSubTickCount = 0;
            DebugLog.i(getLogTag(), "ExTicker start.status:" + this.mCurState);
            this.mCurState = Status.STATE_START;
            callbackExTickPlayOrPause(true);
            this.handler.sendEmptyMessage(65536);
        }
    }

    public void stop() {
        synchronized (this.mLocker) {
            try {
                Status status = this.mCurState;
                Status status2 = Status.STATE_STOP;
                if (status == status2) {
                    return;
                }
                DebugLog.d(getLogTag(), "ExTicker stop");
                this.mCurState = status2;
                callbackExTickPlayOrPause(false);
                this.handler.removeMessages(65536);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void updateTickTime(int i) {
        DebugLog.d(getLogTag(), "updateTickTime tickTime:" + i);
        this.mTickTime = i;
    }

    public ExTicker(Looper looper, int i) {
        this(i);
        this.handler = new InternalHandler(looper, this);
    }
}
