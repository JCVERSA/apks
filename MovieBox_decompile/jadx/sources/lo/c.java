package lo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.FixedViewPager;

public final class c implements f4.a {

    private final ConstraintLayout f66000a;

    public final Group f66001b;

    public final View f66002c;

    public final AppCompatImageButton f66003d;

    public final RelativeLayout f66004e;

    public final ProgressBar f66005f;

    public final TextView f66006g;

    public final ImageView f66007h;

    public final LinearLayout f66008i;

    public final TextView f66009j;

    public final TextView f66010k;

    public final TextView f66011l;

    public final TextView f66012m;

    public final FixedViewPager f66013n;

    private c(ConstraintLayout constraintLayout, Group group, View view, AppCompatImageButton appCompatImageButton, RelativeLayout relativeLayout, ProgressBar progressBar, TextView textView, ImageView imageView, LinearLayout linearLayout, TextView textView2, TextView textView3, TextView textView4, TextView textView5, FixedViewPager fixedViewPager) {
        this.f66000a = constraintLayout;
        this.f66001b = group;
        this.f66002c = view;
        this.f66003d = appCompatImageButton;
        this.f66004e = relativeLayout;
        this.f66005f = progressBar;
        this.f66006g = textView;
        this.f66007h = imageView;
        this.f66008i = linearLayout;
        this.f66009j = textView2;
        this.f66010k = textView3;
        this.f66011l = textView4;
        this.f66012m = textView5;
        this.f66013n = fixedViewPager;
    }

    public static c a(View view) {
        View viewA;
        int i10 = R$id.bottomGroup;
        Group group = (Group) f4.b.a(view, i10);
        if (group != null && (viewA = f4.b.a(view, (i10 = R$id.bottomLine))) != null) {
            i10 = R$id.btn_back;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
            if (appCompatImageButton != null) {
                i10 = R$id.clTitle;
                RelativeLayout relativeLayout = (RelativeLayout) f4.b.a(view, i10);
                if (relativeLayout != null) {
                    i10 = R$id.clip_loading;
                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                    if (progressBar != null) {
                        i10 = R$id.confirmTV;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.ivDelete;
                            ImageView imageView = (ImageView) f4.b.a(view, i10);
                            if (imageView != null) {
                                i10 = R$id.llSelect;
                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                if (linearLayout != null) {
                                    i10 = R$id.selectNumTV;
                                    TextView textView2 = (TextView) f4.b.a(view, i10);
                                    if (textView2 != null) {
                                        i10 = R$id.tv_num;
                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                        if (textView3 != null) {
                                            i10 = R$id.tvNumber;
                                            TextView textView4 = (TextView) f4.b.a(view, i10);
                                            if (textView4 != null) {
                                                i10 = R$id.tvSelect;
                                                TextView textView5 = (TextView) f4.b.a(view, i10);
                                                if (textView5 != null) {
                                                    i10 = R$id.f48218vp;
                                                    FixedViewPager fixedViewPager = (FixedViewPager) f4.b.a(view, i10);
                                                    if (fixedViewPager != null) {
                                                        return new c((ConstraintLayout) view, group, viewA, appCompatImageButton, relativeLayout, progressBar, textView, imageView, linearLayout, textView2, textView3, textView4, textView5, fixedViewPager);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_gallery, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66000a;
    }
}
