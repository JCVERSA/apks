package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class e0 implements f4.a {

    private final LinearLayout f69722a;

    public final ShapeableImageView f69723b;

    public final TnTextView f69724c;

    private e0(LinearLayout linearLayout, ShapeableImageView shapeableImageView, TnTextView tnTextView) {
        this.f69722a = linearLayout;
        this.f69723b = shapeableImageView;
        this.f69724c = tnTextView;
    }

    public static e0 a(View view) {
        int i10 = R$id.ivCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.tvTitle;
            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
            if (tnTextView != null) {
                return new e0((LinearLayout) view, shapeableImageView, tnTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_single_image, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f69722a;
    }
}
