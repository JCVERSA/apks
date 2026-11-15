package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class o implements f4.a {

    private final ConstraintLayout f65844a;

    public final ShapeableImageView f65845b;

    public final ShapeableImageView f65846c;

    private o(ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2) {
        this.f65844a = constraintLayout;
        this.f65845b = shapeableImageView;
        this.f65846c = shapeableImageView2;
    }

    public static o a(View view) {
        int i10 = R$id.ivMovieBlurCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.ivMovieCover;
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView2 != null) {
                return new o((ConstraintLayout) view, shapeableImageView, shapeableImageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_stills, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65844a;
    }
}
