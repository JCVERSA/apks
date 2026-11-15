package iu;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;

public final class n implements f4.a {

    private final ConstraintLayout f62723a;

    public final BLTextView f62724b;

    public final BLTextView f62725c;

    public final Group f62726d;

    public final Group f62727e;

    public final ShapeableImageView f62728f;

    public final AppCompatImageView f62729g;

    public final AppCompatTextView f62730h;

    public final AppCompatTextView f62731i;

    public final AppCompatTextView f62732j;

    private n(ConstraintLayout constraintLayout, BLTextView bLTextView, BLTextView bLTextView2, Group group, Group group2, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f62723a = constraintLayout;
        this.f62724b = bLTextView;
        this.f62725c = bLTextView2;
        this.f62726d = group;
        this.f62727e = group2;
        this.f62728f = shapeableImageView;
        this.f62729g = appCompatImageView;
        this.f62730h = appCompatTextView;
        this.f62731i = appCompatTextView2;
        this.f62732j = appCompatTextView3;
    }

    public static n a(View view) {
        int i10 = R$id.bgDetails;
        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
        if (bLTextView != null) {
            i10 = R$id.bgDownload;
            BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
            if (bLTextView2 != null) {
                i10 = R$id.groupDetails;
                Group group = (Group) f4.b.a(view, i10);
                if (group != null) {
                    i10 = R$id.groupDownload;
                    Group group2 = (Group) f4.b.a(view, i10);
                    if (group2 != null) {
                        i10 = R$id.ivAvatar;
                        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                        if (shapeableImageView != null) {
                            i10 = R$id.ivDownload;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView != null) {
                                i10 = R$id.tvDetails;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView != null) {
                                    i10 = R$id.tvDownload;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView2 != null) {
                                        i10 = R$id.tvTitle;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView3 != null) {
                                            return new n((ConstraintLayout) view, bLTextView, bLTextView2, group, group2, shapeableImageView, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3);
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
        return this.f62723a;
    }
}
