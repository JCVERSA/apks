package com.facebook.ads.redexgen.core;

import com.facebook.ads.androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.util.concurrent.CopyOnWriteArrayList;

public class C9P {
    public final int A00;
    public final C2159mL A01;
    public final CopyOnWriteArrayList<DrmSessionEventListener.EventDispatcher.ListenerAndHandler> A02;

    public C9P() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    public C9P(CopyOnWriteArrayList<DrmSessionEventListener.EventDispatcher.ListenerAndHandler> listenerAndHandlers, int i, C2159mL c2159mL) {
        this.A02 = listenerAndHandlers;
        this.A00 = i;
        this.A01 = c2159mL;
    }

    public final C9P A00(int i, C2159mL c2159mL) {
        return new C9P(this.A02, i, c2159mL);
    }
}
