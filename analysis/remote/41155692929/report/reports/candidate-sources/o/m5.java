package o;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.snaptube.premium.R;

public final class m5 implements hw8 {
    public final ConstraintLayout a;
    public final Barrier b;
    public final ImageView c;
    public final ImageView d;
    public final ScrollView e;
    public final Toolbar f;
    public final TextView g;
    public final TextView h;
    public final TextView i;
    public final TextView j;
    public final xy8 k;

    public m5(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, ImageView imageView2, ScrollView scrollView, Toolbar toolbar, TextView textView, TextView textView2, TextView textView3, TextView textView4, xy8 xy8Var) {
        this.a = constraintLayout;
        this.b = barrier;
        this.c = imageView;
        this.d = imageView2;
        this.e = scrollView;
        this.f = toolbar;
        this.g = textView;
        this.h = textView2;
        this.i = textView3;
        this.j = textView4;
        this.k = xy8Var;
    }

    public static m5 a(View view) {
        int i = R.id.barrier_bottom;
        Barrier barrier = (Barrier) iw8.a(view, R.id.barrier_bottom);
        if (barrier != null) {
            i = R.id.iv_bg;
            ImageView imageView = (ImageView) iw8.a(view, R.id.iv_bg);
            if (imageView != null) {
                i = R.id.iv_feedback;
                ImageView imageView2 = (ImageView) iw8.a(view, R.id.iv_feedback);
                if (imageView2 != null) {
                    i = R.id.scroll_view;
                    ScrollView scrollView = (ScrollView) iw8.a(view, R.id.scroll_view);
                    if (scrollView != null) {
                        i = R.id.toolbar;
                        Toolbar toolbar = (Toolbar) iw8.a(view, R.id.toolbar);
                        if (toolbar != null) {
                            i = R.id.tv_changelog;
                            TextView textView = (TextView) iw8.a(view, R.id.tv_changelog);
                            if (textView != null) {
                                i = R.id.tv_security_tips;
                                TextView textView2 = (TextView) iw8.a(view, R.id.tv_security_tips);
                                if (textView2 != null) {
                                    i = R.id.tv_update_subtitle;
                                    TextView textView3 = (TextView) iw8.a(view, R.id.tv_update_subtitle);
                                    if (textView3 != null) {
                                        i = R.id.tv_update_title;
                                        TextView textView4 = (TextView) iw8.a(view, R.id.tv_update_title);
                                        if (textView4 != null) {
                                            i = R.id.upgrade_progress_layout;
                                            View viewA = iw8.a(view, R.id.upgrade_progress_layout);
                                            if (viewA != null) {
                                                return new m5((ConstraintLayout) view, barrier, imageView, imageView2, scrollView, toolbar, textView, textView2, textView3, textView4, xy8.a(viewA));
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
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static m5 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m5 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_force_upgrade, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    public ConstraintLayout b() {
        return this.a;
    }
}
