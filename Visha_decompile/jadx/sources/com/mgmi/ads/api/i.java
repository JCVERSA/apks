package com.mgmi.ads.api;

import com.hunantv.media.widget.IVideoView;
import java.lang.ref.WeakReference;

public class i {
    public WeakReference<IVideoView> a;

    public i(IVideoView iVideoView) {
        this.a = new WeakReference<>(iVideoView);
    }

    public void a(long j) {
        WeakReference<IVideoView> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().setVideoFrameClockNotifyMs((int) j);
    }

    public int b() {
        WeakReference<IVideoView> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return 0;
        }
        return this.a.get().getRenderView().getWidth();
    }

    public int c() {
        WeakReference<IVideoView> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return 0;
        }
        return this.a.get().getRenderView().getHeight();
    }

    public void a(IVideoView.OnFrameListener onFrameListener) {
        WeakReference<IVideoView> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().setOnFrameListener(onFrameListener);
    }

    public boolean a() {
        WeakReference<IVideoView> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        return this.a.get().isRendered();
    }

    public void a(IVideoView.OnAVPlayListener onAVPlayListener) {
        WeakReference<IVideoView> weakReference = this.a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.a.get().setOnAVPlayListener(onAVPlayListener);
    }
}
