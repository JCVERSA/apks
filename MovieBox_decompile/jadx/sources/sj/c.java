package sj;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Guideline;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;

public final class c implements f4.a {

    private final View f72239a;

    public final Guideline f72240b;

    public final ShapeableImageView f72241c;

    public final AppCompatImageView f72242d;

    public final Barrier f72243e;

    public final Barrier f72244f;

    public final Guideline f72245g;

    private c(View view, Guideline guideline, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, Barrier barrier, Barrier barrier2, Guideline guideline2) {
        this.f72239a = view;
        this.f72240b = guideline;
        this.f72241c = shapeableImageView;
        this.f72242d = appCompatImageView;
        this.f72243e = barrier;
        this.f72244f = barrier2;
        this.f72245g = guideline2;
    }

    public static c a(View view) {
        Guideline guideline = (Guideline) f4.b.a(view, R$id.bottomGuideline);
        int i10 = R$id.f42557iv;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.ivClose;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                return new c(view, guideline, shapeableImageView, appCompatImageView, (Barrier) f4.b.a(view, R$id.leftBarrier), (Barrier) f4.b.a(view, R$id.rightBarrier), (Guideline) f4.b.a(view, R$id.topGuideline));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f72239a;
    }
}
