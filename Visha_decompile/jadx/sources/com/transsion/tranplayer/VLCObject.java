package com.transsion.tranplayer;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.transsion.tranplayer.VLCEvent;
import java.lang.ref.WeakReference;

public abstract class VLCObject<T extends VLCEvent> {
    private VLCEvent.Listener<T> mEventListener;
    private Handler mHandler;
    private long mInstance;
    final LibVLC mLibVLC;
    private int mNativeRefCount;
    private boolean mPiPMode;

    public VLCObject(LibVLC libVLC) {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mPiPMode = false;
        this.mInstance = 0L;
        this.mLibVLC = libVLC;
    }

    private synchronized void dispatchEventFromNative(int i, long j, long j2, long j3, long j4, float f, String str) {
        VLCEvent.Listener<T> listener;
        Handler handler;
        VLCEvent.Listener<T> listener2;
        try {
            if (isReleased()) {
                return;
            }
            VLCEvent vLCEventOnEventNative = onEventNative(i, j, j2, j3, j4, f, str);
            if (this.mPiPMode && ((i == 278 && j == 1 && j2 == 0) || i == 260 || i == 261 || i == 262)) {
                Log.d(com.transsion.liblan.TranMediaPlayer.TAG, "dispatchEventFromNative eventType:" + i + " rg1:" + j + " arg2: " + j2 + " arg3: " + j3 + " arg4: " + j4 + " argf1: " + f + " argstr: " + str);
                if (vLCEventOnEventNative != null && (listener2 = this.mEventListener) != null && this.mHandler != null) {
                    listener2.onEvent(vLCEventOnEventNative);
                }
            } else if (vLCEventOnEventNative != null && (listener = this.mEventListener) != null && (handler = this.mHandler) != null) {
                handler.post(new Runnable(listener, vLCEventOnEventNative) {
                    private final T event;
                    private final VLCEvent.Listener<T> listener;

                    {
                        this.listener = listener;
                        this.event = vLCEventOnEventNative;
                    }

                    @Override
                    public void run() {
                        this.listener.onEvent(this.event);
                        this.event.release();
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private static void dispatchEventFromWeakNative(Object obj, int i, long j, long j2, long j3, long j4, float f, String str) {
        VLCObject vLCObject = (VLCObject) ((WeakReference) obj).get();
        if (vLCObject != null) {
            vLCObject.dispatchEventFromNative(i, j, j2, j3, j4, f, str);
        }
    }

    private Object getWeakReference() {
        return new WeakReference(this);
    }

    private native void nativeDetachEvents();

    public synchronized void finalize() {
        if (!isReleased()) {
            throw new AssertionError("VLCObject (" + getClass().getName() + ") finalized but not natively released (" + this.mNativeRefCount + " refs)");
        }
    }

    public synchronized boolean isReleased() {
        return this.mNativeRefCount == 0;
    }

    public abstract T onEventNative(int i, long j, long j2, long j3, long j4, float f, String str);

    public abstract void onReleaseNative();

    public void release() {
        int i;
        synchronized (this) {
            try {
                int i2 = this.mNativeRefCount;
                if (i2 == 0) {
                    return;
                }
                if (i2 > 0) {
                    i = i2 - 1;
                    this.mNativeRefCount = i;
                } else {
                    i = -1;
                }
                if (i == 0) {
                    setEventListener(null);
                }
                if (i == 0) {
                    nativeDetachEvents();
                    synchronized (this) {
                        onReleaseNative();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized boolean retain() {
        int i = this.mNativeRefCount;
        if (i <= 0) {
            return false;
        }
        this.mNativeRefCount = i + 1;
        return true;
    }

    public synchronized void setEventListener(VLCEvent.Listener<T> listener) {
        setEventListener(listener, null);
    }

    public void setPinPVideoMode(boolean z) {
        this.mPiPMode = z;
    }

    public synchronized void setEventListener(VLCEvent.Listener<T> listener, Handler handler) {
        try {
            Handler handler2 = this.mHandler;
            if (handler2 != null) {
                handler2.removeCallbacksAndMessages(null);
            }
            this.mEventListener = listener;
            if (listener == null) {
                this.mHandler = null;
            } else if (this.mHandler == null) {
                if (handler == null) {
                    handler = new Handler(Looper.getMainLooper());
                }
                this.mHandler = handler;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public VLCObject(VLCObject vLCObject) {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mPiPMode = false;
        this.mInstance = 0L;
        this.mLibVLC = vLCObject.mLibVLC;
    }

    public VLCObject() {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mPiPMode = false;
        this.mInstance = 0L;
        this.mLibVLC = null;
    }
}
