package defpackage;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import com.transsion.widgetsbottomsheet.R;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBaseBottomSheetDialog;
import com.transsion.widgetsbottomsheet.bottomsheet.OSSmoothCornerLinearLayout;
import com.transsion.widgetsbottomsheet.databinding.OsBottomSheetContainerBinding;

public final class v47 implements u47 {
    public final OSBaseBottomSheetDialog a;

    public static final class a extends ViewOutlineProvider {
        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getContext().getResources().getDimension(R.dimen.os_radius_xxxl));
        }
    }

    public static final class b extends ViewOutlineProvider {
        @Override
        public void getOutline(View view, Outline outline) {
            y45.g(view);
            int width = view.getWidth();
            int height = view.getHeight();
            Path path = new Path();
            float dimension = view.getResources().getDimension(R.dimen.os_bottom_sheet_radius);
            path.addRoundRect(new RectF(0.0f, 0.0f, width, height), new float[]{dimension, dimension, dimension, dimension, 0.0f, 0.0f, 0.0f, 0.0f}, Path.Direction.CW);
            y45.g(outline);
            outline.setConvexPath(path);
        }
    }

    public v47(OSBaseBottomSheetDialog oSBaseBottomSheetDialog) {
        y45.j(oSBaseBottomSheetDialog, "osBaseBottomSheetDialog");
        this.a = oSBaseBottomSheetDialog;
    }

    @Override
    public void a(boolean z, int i) {
        int dimensionPixelSize;
        OsBottomSheetContainerBinding containerViewBinding = this.a.getContainerViewBinding();
        boolean z2 = olb.j0(this.a) && (!olb.Y(this.a) || olb.Q(this.a) || olb.d0(this.a));
        if (olb.Y(this.a) && olb.j0(this.a)) {
            dimensionPixelSize = this.a.getResources().getDimensionPixelSize(R.dimen.os_bottom_sheet_large_margin_bottom_normal);
        } else if (z2) {
            dimensionPixelSize = 0;
        } else {
            dimensionPixelSize = (olb.X(this.a) || !olb.p0(this.a.getWindow()) || olb.u0(this.a)) ? this.a.getResources().getDimensionPixelSize(R.dimen.os_bottom_sheet_inset_bottom_nav_gone) : olb.x(this.a.getResources());
        }
        ViewGroup.LayoutParams layoutParams = containerViewBinding.e.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = (!z2 || olb.g0(this.a)) ? 0 : this.a.getResources().getDimensionPixelOffset(R.dimen.os_bottom_sheet_large_margin_bottom_normal);
        }
        ViewGroup.LayoutParams layoutParams2 = containerViewBinding.i.getLayoutParams();
        if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = this.a.getDragSpaceTop();
        }
        bq5.p(OSBaseBottomSheetDialog.TAG, "updBottomPadding: paddingBottom = " + dimensionPixelSize + " adaptLargeScreen = " + z2);
        if (z2) {
            containerViewBinding.e.setOutlineProvider(new a());
            containerViewBinding.e.setClipToOutline(true);
            containerViewBinding.g.setBackground(null);
            containerViewBinding.j.setBackgroundColor(0);
            OSSmoothCornerLinearLayout oSSmoothCornerLinearLayout = containerViewBinding.e;
            oSSmoothCornerLinearLayout.setPadding(oSSmoothCornerLinearLayout.getPaddingLeft(), containerViewBinding.e.getPaddingTop(), containerViewBinding.e.getPaddingRight(), 0);
            return;
        }
        containerViewBinding.e.setBackground(null);
        containerViewBinding.e.setOutlineProvider(null);
        containerViewBinding.e.setClipToOutline(false);
        containerViewBinding.j.setBackgroundColor(i);
        containerViewBinding.e.setBackground(null);
        OSSmoothCornerLinearLayout oSSmoothCornerLinearLayout2 = containerViewBinding.e;
        oSSmoothCornerLinearLayout2.setPadding(oSSmoothCornerLinearLayout2.getPaddingLeft(), containerViewBinding.e.getPaddingTop(), containerViewBinding.e.getPaddingRight(), z ? dimensionPixelSize : 0);
        containerViewBinding.d.setOutlineProvider(new b());
        containerViewBinding.d.setClipToOutline(true);
    }
}
