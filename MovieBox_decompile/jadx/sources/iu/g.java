package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.view.SwitchButton;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class g implements f4.a {

    private final ConstraintLayout f62651a;

    public final BLConstraintLayout f62652b;

    public final BLConstraintLayout f62653c;

    public final BLConstraintLayout f62654d;

    public final BLConstraintLayout f62655e;

    public final BLConstraintLayout f62656f;

    public final ImageView f62657g;

    public final ImageView f62658h;

    public final ImageView f62659i;

    public final ImageView f62660j;

    public final ImageView f62661k;

    public final ImageView f62662l;

    public final LinearLayout f62663m;

    public final RecyclerView f62664n;

    public final SwitchButton f62665o;

    public final TextView f62666p;

    public final TextView f62667q;

    public final TextView f62668r;

    public final GradientTextView f62669s;

    public final GradientTextView f62670t;

    public final GradientTextView f62671u;

    public final GradientTextView f62672v;

    public final GradientTextView f62673w;

    public final GradientTextView f62674x;

    public final TextView f62675y;

    public final TextView f62676z;

    private g(ConstraintLayout constraintLayout, BLConstraintLayout bLConstraintLayout, BLConstraintLayout bLConstraintLayout2, BLConstraintLayout bLConstraintLayout3, BLConstraintLayout bLConstraintLayout4, BLConstraintLayout bLConstraintLayout5, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, LinearLayout linearLayout, RecyclerView recyclerView, SwitchButton switchButton, TextView textView, TextView textView2, TextView textView3, GradientTextView gradientTextView, GradientTextView gradientTextView2, GradientTextView gradientTextView3, GradientTextView gradientTextView4, GradientTextView gradientTextView5, GradientTextView gradientTextView6, TextView textView4, TextView textView5) {
        this.f62651a = constraintLayout;
        this.f62652b = bLConstraintLayout;
        this.f62653c = bLConstraintLayout2;
        this.f62654d = bLConstraintLayout3;
        this.f62655e = bLConstraintLayout4;
        this.f62656f = bLConstraintLayout5;
        this.f62657g = imageView;
        this.f62658h = imageView2;
        this.f62659i = imageView3;
        this.f62660j = imageView4;
        this.f62661k = imageView5;
        this.f62662l = imageView6;
        this.f62663m = linearLayout;
        this.f62664n = recyclerView;
        this.f62665o = switchButton;
        this.f62666p = textView;
        this.f62667q = textView2;
        this.f62668r = textView3;
        this.f62669s = gradientTextView;
        this.f62670t = gradientTextView2;
        this.f62671u = gradientTextView3;
        this.f62672v = gradientTextView4;
        this.f62673w = gradientTextView5;
        this.f62674x = gradientTextView6;
        this.f62675y = textView4;
        this.f62676z = textView5;
    }

    public static g a(View view) {
        int i10 = R$id.clAutoplay;
        BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, i10);
        if (bLConstraintLayout != null) {
            i10 = R$id.clCleanMode;
            BLConstraintLayout bLConstraintLayout2 = (BLConstraintLayout) f4.b.a(view, i10);
            if (bLConstraintLayout2 != null) {
                i10 = R$id.clQuality;
                BLConstraintLayout bLConstraintLayout3 = (BLConstraintLayout) f4.b.a(view, i10);
                if (bLConstraintLayout3 != null) {
                    i10 = R$id.clSpeed;
                    BLConstraintLayout bLConstraintLayout4 = (BLConstraintLayout) f4.b.a(view, i10);
                    if (bLConstraintLayout4 != null) {
                        i10 = R$id.clSubtitle;
                        BLConstraintLayout bLConstraintLayout5 = (BLConstraintLayout) f4.b.a(view, i10);
                        if (bLConstraintLayout5 != null) {
                            i10 = R$id.ivAutoplayIcon;
                            ImageView imageView = (ImageView) f4.b.a(view, i10);
                            if (imageView != null) {
                                i10 = R$id.ivCleanModeIcon;
                                ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                                if (imageView2 != null) {
                                    i10 = R$id.ivQualityIcon;
                                    ImageView imageView3 = (ImageView) f4.b.a(view, i10);
                                    if (imageView3 != null) {
                                        i10 = R$id.ivSpeedIcon;
                                        ImageView imageView4 = (ImageView) f4.b.a(view, i10);
                                        if (imageView4 != null) {
                                            i10 = R$id.ivSubtitleArrow;
                                            ImageView imageView5 = (ImageView) f4.b.a(view, i10);
                                            if (imageView5 != null) {
                                                i10 = R$id.ivSubtitleIcon;
                                                ImageView imageView6 = (ImageView) f4.b.a(view, i10);
                                                if (imageView6 != null) {
                                                    i10 = R$id.llSpeedOptions;
                                                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                                    if (linearLayout != null) {
                                                        i10 = R$id.rvQuality;
                                                        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                                        if (recyclerView != null) {
                                                            i10 = R$id.switchAutoplay;
                                                            SwitchButton switchButton = (SwitchButton) f4.b.a(view, i10);
                                                            if (switchButton != null) {
                                                                i10 = R$id.tvAutoplayTitle;
                                                                TextView textView = (TextView) f4.b.a(view, i10);
                                                                if (textView != null) {
                                                                    i10 = R$id.tvCleanModeTitle;
                                                                    TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                    if (textView2 != null) {
                                                                        i10 = R$id.tvQualityTitle;
                                                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                                                        if (textView3 != null) {
                                                                            i10 = R$id.tvSpeed05;
                                                                            GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                                                                            if (gradientTextView != null) {
                                                                                i10 = R$id.tvSpeed075;
                                                                                GradientTextView gradientTextView2 = (GradientTextView) f4.b.a(view, i10);
                                                                                if (gradientTextView2 != null) {
                                                                                    i10 = R$id.tvSpeed1;
                                                                                    GradientTextView gradientTextView3 = (GradientTextView) f4.b.a(view, i10);
                                                                                    if (gradientTextView3 != null) {
                                                                                        i10 = R$id.tvSpeed125;
                                                                                        GradientTextView gradientTextView4 = (GradientTextView) f4.b.a(view, i10);
                                                                                        if (gradientTextView4 != null) {
                                                                                            i10 = R$id.tvSpeed15;
                                                                                            GradientTextView gradientTextView5 = (GradientTextView) f4.b.a(view, i10);
                                                                                            if (gradientTextView5 != null) {
                                                                                                i10 = R$id.tvSpeed2;
                                                                                                GradientTextView gradientTextView6 = (GradientTextView) f4.b.a(view, i10);
                                                                                                if (gradientTextView6 != null) {
                                                                                                    i10 = R$id.tvSpeedTitle;
                                                                                                    TextView textView4 = (TextView) f4.b.a(view, i10);
                                                                                                    if (textView4 != null) {
                                                                                                        i10 = R$id.tvSubtitleTitle;
                                                                                                        TextView textView5 = (TextView) f4.b.a(view, i10);
                                                                                                        if (textView5 != null) {
                                                                                                            return new g((ConstraintLayout) view, bLConstraintLayout, bLConstraintLayout2, bLConstraintLayout3, bLConstraintLayout4, bLConstraintLayout5, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, linearLayout, recyclerView, switchButton, textView, textView2, textView3, gradientTextView, gradientTextView2, gradientTextView3, gradientTextView4, gradientTextView5, gradientTextView6, textView4, textView5);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_imm_video_setting, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f62651a;
    }
}
