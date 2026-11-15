package defpackage;

import android.hardware.display.DisplayManager;
import android.view.Display;

public final class g7e implements DisplayManager.DisplayListener {
    public final DisplayManager a;
    public final i7e b;

    public g7e(i7e i7eVar, DisplayManager displayManager) {
        this.b = i7eVar;
        this.a = displayManager;
    }

    public final void a() {
        this.a.registerDisplayListener(this, kfh.T(null));
        i7e.b(this.b, c());
    }

    public final void b() {
        this.a.unregisterDisplayListener(this);
    }

    public final Display c() {
        return this.a.getDisplay(0);
    }

    @Override
    public final void onDisplayAdded(int i) {
    }

    @Override
    public final void onDisplayChanged(int i) {
        if (i == 0) {
            i7e.b(this.b, c());
        }
    }

    @Override
    public final void onDisplayRemoved(int i) {
    }
}
