package qr;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$id;

public final class e0 implements f4.a {

    private final ConstraintLayout f70006a;

    public final ShapeableImageView f70007b;

    public final AppCompatImageView f70008c;

    public final AppCompatTextView f70009d;

    private e0(ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        this.f70006a = constraintLayout;
        this.f70007b = shapeableImageView;
        this.f70008c = appCompatImageView;
        this.f70009d = appCompatTextView;
    }

    public static e0 a(View view) {
        int i10 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.iv_play;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.tv_title;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    return new e0((ConstraintLayout) view, shapeableImageView, appCompatImageView, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70006a;
    }
}
