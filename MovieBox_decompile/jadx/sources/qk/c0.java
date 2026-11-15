package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class c0 implements f4.a {

    private final ConstraintLayout f69703a;

    public final ConstraintLayout f69704b;

    public final ShapeableImageView f69705c;

    public final BLTextView f69706d;

    public final AppCompatTextView f69707e;

    public final BLView f69708f;

    private c0(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ShapeableImageView shapeableImageView, BLTextView bLTextView, AppCompatTextView appCompatTextView, BLView bLView) {
        this.f69703a = constraintLayout;
        this.f69704b = constraintLayout2;
        this.f69705c = shapeableImageView;
        this.f69706d = bLTextView;
        this.f69707e = appCompatTextView;
        this.f69708f = bLView;
    }

    public static c0 a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.ivCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.tvMembers;
            BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
            if (bLTextView != null) {
                i10 = R$id.tvTitle;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.v_stroke;
                    BLView bLView = (BLView) f4.b.a(view, i10);
                    if (bLView != null) {
                        return new c0(constraintLayout, constraintLayout, shapeableImageView, bLTextView, appCompatTextView, bLView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_adapter_room_entrance_group, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69703a;
    }
}
