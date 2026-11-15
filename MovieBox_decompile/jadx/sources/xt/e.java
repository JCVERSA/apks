package xt;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.transfer.R$id;

public final class e implements f4.a {

    private final LinearLayout f75461a;

    public final AppCompatImageView f75462b;

    public final ShapeableImageView f75463c;

    private e(LinearLayout linearLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView) {
        this.f75461a = linearLayout;
        this.f75462b = appCompatImageView;
        this.f75463c = shapeableImageView;
    }

    public static e a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivQrCode;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                return new e((LinearLayout) view, appCompatImageView, shapeableImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f75461a;
    }
}
