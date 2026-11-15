package com.transsion.postdetail.util;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import kotlin.jvm.internal.Intrinsics;

public final class l {

    private View f48078a;

    private int f48079b;

    private a f48080c;

    private final ViewTreeObserver.OnGlobalLayoutListener f48081d = new b();

    public interface a {
        void a(int i10);

        void b(int i10);
    }

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override
        public void onGlobalLayout() {
            if (l.this.f48078a == null) {
                View view = l.this.f48078a;
                Intrinsics.e(view);
                view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                return;
            }
            Rect rect = new Rect();
            View view2 = l.this.f48078a;
            Intrinsics.e(view2);
            view2.getWindowVisibleDisplayFrame(rect);
            int iHeight = rect.height();
            if (l.this.c() == 0) {
                l.this.e(iHeight);
                return;
            }
            if (l.this.c() == iHeight) {
                return;
            }
            if (l.this.c() - iHeight > 200) {
                if (l.this.f48080c != null) {
                    a aVar = l.this.f48080c;
                    Intrinsics.e(aVar);
                    aVar.b(l.this.c() - iHeight);
                }
                l.this.e(iHeight);
                return;
            }
            if (iHeight - l.this.c() > 200) {
                if (l.this.f48080c != null) {
                    a aVar2 = l.this.f48080c;
                    Intrinsics.e(aVar2);
                    aVar2.a(iHeight - l.this.c());
                }
                l.this.e(iHeight);
            }
        }
    }

    public final int c() {
        return this.f48079b;
    }

    public final void d(Activity activity, a aVar) {
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        Window window;
        this.f48080c = aVar;
        View decorView = (activity == null || (window = activity.getWindow()) == null) ? null : window.getDecorView();
        this.f48078a = decorView;
        if (aVar == null) {
            if (decorView == null || (viewTreeObserver2 = decorView.getViewTreeObserver()) == null) {
                return;
            }
            viewTreeObserver2.removeOnGlobalLayoutListener(this.f48081d);
            return;
        }
        if (decorView == null || (viewTreeObserver = decorView.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(this.f48081d);
    }

    public final void e(int i10) {
        this.f48079b = i10;
    }
}
