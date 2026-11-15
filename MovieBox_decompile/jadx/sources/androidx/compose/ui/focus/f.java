package androidx.compose.ui.focus;

import android.graphics.Rect;
import android.view.FocusFinder;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.LayoutDirection;

public abstract class f {
    public static final y.i a(View view) {
        int[] iArrA = e.f3939a.a();
        view.getLocationInWindow(iArrA);
        int i10 = iArrA[0];
        return new y.i(i10, iArrA[1], i10 + view.getWidth(), iArrA[1] + view.getHeight());
    }

    public static final boolean b(View view, Integer num, Rect rect) {
        if (num == null) {
            return view.requestFocus();
        }
        if (!(view instanceof ViewGroup)) {
            return view.requestFocus(num.intValue(), rect);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.isFocused()) {
            return true;
        }
        if (viewGroup.isFocusable() && !view.hasFocus()) {
            return view.requestFocus(num.intValue(), rect);
        }
        if (view instanceof AndroidComposeView) {
            return view.requestFocus(num.intValue(), rect);
        }
        if (rect != null) {
            View viewFindNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(viewGroup, rect, num.intValue());
            return viewFindNextFocusFromRect != null ? viewFindNextFocusFromRect.requestFocus(num.intValue(), rect) : view.requestFocus(num.intValue(), rect);
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(viewGroup, view.hasFocus() ? view.findFocus() : null, num.intValue());
        return viewFindNextFocus != null ? viewFindNextFocus.requestFocus(num.intValue()) : view.requestFocus(num.intValue());
    }

    public static final Integer c(int i10) {
        b.a aVar = b.f3928b;
        if (b.l(i10, aVar.h())) {
            return 33;
        }
        if (b.l(i10, aVar.a())) {
            return 130;
        }
        if (b.l(i10, aVar.d())) {
            return 17;
        }
        if (b.l(i10, aVar.g())) {
            return 66;
        }
        if (b.l(i10, aVar.e())) {
            return 2;
        }
        return b.l(i10, aVar.f()) ? 1 : null;
    }

    public static final b d(int i10) {
        if (i10 == 1) {
            return b.i(b.f3928b.f());
        }
        if (i10 == 2) {
            return b.i(b.f3928b.e());
        }
        if (i10 == 17) {
            return b.i(b.f3928b.d());
        }
        if (i10 == 33) {
            return b.i(b.f3928b.h());
        }
        if (i10 == 66) {
            return b.i(b.f3928b.g());
        }
        if (i10 != 130) {
            return null;
        }
        return b.i(b.f3928b.a());
    }

    public static final LayoutDirection e(int i10) {
        if (i10 == 0) {
            return LayoutDirection.Ltr;
        }
        if (i10 != 1) {
            return null;
        }
        return LayoutDirection.Rtl;
    }
}
