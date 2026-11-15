package fp;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLView;
import com.transsion.room.R$id;

public final class b0 implements f4.a {

    private final FrameLayout f60298a;

    public final ShapeableImageView f60299b;

    public final ShapeableImageView f60300c;

    public final BLView f60301d;

    private b0(FrameLayout frameLayout, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, BLView bLView) {
        this.f60298a = frameLayout;
        this.f60299b = shapeableImageView;
        this.f60300c = shapeableImageView2;
        this.f60301d = bLView;
    }

    public static b0 a(View view) {
        int i10 = R$id.iv_post_cover_1;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.iv_post_cover_2;
            ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView2 != null) {
                i10 = R$id.v_post_bg;
                BLView bLView = (BLView) f4.b.a(view, i10);
                if (bLView != null) {
                    return new b0((FrameLayout) view, shapeableImageView, shapeableImageView2, bLView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f60298a;
    }
}
