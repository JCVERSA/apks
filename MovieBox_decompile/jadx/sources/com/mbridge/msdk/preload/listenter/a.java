package com.mbridge.msdk.preload.listenter;

import com.mbridge.msdk.out.PreloadListener;
import java.lang.ref.WeakReference;

public class a implements PreloadListener {

    WeakReference<PreloadListener> f35962a;

    private int f35963b = 0;

    private boolean f35964c = false;

    public a(PreloadListener preloadListener) {
        if (preloadListener != null) {
            this.f35962a = new WeakReference<>(preloadListener);
        }
    }

    public boolean a() {
        return this.f35964c;
    }

    @Override
    public void onPreloadFaild(String str) {
        WeakReference<PreloadListener> weakReference = this.f35962a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f35962a.get().onPreloadFaild(str);
    }

    @Override
    public void onPreloadSucceed() {
        WeakReference<PreloadListener> weakReference = this.f35962a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f35962a.get().onPreloadSucceed();
    }

    public void a(boolean z10) {
        this.f35964c = z10;
    }
}
