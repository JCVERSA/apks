package qr;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.shorttv.R$id;

public final class p0 implements f4.a {

    private final View f70132a;

    public final ShapeableImageView f70133b;

    public final AppCompatTextView f70134c;

    public final AppCompatTextView f70135d;

    private p0(View view, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f70132a = view;
        this.f70133b = shapeableImageView;
        this.f70134c = appCompatTextView;
        this.f70135d = appCompatTextView2;
    }

    public static p0 a(View view) {
        int i10 = R$id.ivAdAvatar;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.tvBtn;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tvDes;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    return new p0(view, shapeableImageView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f70132a;
    }
}
