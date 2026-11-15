package lm;

import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class u implements f4.a {

    private final ConstraintLayout f65916a;

    public final Group f65917b;

    public final Group f65918c;

    public final ShapeableImageView f65919d;

    public final ShapeableImageView f65920e;

    public final AppCompatImageView f65921f;

    public final ProgressBar f65922g;

    public final TextureView f65923h;

    public final TextView f65924i;

    public final View f65925j;

    public final AppCompatImageView f65926k;

    public final SecondariesSeekBar f65927l;

    public final TextView f65928m;

    public final ViewStub f65929n;

    private u(ConstraintLayout constraintLayout, Group group, Group group2, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, ProgressBar progressBar, TextureView textureView, TextView textView, View view, AppCompatImageView appCompatImageView2, SecondariesSeekBar secondariesSeekBar, TextView textView2, ViewStub viewStub) {
        this.f65916a = constraintLayout;
        this.f65917b = group;
        this.f65918c = group2;
        this.f65919d = shapeableImageView;
        this.f65920e = shapeableImageView2;
        this.f65921f = appCompatImageView;
        this.f65922g = progressBar;
        this.f65923h = textureView;
        this.f65924i = textView;
        this.f65925j = view;
        this.f65926k = appCompatImageView2;
        this.f65927l = secondariesSeekBar;
        this.f65928m = textView2;
        this.f65929n = viewStub;
    }

    public static u a(View view) {
        View viewA;
        int i10 = R$id.group_loading;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.group_progress;
            Group group2 = (Group) f4.b.a(view, i10);
            if (group2 != null) {
                i10 = R$id.ivMovieBlurCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null) {
                    i10 = R$id.ivMovieCover;
                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                    if (shapeableImageView2 != null) {
                        i10 = R$id.iv_play;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView != null) {
                            i10 = R$id.progress;
                            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                            if (progressBar != null) {
                                i10 = R$id.textureView;
                                TextureView textureView = (TextureView) f4.b.a(view, i10);
                                if (textureView != null) {
                                    i10 = R$id.tv_loading;
                                    TextView textView = (TextView) f4.b.a(view, i10);
                                    if (textView != null && (viewA = f4.b.a(view, (i10 = R$id.v_tap))) != null) {
                                        i10 = R$id.vd_pause;
                                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                        if (appCompatImageView2 != null) {
                                            i10 = R$id.vd_seekbar;
                                            SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) f4.b.a(view, i10);
                                            if (secondariesSeekBar != null) {
                                                i10 = R$id.vd_video_time;
                                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                                if (textView2 != null) {
                                                    i10 = R$id.vs_load_failed;
                                                    ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                    if (viewStub != null) {
                                                        return new u((ConstraintLayout) view, group, group2, shapeableImageView, shapeableImageView2, appCompatImageView, progressBar, textureView, textView, viewA, appCompatImageView2, secondariesSeekBar, textView2, viewStub);
                                                    }
                                                }
                                            }
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

    public static u c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_trailer, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65916a;
    }
}
