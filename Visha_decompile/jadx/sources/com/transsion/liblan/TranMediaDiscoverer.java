package com.transsion.liblan;

import androidx.annotation.Nullable;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.TranAbstractLANEvent;

public class TranMediaDiscoverer extends LANObject<EventTran> {
    private static final String TAG = "LibLAN/MediaDiscoverer";
    private TranMediaList mMediaList;

    public static class Description {
        public final int category;
        public final String longName;
        public final String name;

        public static class Category {
            public static final int DEVICES = 0;
            public static final int LAN = 1;
            public static final int LOCAL_DIRS = 3;
            public static final int PODCASTS = 2;
        }

        private Description(String str, String str2, int i) {
            this.name = str;
            this.longName = str2;
            this.category = i;
        }
    }

    public interface EventListener extends TranAbstractLANEvent.Listener<EventTran> {
    }

    public static class EventTran extends TranAbstractLANEvent {
        public static final int ENDED = 1281;
        public static final int STARTED = 1280;

        public EventTran(int i) {
            super(i);
        }
    }

    public TranMediaDiscoverer(ITranLibLAN iTranLibLAN, String str) {
        super(iTranLibLAN);
        this.mMediaList = null;
        nativeNew(iTranLibLAN, str);
    }

    private static Description createDescriptionFromNative(String str, String str2, int i) {
        return new Description(str, str2, i);
    }

    @Nullable
    public static Description[] list(ITranLibLAN iTranLibLAN, int i) {
        return nativeList(iTranLibLAN, i);
    }

    private static native Description[] nativeList(ITranLibLAN iTranLibLAN, int i);

    private native void nativeNew(ITranLibLAN iTranLibLAN, String str);

    private native void nativeRelease();

    private native boolean nativeStart();

    private native void nativeStop();

    @Override
    public long getInstance() {
        return super.getInstance();
    }

    public TranMediaList getMediaList() {
        TranMediaList tranMediaList;
        synchronized (this) {
            try {
                TranMediaList tranMediaList2 = this.mMediaList;
                if (tranMediaList2 != null) {
                    tranMediaList2.retain();
                    return this.mMediaList;
                }
                TranMediaList tranMediaList3 = new TranMediaList(this);
                synchronized (this) {
                    this.mMediaList = tranMediaList3;
                    tranMediaList3.retain();
                    tranMediaList = this.mMediaList;
                }
                return tranMediaList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public ITranLibLAN getTranLibLAN() {
        return super.getTranLibLAN();
    }

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    @Override
    public void onReleaseNativeItem() {
        TranMediaList tranMediaList = this.mMediaList;
        if (tranMediaList != null) {
            tranMediaList.release();
        }
        nativeRelease();
    }

    public void setEventListener(EventListener eventListener) {
        super.setEventListener((TranAbstractLANEvent.Listener) eventListener);
    }

    public boolean start() {
        if (isReleased()) {
            throw new IllegalStateException("MediaDiscoverer is released");
        }
        return nativeStart();
    }

    public void stop() {
        if (isReleased()) {
            throw new IllegalStateException("MediaDiscoverer is released");
        }
        nativeStop();
    }

    @Override
    public EventTran onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        if (i == 1280 || i == 1281) {
            return new EventTran(i);
        }
        return null;
    }
}
