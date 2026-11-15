package com.transsion.liblan;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.transsion.liblan.interfaces.ITranLANObject;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.TranAbstractLANEvent;

public abstract class LANObject<T extends TranAbstractLANEvent> implements ITranLANObject<T> {
    private TranAbstractLANEvent.Listener<T> mEventListener;
    private Handler mHandler;
    final ITranLibLAN mITranLibLAN;
    private long mInstance;
    private int mNativeRefCount;

    public class C1EventRunnable implements Runnable {
        private final T event;
        private final TranAbstractLANEvent.Listener<T> listener;

        @Override
        public void run() {
            this.listener.onEvent(this.event);
            this.event.release();
        }

        private C1EventRunnable(TranAbstractLANEvent.Listener<T> listener, T t) {
            this.listener = listener;
            this.event = t;
        }
    }

    public LANObject(ITranLibLAN iTranLibLAN) {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mInstance = 0L;
        this.mITranLibLAN = iTranLibLAN;
    }

    private synchronized void dispatchEventFromNative(int i, long j, long j2, float f, @Nullable String str) {
        TranAbstractLANEvent.Listener<T> listener;
        Handler handler;
        if (isReleased()) {
            return;
        }
        TranAbstractLANEvent tranAbstractLANEventOnEventNative = onEventNative(i, j, j2, f, str);
        if (tranAbstractLANEventOnEventNative != null && (listener = this.mEventListener) != null && (handler = this.mHandler) != null) {
            handler.post(new C1EventRunnable(listener, tranAbstractLANEventOnEventNative));
        }
    }

    private native void nativeDetachEvents();

    public synchronized void finalize() {
        if (!isReleased()) {
            throw new AssertionError("LANObject (" + getClass().getName() + ") finalized but not natively released (" + this.mNativeRefCount + " refs)");
        }
    }

    public native long getInstance();

    @Override
    public ITranLibLAN getTranLibLAN() {
        return this.mITranLibLAN;
    }

    @Override
    public synchronized boolean isReleased() {
        return this.mNativeRefCount == 0;
    }

    public abstract T onEventNative(int i, long j, long j2, float f, String str);

    public abstract void onReleaseNativeItem();

    @Override
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
                        onReleaseNativeItem();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final synchronized boolean retain() {
        int i = this.mNativeRefCount;
        if (i <= 0) {
            return false;
        }
        this.mNativeRefCount = i + 1;
        return true;
    }

    public synchronized void setEventListener(TranAbstractLANEvent.Listener<T> listener) {
        setEventListener(listener, null);
    }

    public synchronized void setEventListener(TranAbstractLANEvent.Listener<T> listener, Handler handler) {
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

    public LANObject(ITranLANObject iTranLANObject) {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mInstance = 0L;
        this.mITranLibLAN = iTranLANObject.getTranLibLAN();
    }

    public LANObject() {
        this.mEventListener = null;
        this.mHandler = null;
        this.mNativeRefCount = 1;
        this.mInstance = 0L;
        this.mITranLibLAN = null;
    }
}
