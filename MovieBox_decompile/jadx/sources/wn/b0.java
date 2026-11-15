package wn;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.transsion.postdetail.R$id;

public final class b0 implements f4.a {

    private final CardView f74320a;

    public final FrameLayout f74321b;

    public final CardView f74322c;

    public final ShapeableImageView f74323d;

    public final AppCompatImageView f74324e;

    public final BLTextView f74325f;

    public final BLView f74326g;

    private b0(CardView cardView, FrameLayout frameLayout, CardView cardView2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, BLTextView bLTextView, BLView bLView) {
        this.f74320a = cardView;
        this.f74321b = frameLayout;
        this.f74322c = cardView2;
        this.f74323d = shapeableImageView;
        this.f74324e = appCompatImageView;
        this.f74325f = bLTextView;
        this.f74326g = bLView;
    }

    public static b0 a(View view) {
        int i10 = R$id.flPlayer;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            CardView cardView = (CardView) view;
            i10 = R$id.iv_cover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                i10 = R$id.iv_video_play;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.tv_video_duration;
                    BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                    if (bLTextView != null) {
                        return new b0(cardView, frameLayout, cardView, shapeableImageView, appCompatImageView, bLTextView, (BLView) f4.b.a(view, R$id.v_cover_stroke));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public CardView getRoot() {
        return this.f74320a;
    }
}
