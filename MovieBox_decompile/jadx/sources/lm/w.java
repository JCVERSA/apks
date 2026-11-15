package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class w implements f4.a {

    private final HorizontalScrollView f65937a;

    public final ShapeableImageView f65938b;

    public final AppCompatTextView f65939c;

    public final AppCompatTextView f65940d;

    public final AppCompatTextView f65941e;

    public final AppCompatTextView f65942f;

    public final ConstraintLayout f65943g;

    public final AppCompatTextView f65944h;

    public final AppCompatTextView f65945i;

    private w(HorizontalScrollView horizontalScrollView, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView5, AppCompatTextView appCompatTextView6) {
        this.f65937a = horizontalScrollView;
        this.f65938b = shapeableImageView;
        this.f65939c = appCompatTextView;
        this.f65940d = appCompatTextView2;
        this.f65941e = appCompatTextView3;
        this.f65942f = appCompatTextView4;
        this.f65943g = constraintLayout;
        this.f65944h = appCompatTextView5;
        this.f65945i = appCompatTextView6;
    }

    public static w a(View view) {
        int i10 = R$id.ivAvatar;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.tv_add;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tvDes;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.tv_download;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.tv_download_page;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView4 != null) {
                            i10 = R$id.tv_music_avatar;
                            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                            if (constraintLayout != null) {
                                i10 = R$id.tv_remind;
                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView5 != null) {
                                    i10 = R$id.tv_share;
                                    AppCompatTextView appCompatTextView6 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView6 != null) {
                                        return new w((HorizontalScrollView) view, shapeableImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, constraintLayout, appCompatTextView5, appCompatTextView6);
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

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.header_extension_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public HorizontalScrollView getRoot() {
        return this.f65937a;
    }
}
