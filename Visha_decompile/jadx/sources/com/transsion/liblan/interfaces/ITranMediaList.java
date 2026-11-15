package com.transsion.liblan.interfaces;

import android.os.Handler;

public interface ITranMediaList extends ITranLANObject<TranEvent> {

    public static class TranEvent extends TranAbstractLANEvent {
        public static final int END_REACHED = 516;
        public static final int ITEM_ADDED = 512;
        public static final int ITEM_DELETED = 514;
        public final int index;
        public final ITranMedia media;
        private final boolean retain;

        public TranEvent(int i, ITranMedia iTranMedia, boolean z, int i2) {
            super(i);
            if (z && (iTranMedia == null || !iTranMedia.retain())) {
                throw new IllegalStateException("invalid media reference");
            }
            this.media = iTranMedia;
            this.retain = z;
            this.index = i2;
        }

        @Override
        public void release() {
            if (this.retain) {
                this.media.release();
            }
        }
    }

    public interface TranEventListener extends TranAbstractLANEvent.Listener<TranEvent> {
    }

    int getCount();

    ITranMedia getMediaOfIndex(int i);

    boolean isBeLocked();

    void setTranEventListener(TranEventListener tranEventListener, Handler handler);
}
