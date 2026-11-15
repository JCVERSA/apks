package com.transsion.liblan;

import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.TranAbstractLANEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TranRendererDiscoverer extends LANObject<EventTran> {
    private static final String TAG = "LibLAN/RendererDiscoverer";
    private final LongSparseArray<RendererItem> index;
    final List<RendererItem> mRenderers;

    public static class Description {
        final String longName;
        public final String name;

        private Description(String str, String str2) {
            this.name = str;
            this.longName = str2;
        }
    }

    public interface EventListener extends TranAbstractLANEvent.Listener<EventTran> {
    }

    public static class EventTran extends TranAbstractLANEvent {
        public static final int ITEM_ADDED = 1282;
        public static final int ITEM_DELETED = 1283;
        private final RendererItem item;

        public EventTran(int i, long j, RendererItem rendererItem) {
            super(i, j);
            this.item = rendererItem;
            rendererItem.retain();
        }

        public RendererItem getItem() {
            return this.item;
        }

        @Override
        public void release() {
            this.item.release();
            super.release();
        }
    }

    public TranRendererDiscoverer(ITranLibLAN iTranLibLAN, String str) {
        super(iTranLibLAN);
        this.mRenderers = new ArrayList();
        this.index = new LongSparseArray<>();
        nativeNew(iTranLibLAN, str);
    }

    private static Description createDescriptionFromNative(String str, String str2) {
        return new Description(str, str2);
    }

    private static RendererItem createItemFromNative(String str, String str2, String str3, int i, long j) {
        return new RendererItem(str, str2, str3, i, j);
    }

    private synchronized RendererItem insertItemFromEvent(long j) {
        RendererItem rendererItemNativeNewItem;
        rendererItemNativeNewItem = nativeNewItem(j);
        this.index.put(j, rendererItemNativeNewItem);
        this.mRenderers.add(rendererItemNativeNewItem);
        return rendererItemNativeNewItem;
    }

    public static Description[] list(ITranLibLAN iTranLibLAN) {
        return nativeList(iTranLibLAN);
    }

    private static native Description[] nativeList(ITranLibLAN iTranLibLAN);

    private native void nativeNew(ITranLibLAN iTranLibLAN, String str);

    private native RendererItem nativeNewItem(long j);

    private native void nativeRelease();

    private native boolean nativeStart();

    private native void nativeStop();

    private synchronized RendererItem removeItemFromEvent(long j) {
        RendererItem rendererItem;
        rendererItem = this.index.get(j);
        if (rendererItem != null) {
            this.index.remove(j);
            this.mRenderers.remove(rendererItem);
            rendererItem.release();
        }
        return rendererItem;
    }

    @Override
    public long getInstance() {
        return super.getInstance();
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
        Iterator<RendererItem> it = this.mRenderers.iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.mRenderers.clear();
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
        setEventListener((EventListener) null);
        nativeStop();
        release();
    }

    @Override
    public EventTran onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        if (i == 1282) {
            return new EventTran(i, j, insertItemFromEvent(j));
        }
        if (i != 1283) {
            return null;
        }
        return new EventTran(i, j, removeItemFromEvent(j));
    }
}
