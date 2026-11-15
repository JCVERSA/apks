package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class f0 implements f4.a {

    private final BLConstraintLayout f69731a;

    public final ShapeableImageView f69732b;

    public final ImageView f69733c;

    public final BLTextView f69734d;

    public final TnTextView f69735e;

    public final BLLinearLayout f69736f;

    private f0(BLConstraintLayout bLConstraintLayout, ShapeableImageView shapeableImageView, ImageView imageView, BLTextView bLTextView, TnTextView tnTextView, BLLinearLayout bLLinearLayout) {
        this.f69731a = bLConstraintLayout;
        this.f69732b = shapeableImageView;
        this.f69733c = imageView;
        this.f69734d = bLTextView;
        this.f69735e = tnTextView;
        this.f69736f = bLLinearLayout;
    }

    public static f0 a(View view) {
        int i10 = R$id.ivCover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.ivTypeIcon;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.tvDuration;
                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                if (bLTextView != null) {
                    i10 = R$id.tvTitle;
                    TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                    if (tnTextView != null) {
                        i10 = R$id.vDurationBg;
                        BLLinearLayout bLLinearLayout = (BLLinearLayout) f4.b.a(view, i10);
                        if (bLLinearLayout != null) {
                            return new f0((BLConstraintLayout) view, shapeableImageView, imageView, bLTextView, tnTextView, bLLinearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_ugc_vertical_content, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f69731a;
    }
}
