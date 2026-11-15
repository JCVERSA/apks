package sj;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;

public final class h implements f4.a {

    private final ConstraintLayout f72302a;

    public final ShapeableImageView f72303b;

    public final ConstraintLayout f72304c;

    public final TextView f72305d;

    public final TextView f72306e;

    public final TextView f72307f;

    private h(ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, ConstraintLayout constraintLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.f72302a = constraintLayout;
        this.f72303b = shapeableImageView;
        this.f72304c = constraintLayout2;
        this.f72305d = textView;
        this.f72306e = textView2;
        this.f72307f = textView3;
    }

    public static h a(View view) {
        int i10 = R$id.ivAdIcon;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i10 = R$id.tvAdDesc;
            TextView textView = (TextView) f4.b.a(view, i10);
            if (textView != null) {
                i10 = R$id.tvAdTitle;
                TextView textView2 = (TextView) f4.b.a(view, i10);
                if (textView2 != null) {
                    i10 = R$id.tvWatch;
                    TextView textView3 = (TextView) f4.b.a(view, i10);
                    if (textView3 != null) {
                        return new h(constraintLayout, shapeableImageView, constraintLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f72302a;
    }
}
