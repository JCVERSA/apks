package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class j implements f4.a {

    private final ConstraintLayout f62698a;

    public final AppCompatImageView f62699b;

    public final ShapeableImageView f62700c;

    public final RecyclerView f62701d;

    public final AppCompatTextView f62702e;

    public final AppCompatTextView f62703f;

    public final BLTextView f62704g;

    public final AppCompatTextView f62705h;

    public final AppCompatTextView f62706i;

    public final AppCompatTextView f62707j;

    public final View f62708k;

    private j(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, BLTextView bLTextView, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, View view) {
        this.f62698a = constraintLayout;
        this.f62699b = appCompatImageView;
        this.f62700c = shapeableImageView;
        this.f62701d = recyclerView;
        this.f62702e = appCompatTextView;
        this.f62703f = appCompatTextView2;
        this.f62704g = bLTextView;
        this.f62705h = appCompatTextView3;
        this.f62706i = appCompatTextView4;
        this.f62707j = appCompatTextView5;
        this.f62708k = view;
    }

    public static j a(View view) {
        View viewA;
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivUserCover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                i10 = R$id.recyclerTag;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tvDes;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tvDesTitle;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            i10 = R$id.tvFollow;
                            BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                            if (bLTextView != null) {
                                i10 = R$id.tvPageTitle;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView3 != null) {
                                    i10 = R$id.tvTitle;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView4 != null) {
                                        i10 = R$id.tvUsername;
                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView5 != null && (viewA = f4.b.a(view, (i10 = R$id.vTitleLine))) != null) {
                                            return new j((ConstraintLayout) view, appCompatImageView, shapeableImageView, recyclerView, appCompatTextView, appCompatTextView2, bLTextView, appCompatTextView3, appCompatTextView4, appCompatTextView5, viewA);
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

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_video_detail_info_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f62698a;
    }
}
