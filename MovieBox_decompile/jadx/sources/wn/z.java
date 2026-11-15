package wn;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLLinearLayout;
import com.transsion.postdetail.R$id;

public final class z implements f4.a {

    private final BLLinearLayout f74676a;

    public final ConstraintLayout f74677b;

    public final ShapeableImageView f74678c;

    public final ShapeableImageView f74679d;

    public final AppCompatImageView f74680e;

    public final LinearLayout f74681f;

    public final AppCompatTextView f74682g;

    public final AppCompatTextView f74683h;

    public final AppCompatTextView f74684i;

    public final AppCompatTextView f74685j;

    public final View f74686k;

    public final View f74687l;

    public final View f74688m;

    private z(BLLinearLayout bLLinearLayout, ConstraintLayout constraintLayout, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view, View view2, View view3) {
        this.f74676a = bLLinearLayout;
        this.f74677b = constraintLayout;
        this.f74678c = shapeableImageView;
        this.f74679d = shapeableImageView2;
        this.f74680e = appCompatImageView;
        this.f74681f = linearLayout;
        this.f74682g = appCompatTextView;
        this.f74683h = appCompatTextView2;
        this.f74684i = appCompatTextView3;
        this.f74685j = appCompatTextView4;
        this.f74686k = view;
        this.f74687l = view2;
        this.f74688m = view3;
    }

    public static z a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.cl_subject_content;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null) {
            i10 = R$id.iv_room_cover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                i10 = R$id.iv_subject_cover;
                ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView2 != null) {
                    i10 = R$id.iv_subject_tag;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.ll_room_tag;
                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                        if (linearLayout != null) {
                            i10 = R$id.tv_room_tag;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tv_subject_date;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    i10 = R$id.tv_subject_genre;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView3 != null) {
                                        i10 = R$id.tv_subject_name;
                                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView4 != null && (viewA = f4.b.a(view, (i10 = R$id.v_subject_line_1))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_subject_line_2))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_subject_room_line))) != null) {
                                            return new z((BLLinearLayout) view, constraintLayout, shapeableImageView, shapeableImageView2, appCompatImageView, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA, viewA2, viewA3);
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
    public BLLinearLayout getRoot() {
        return this.f74676a;
    }
}
