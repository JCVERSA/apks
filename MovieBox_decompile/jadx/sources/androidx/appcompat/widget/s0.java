package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$style;

class s0 {

    private final Context f1803a;

    private final View f1804b;

    private final TextView f1805c;

    private final WindowManager.LayoutParams f1806d;

    private final Rect f1807e;

    private final int[] f1808f;

    private final int[] f1809g;

    s0(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1806d = layoutParams;
        this.f1807e = new Rect();
        this.f1808f = new int[2];
        this.f1809g = new int[2];
        this.f1803a = context;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.abc_tooltip, (ViewGroup) null);
        this.f1804b = viewInflate;
        this.f1805c = (TextView) viewInflate.findViewById(R$id.message);
        layoutParams.setTitle(getClass().getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R$style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    private void a(View view, int i10, int i11, boolean z10, WindowManager.LayoutParams layoutParams) {
        int height;
        int i12;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1803a.getResources().getDimensionPixelOffset(R$dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i10 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1803a.getResources().getDimensionPixelOffset(R$dimen.tooltip_precise_anchor_extra_offset);
            height = i11 + dimensionPixelOffset2;
            i12 = i11 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i12 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1803a.getResources().getDimensionPixelOffset(z10 ? R$dimen.tooltip_y_offset_touch : R$dimen.tooltip_y_offset_non_touch);
        View viewB = b(view);
        if (viewB == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        viewB.getWindowVisibleDisplayFrame(this.f1807e);
        Rect rect = this.f1807e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f1803a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1807e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        viewB.getLocationOnScreen(this.f1809g);
        view.getLocationOnScreen(this.f1808f);
        int[] iArr = this.f1808f;
        int i13 = iArr[0];
        int[] iArr2 = this.f1809g;
        int i14 = i13 - iArr2[0];
        iArr[0] = i14;
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (i14 + i10) - (viewB.getWidth() / 2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1804b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.f1804b.getMeasuredHeight();
        int i15 = this.f1808f[1];
        int i16 = ((i12 + i15) - dimensionPixelOffset3) - measuredHeight;
        int i17 = i15 + height + dimensionPixelOffset3;
        if (z10) {
            if (i16 >= 0) {
                layoutParams.y = i16;
                return;
            } else {
                layoutParams.y = i17;
                return;
            }
        }
        if (measuredHeight + i17 <= this.f1807e.height()) {
            layoutParams.y = i17;
        } else {
            layoutParams.y = i16;
        }
    }

    private static View b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    void c() {
        if (d()) {
            ((WindowManager) this.f1803a.getSystemService("window")).removeView(this.f1804b);
        }
    }

    boolean d() {
        return this.f1804b.getParent() != null;
    }

    void e(View view, int i10, int i11, boolean z10, CharSequence charSequence) {
        if (d()) {
            c();
        }
        this.f1805c.setText(charSequence);
        a(view, i10, i11, z10, this.f1806d);
        ((WindowManager) this.f1803a.getSystemService("window")).addView(this.f1804b, this.f1806d);
    }
}
