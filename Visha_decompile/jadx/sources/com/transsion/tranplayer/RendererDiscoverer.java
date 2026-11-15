package com.transsion.tranplayer;

import androidx.collection.LongSparseArray;

public class RendererDiscoverer extends VLCObject<Event> {
    private static final String TAG = "LibVLC/RendererDiscoverer";
    private final LongSparseArray<RendererItem> index;

    public static class Description {
        final String longName;
        public final String name;

        private Description(String str, String str2) {
            this.name = str;
            this.longName = str2;
        }
    }

    public static class Event extends VLCEvent {
        public static final int ItemAdded = 1282;
        public static final int ItemDeleted = 1283;
        private RendererItem item;

        public Event(int i, long j, RendererItem rendererItem) {
            super(i, j);
            this.item = rendererItem;
        }

        public RendererItem getItem() {
            return this.item;
        }
    }

    public interface EventListener extends VLCEvent.Listener<Event> {
    }

    public RendererDiscoverer(LibVLC libVLC, String str) {
        super(libVLC);
        this.index = new LongSparseArray<>();
        nativeNew(libVLC, str);
    }

    private static Description createDescriptionFromNative(String str, String str2) {
        return new Description(str, str2);
    }

    private static RendererItem createItemFromNative(String str, String str2, String str3, int i, long j) {
        return new RendererItem(str, str2, str3, i, j);
    }

    private synchronized RendererItem insertItemFromEvent(long j) {
        RendererItem rendererItem;
        rendererItem = new RendererItem(this, j);
        this.index.put(j, rendererItem);
        return rendererItem;
    }

    public static Description[] list(LibVLC libVLC) {
        return nativeList(libVLC);
    }

    private static native Description[] nativeList(LibVLC libVLC);

    private native void nativeNew(LibVLC libVLC, String str);

    private native void nativeRelease();

    private native boolean nativeStart();

    private native void nativeStop();

    private synchronized RendererItem removeItemFromEvent(long j) {
        RendererItem rendererItem;
        rendererItem = this.index.get(j);
        if (rendererItem != null) {
            this.index.remove(j);
        }
        return rendererItem;
    }

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    @Override
    public void onReleaseNative() {
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
        setEventListener((EventListener) null);
        nativeStop();
    }

    @Override
    public Event onEventNative(int i, long j, long j2, long j3, long j4, float f, String str) {
        if (i == 1282) {
            return new Event(i, j, insertItemFromEvent(j));
        }
        if (i != 1283) {
            return null;
        }
        return new Event(i, j, removeItemFromEvent(j));
    }
}
