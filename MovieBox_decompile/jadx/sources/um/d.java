package um;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.ninegridview.R$id;

public final class d implements f4.a {

    private final View f73209a;

    public final AppCompatImageView f73210b;

    public final FrameLayout f73211c;

    public final ShapeableImageView f73212d;

    private d(View view, AppCompatImageView appCompatImageView, FrameLayout frameLayout, ShapeableImageView shapeableImageView) {
        this.f73209a = view;
        this.f73210b = appCompatImageView;
        this.f73211c = frameLayout;
        this.f73212d = shapeableImageView;
    }

    public static d a(View view) {
        int i10 = R$id.label_gif;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.video_container;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.video_cover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null) {
                    return new d(view, appCompatImageView, frameLayout, shapeableImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f73209a;
    }
}
