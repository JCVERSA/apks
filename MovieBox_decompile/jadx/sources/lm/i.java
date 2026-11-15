package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLLinearLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetail.view.InfoExtendView;

public final class i implements f4.a {

    private final ConstraintLayout f65793a;

    public final InfoExtendView f65794b;

    public final ShapeableImageView f65795c;

    public final AppCompatImageView f65796d;

    public final AppCompatTextView f65797e;

    public final LinearLayoutCompat f65798f;

    public final AppCompatTextView f65799g;

    public final BLLinearLayout f65800h;

    public final AppCompatTextView f65801i;

    private i(ConstraintLayout constraintLayout, InfoExtendView infoExtendView, ShapeableImageView shapeableImageView, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView2, BLLinearLayout bLLinearLayout, AppCompatTextView appCompatTextView3) {
        this.f65793a = constraintLayout;
        this.f65794b = infoExtendView;
        this.f65795c = shapeableImageView;
        this.f65796d = appCompatImageView;
        this.f65797e = appCompatTextView;
        this.f65798f = linearLayoutCompat;
        this.f65799g = appCompatTextView2;
        this.f65800h = bLLinearLayout;
        this.f65801i = appCompatTextView3;
    }

    public static i a(View view) {
        int i10 = R$id.infoExtendView;
        InfoExtendView infoExtendView = (InfoExtendView) f4.b.a(view, i10);
        if (infoExtendView != null) {
            i10 = R$id.ivAvatar;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                i10 = R$id.tv_close;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.tvDes;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tv_header_toolbar;
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                        if (linearLayoutCompat != null) {
                            i10 = R$id.tvMovieTitle;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView2 != null) {
                                i10 = R$id.tv_music_avatar;
                                BLLinearLayout bLLinearLayout = (BLLinearLayout) f4.b.a(view, i10);
                                if (bLLinearLayout != null) {
                                    i10 = R$id.tvTag;
                                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView3 != null) {
                                        return new i((ConstraintLayout) view, infoExtendView, shapeableImageView, appCompatImageView, appCompatTextView, linearLayoutCompat, appCompatTextView2, bLLinearLayout, appCompatTextView3);
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

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_music_info_dialog, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65793a;
    }
}
