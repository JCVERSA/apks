package com.transsion.liblan;

import android.os.Handler;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.interfaces.ITranMediaList;

public class TranMediaList extends LANObject<ITranMediaList.TranEvent> implements ITranMediaList {
    private static final String TAG = "LibLAN/TranMediaList";
    private int mCount;
    private boolean mLocked;
    private final SparseArray<ITranMedia> mMediaArray;

    public TranMediaList(ITranLibLAN iTranLibLAN) {
        super(iTranLibLAN);
        this.mCount = 0;
        this.mMediaArray = new SparseArray<>();
        this.mLocked = false;
        nativeNewFromLibLan(iTranLibLAN);
        init();
    }

    private void init() {
        lock();
        this.mCount = nativeGetCount();
        for (int i = 0; i < this.mCount; i++) {
            this.mMediaArray.put(i, new TranMedia(this, i));
        }
        unlock();
    }

    private synchronized ITranMedia insertMediaFromEvent(int i) {
        TranMedia tranMedia;
        try {
            for (int i2 = this.mCount - 1; i2 >= i; i2--) {
                SparseArray<ITranMedia> sparseArray = this.mMediaArray;
                sparseArray.put(i2 + 1, sparseArray.valueAt(i2));
            }
            this.mCount++;
            tranMedia = new TranMedia(this, i);
            this.mMediaArray.put(i, tranMedia);
        } catch (Throwable th) {
            throw th;
        }
        return tranMedia;
    }

    private synchronized void lock() {
        if (this.mLocked) {
            throw new IllegalStateException("already locked");
        }
        this.mLocked = true;
        nativeLock();
    }

    private native int nativeGetCount();

    private native void nativeLock();

    private native void nativeNewFromLibLan(ITranLibLAN iTranLibLAN);

    private native void nativeNewFromMedia(ITranMedia iTranMedia);

    private native void nativeNewFromMediaDiscoverer(TranMediaDiscoverer tranMediaDiscoverer);

    private native void nativeRelease();

    private native void nativeUnlock();

    private synchronized ITranMedia removeMediaFromEvent(int i) {
        ITranMedia iTranMedia;
        try {
            this.mCount--;
            iTranMedia = this.mMediaArray.get(i);
            if (iTranMedia != null) {
                iTranMedia.release();
            }
            while (i < this.mCount) {
                SparseArray<ITranMedia> sparseArray = this.mMediaArray;
                int i2 = i + 1;
                sparseArray.put(i, sparseArray.valueAt(i2));
                i = i2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return iTranMedia;
    }

    private synchronized void unlock() {
        if (!this.mLocked) {
            throw new IllegalStateException("not locked");
        }
        this.mLocked = false;
        nativeUnlock();
    }

    @Override
    public synchronized int getCount() {
        return this.mCount;
    }

    @Override
    public long getInstance() {
        return super.getInstance();
    }

    @Override
    public synchronized ITranMedia getMediaOfIndex(int i) {
        ITranMedia iTranMedia;
        if (i >= 0) {
            if (i < getCount()) {
                iTranMedia = this.mMediaArray.get(i);
                iTranMedia.retain();
            }
        }
        throw new IndexOutOfBoundsException();
        return iTranMedia;
    }

    @Override
    public ITranLibLAN getTranLibLAN() {
        return super.getTranLibLAN();
    }

    @Override
    public synchronized boolean isBeLocked() {
        return this.mLocked;
    }

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    @Override
    public void onReleaseNativeItem() {
        for (int i = 0; i < this.mMediaArray.size(); i++) {
            ITranMedia iTranMedia = this.mMediaArray.get(i);
            if (iTranMedia != null) {
                iTranMedia.release();
            }
        }
        nativeRelease();
    }

    @Override
    public void setTranEventListener(ITranMediaList.TranEventListener tranEventListener, Handler handler) {
        super.setEventListener(tranEventListener, handler);
    }

    @Override
    public synchronized ITranMediaList.TranEvent onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        ITranMediaList.TranEvent tranEvent;
        try {
            if (this.mLocked) {
                throw new IllegalStateException("already locked from event callback");
            }
            this.mLocked = true;
            tranEvent = null;
            if (i == 512) {
                int i2 = (int) j;
                if (i2 != -1) {
                    tranEvent = new ITranMediaList.TranEvent(i, insertMediaFromEvent(i2), true, i2);
                }
            } else if (i == 514) {
                int i3 = (int) j;
                if (i3 != -1) {
                    tranEvent = new ITranMediaList.TranEvent(i, removeMediaFromEvent(i3), false, i3);
                }
            } else if (i == 516) {
                tranEvent = new ITranMediaList.TranEvent(i, null, false, -1);
            }
            this.mLocked = false;
        } catch (Throwable th) {
            throw th;
        }
        return tranEvent;
    }

    public TranMediaList(TranMediaDiscoverer tranMediaDiscoverer) {
        super(tranMediaDiscoverer);
        this.mCount = 0;
        this.mMediaArray = new SparseArray<>();
        this.mLocked = false;
        nativeNewFromMediaDiscoverer(tranMediaDiscoverer);
        init();
    }

    public TranMediaList(ITranMedia iTranMedia) {
        super(iTranMedia);
        this.mCount = 0;
        this.mMediaArray = new SparseArray<>();
        this.mLocked = false;
        nativeNewFromMedia(iTranMedia);
        init();
    }
}
