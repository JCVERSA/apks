package lm;

import android.view.LayoutInflater;
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

public final class j implements f4.a {

    private final ConstraintLayout f65802a;

    public final Group f65803b;

    public final Group f65804c;

    public final ShapeableImageView f65805d;

    public final ShapeableImageView f65806e;

    public final AppCompatImageView f65807f;

    public final ProgressBar f65808g;

    public final TextView f65809h;

    public final View f65810i;

    public final AppCompatImageView f65811j;

    public final SecondariesSeekBar f65812k;

    public final TextView f65813l;

    public final ViewStub f65814m;

    private j(ConstraintLayout constraintLayout, Group group, Group group2, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, AppCompatImageView appCompatImageView, ProgressBar progressBar, TextView textView, View view, AppCompatImageView appCompatImageView2, SecondariesSeekBar secondariesSeekBar, TextView textView2, ViewStub viewStub) {
        this.f65802a = constraintLayout;
        this.f65803b = group;
        this.f65804c = group2;
        this.f65805d = shapeableImageView;
        this.f65806e = shapeableImageView2;
        this.f65807f = appCompatImageView;
        this.f65808g = progressBar;
        this.f65809h = textView;
        this.f65810i = view;
        this.f65811j = appCompatImageView2;
        this.f65812k = secondariesSeekBar;
        this.f65813l = textView2;
        this.f65814m = viewStub;
    }

    public static j a(View view) {
        View viewA;
        int i10 = R$id.groupLoading;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null) {
            i10 = R$id.groupProgress;
            Group group2 = (Group) f4.b.a(view, i10);
            if (group2 != null) {
                i10 = R$id.ivMovieBlurCover;
                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                if (shapeableImageView != null) {
                    i10 = R$id.ivMovieCover;
                    ShapeableImageView shapeableImageView2 = (ShapeableImageView) f4.b.a(view, i10);
                    if (shapeableImageView2 != null) {
                        i10 = R$id.ivPlay;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView != null) {
                            i10 = R$id.progress;
                            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                            if (progressBar != null) {
                                i10 = R$id.tvLoading;
                                TextView textView = (TextView) f4.b.a(view, i10);
                                if (textView != null && (viewA = f4.b.a(view, (i10 = R$id.vTap))) != null) {
                                    i10 = R$id.vdPause;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView2 != null) {
                                        i10 = R$id.vdSeekbar;
                                        SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) f4.b.a(view, i10);
                                        if (secondariesSeekBar != null) {
                                            i10 = R$id.vdVideoTime;
                                            TextView textView2 = (TextView) f4.b.a(view, i10);
                                            if (textView2 != null) {
                                                i10 = R$id.vsLoadFailed;
                                                ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                                if (viewStub != null) {
                                                    return new j((ConstraintLayout) view, group, group2, shapeableImageView, shapeableImageView2, appCompatImageView, progressBar, textView, viewA, appCompatImageView2, secondariesSeekBar, textView2, viewStub);
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

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_music_trailer_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65802a;
    }
}
