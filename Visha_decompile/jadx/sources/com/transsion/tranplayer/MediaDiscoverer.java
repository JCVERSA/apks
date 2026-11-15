package com.transsion.tranplayer;

import androidx.annotation.Nullable;

public class MediaDiscoverer extends VLCObject<Event> {
    private static final String TAG = "LibVLC/MediaDiscoverer";
    private MediaList mMediaList;

    public static class Description {
        public final int category;
        public final String longName;
        public final String name;

        public static class Category {
            public static final int Devices = 0;
            public static final int Lan = 1;
            public static final int LocalDirs = 3;
            public static final int Podcasts = 2;
        }

        private Description(String str, String str2, int i) {
            this.name = str;
            this.longName = str2;
            this.category = i;
        }
    }

    public static class Event extends VLCEvent {
        public static final int Ended = 1281;
        public static final int Started = 1280;

        public Event(int i) {
            super(i);
        }
    }

    public interface EventListener extends VLCEvent.Listener<Event> {
    }

    public MediaDiscoverer(LibVLC libVLC, String str) {
        super(libVLC);
        this.mMediaList = null;
        nativeNew(libVLC, str);
    }

    private static Description createDescriptionFromNative(String str, String str2, int i) {
        return new Description(str, str2, i);
    }

    @Nullable
    public static Description[] list(LibVLC libVLC, int i) {
        return nativeList(libVLC, i);
    }

    private static native Description[] nativeList(LibVLC libVLC, int i);

    private native void nativeNew(LibVLC libVLC, String str);

    private native void nativeRelease();

    private native boolean nativeStart();

    private native void nativeStop();

    public MediaList getMediaList() {
        MediaList mediaList;
        synchronized (this) {
            try {
                MediaList mediaList2 = this.mMediaList;
                if (mediaList2 != null) {
                    mediaList2.retain();
                    return this.mMediaList;
                }
                MediaList mediaList3 = new MediaList(this);
                synchronized (this) {
                    this.mMediaList = mediaList3;
                    mediaList3.retain();
                    mediaList = this.mMediaList;
                }
                return mediaList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    @Override
    public void onReleaseNative() {
        MediaList mediaList = this.mMediaList;
        if (mediaList != null) {
            mediaList.release();
        }
        nativeRelease();
    }

    public void setEventListener(EventListener eventListener) {
        super.setEventListener((VLCEvent.Listener) eventListener);
    }

    @Override
    public void setPinPVideoMode(boolean z) {
        super.setPinPVideoMode(z);
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
    public Event onEventNative(int i, long j, long j2, long j3, long j4, float f, String str) {
        if (i == 1280 || i == 1281) {
            return new Event(i);
        }
        return null;
    }
}
