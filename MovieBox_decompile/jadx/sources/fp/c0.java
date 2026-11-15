package fp;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.room.R$id;

public final class c0 implements f4.a {

    private final FrameLayout f60304a;

    public final ShapeableImageView f60305b;

    private c0(FrameLayout frameLayout, ShapeableImageView shapeableImageView) {
        this.f60304a = frameLayout;
        this.f60305b = shapeableImageView;
    }

    public static c0 a(View view) {
        int i10 = R$id.iv_post_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            return new c0((FrameLayout) view, shapeableImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f60304a;
    }
}
