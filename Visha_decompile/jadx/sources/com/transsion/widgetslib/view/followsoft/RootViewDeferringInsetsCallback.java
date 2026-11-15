package com.transsion.widgetslib.view.followsoft;

import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import defpackage.olb;
import defpackage.ubc;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RootViewDeferringInsetsCallback extends WindowInsetsAnimationCompat.Callback implements OnApplyWindowInsetsListener {
    public int a;
    public int b;
    public boolean c;
    public boolean d;
    public WeakReference e;
    public List f;
    public List g;
    public View h;
    public WindowInsetsCompat i;
    public boolean j;

    public interface a {
    }

    public RootViewDeferringInsetsCallback(boolean z, int i, int i2, boolean z2) {
        super(1);
        this.c = false;
        this.d = false;
        this.f = new ArrayList();
        this.g = new ArrayList();
        this.h = null;
        this.i = null;
        this.j = false;
        this.c = z;
        this.a = i;
        this.b = i2;
        this.d = z2;
        if ((i & i2) != 0) {
            throw new IllegalArgumentException("persistentInsetTypes and deferredInsetTypes can not contain any of  same WindowInsetsCompat.Type values");
        }
    }

    public static int c(int i) {
        return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
    }

    public void a(View view) {
        if (view == null || this.g.contains(view)) {
            return;
        }
        this.g.add(view);
    }

    public void addOnInsetsChangedListener(a aVar) {
        if (aVar == null || this.f.contains(aVar)) {
            return;
        }
        this.f.add(aVar);
    }

    public final void b(WindowInsetsCompat windowInsetsCompat) {
        for (View view : this.g) {
            if (view != null) {
                ViewCompat.dispatchApplyWindowInsets(view, windowInsetsCompat);
            }
        }
    }

    public final OnApplyWindowInsetsListener d() {
        WeakReference weakReference = this.e;
        if (weakReference == null) {
            return null;
        }
        return (OnApplyWindowInsetsListener) weakReference.get();
    }

    public final void e(WindowInsetsCompat windowInsetsCompat) {
        if (this.f.isEmpty()) {
            return;
        }
        windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime());
        windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        windowInsetsCompat.isVisible(WindowInsetsCompat.Type.ime());
        Iterator it = this.f.iterator();
        if (it.hasNext()) {
            ubc.a(it.next());
            throw null;
        }
    }

    @Override
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.h = view;
        this.i = windowInsetsCompat;
        Insets insets = windowInsetsCompat.getInsets(this.j ? this.a : this.a | this.b);
        if (this.c) {
            if (olb.Z(view.getContext())) {
                if (insets.bottom <= c(96)) {
                    view.setPadding(insets.left, insets.top, insets.right, 0);
                }
            } else if (insets.bottom <= c(48)) {
                view.setPadding(insets.left, insets.top, insets.right, 0);
            }
        } else if (olb.Z(view.getContext())) {
            if (insets.bottom <= c(96)) {
                if (this.d) {
                    view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
                } else {
                    view.setPadding(insets.left, insets.top, insets.right, 0);
                }
            }
        } else if (insets.bottom <= c(48)) {
            if (this.d) {
                view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
            } else {
                view.setPadding(insets.left, insets.top, insets.right, 0);
            }
        }
        e(windowInsetsCompat);
        b(windowInsetsCompat);
        OnApplyWindowInsetsListener onApplyWindowInsetsListenerD = d();
        if (onApplyWindowInsetsListenerD != null) {
            onApplyWindowInsetsListenerD.onApplyWindowInsets(view, windowInsetsCompat);
        }
        return WindowInsetsCompat.CONSUMED;
    }

    @Override
    public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        View view;
        if (!this.j || (windowInsetsAnimationCompat.getTypeMask() & this.b) == 0) {
            return;
        }
        this.j = false;
        WindowInsetsCompat windowInsetsCompat = this.i;
        if (windowInsetsCompat == null || (view = this.h) == null) {
            return;
        }
        ViewCompat.dispatchApplyWindowInsets(view, windowInsetsCompat);
    }

    @Override
    public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        if ((windowInsetsAnimationCompat.getTypeMask() & this.b) != 0) {
            this.j = true;
        }
    }

    @Override
    public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
        return windowInsetsCompat;
    }

    public void removeOnInsetsChangedListener(a aVar) {
        this.f.remove(aVar);
    }
}
