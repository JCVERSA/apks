package iu;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.noober.background.view.BLView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.widget.TopCropShapeableImageView;

public final class o implements f4.a {

    private final ConstraintLayout f62733a;

    public final Group f62734b;

    public final Group f62735c;

    public final TopCropShapeableImageView f62736d;

    public final TopCropShapeableImageView f62737e;

    public final AppCompatTextView f62738f;

    public final AppCompatTextView f62739g;

    public final AppCompatTextView f62740h;

    public final BLView f62741i;

    public final BLView f62742j;

    private o(ConstraintLayout constraintLayout, Group group, Group group2, TopCropShapeableImageView topCropShapeableImageView, TopCropShapeableImageView topCropShapeableImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLView bLView, BLView bLView2) {
        this.f62733a = constraintLayout;
        this.f62734b = group;
        this.f62735c = group2;
        this.f62736d = topCropShapeableImageView;
        this.f62737e = topCropShapeableImageView2;
        this.f62738f = appCompatTextView;
        this.f62739g = appCompatTextView2;
        this.f62740h = appCompatTextView3;
        this.f62741i = bLView;
        this.f62742j = bLView2;
    }

    public static o a(View view) {
        int i10 = R$id.groupPreview;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.groupPreviewCollection;
            Group group2 = (Group) f4.b.a(view, i10);
            if (group2 != null) {
                i10 = R$id.ivPreviewImage;
                TopCropShapeableImageView topCropShapeableImageView = (TopCropShapeableImageView) f4.b.a(view, i10);
                if (topCropShapeableImageView != null) {
                    i10 = R$id.ivPreviewImageCollection;
                    TopCropShapeableImageView topCropShapeableImageView2 = (TopCropShapeableImageView) f4.b.a(view, i10);
                    if (topCropShapeableImageView2 != null) {
                        i10 = R$id.tvClickText;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tvClickTextCollection;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView2 != null) {
                                i10 = R$id.tvTitle;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView3 != null) {
                                    i10 = R$id.vGradientOverlay;
                                    BLView bLView = (BLView) f4.b.a(view, i10);
                                    if (bLView != null) {
                                        i10 = R$id.vGradientOverlayCollection;
                                        BLView bLView2 = (BLView) f4.b.a(view, i10);
                                        if (bLView2 != null) {
                                            return new o((ConstraintLayout) view, group, group2, topCropShapeableImageView, topCropShapeableImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, bLView, bLView2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f62733a;
    }
}
