package com.transsion.liblan;

import androidx.annotation.Nullable;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.TranAbstractLANEvent;

public class RendererItem extends LANObject<EventTran> {
    public static final int LIBLAN_RENDERER_CAN_AUDIO = 1;
    public static final int LIBLAN_RENDERER_CAN_VIDEO = 2;
    public final String displayName;
    final int flags;
    final String iconUrl;
    public final String name;
    private final long ref;
    final String type;

    public static class EventTran extends TranAbstractLANEvent {
        public EventTran(int i) {
            super(i);
        }
    }

    public RendererItem(String str, String str2, String str3, int i, long j) {
        int iLastIndexOf = str.lastIndexOf(45);
        this.name = str;
        this.displayName = iLastIndexOf != -1 ? str.replace('-', ' ') : str;
        this.type = str2;
        this.iconUrl = str3;
        this.flags = i;
        this.ref = j;
    }

    private native void nativeReleaseItem();

    public boolean equals(Object obj) {
        return (obj instanceof RendererItem) && this.ref == ((RendererItem) obj).ref;
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
        nativeReleaseItem();
    }

    @Override
    public EventTran onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        return new EventTran(i);
    }
}
