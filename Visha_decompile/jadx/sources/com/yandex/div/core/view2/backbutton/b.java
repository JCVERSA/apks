package com.yandex.div.core.view2.backbutton;

import android.view.KeyEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import defpackage.y45;

public final class b {
    public final View a;
    public a b;

    public interface a {
        boolean a();
    }

    public b(View view) {
        y45.j(view, "mOwnerView");
        this.a = view;
    }

    public final boolean a(int i, KeyEvent keyEvent) {
        y45.j(keyEvent, NotificationCompat.CATEGORY_EVENT);
        if (this.b == null || i != 4) {
            return false;
        }
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            KeyEvent.DispatcherState keyDispatcherState = this.a.getKeyDispatcherState();
            if (keyDispatcherState != null) {
                keyDispatcherState.startTracking(keyEvent, this);
            }
            return true;
        }
        if (keyEvent.getAction() != 1) {
            return false;
        }
        KeyEvent.DispatcherState keyDispatcherState2 = this.a.getKeyDispatcherState();
        if (keyDispatcherState2 != null) {
            keyDispatcherState2.handleUpEvent(keyEvent);
        }
        if (!keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        a aVar = this.b;
        y45.g(aVar);
        return aVar.a();
    }

    public final void b() {
        d();
    }

    public final void c(boolean z) {
        if (z) {
            d();
        }
    }

    public final void d() {
        View rootView;
        if (this.b == null || !this.a.hasWindowFocus()) {
            return;
        }
        View view = this.a;
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        if (view.isShown()) {
            view.requestFocus();
        } else {
            if (!view.hasFocus() || (rootView = view.getRootView()) == null) {
                return;
            }
            rootView.requestFocus(33);
        }
    }

    public final void setOnBackClickListener(a aVar) {
        this.b = aVar;
        d();
    }
}
