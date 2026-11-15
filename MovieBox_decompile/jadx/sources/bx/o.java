package bx;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.view.indicator.CircleIndicator;
import com.transsnet.downloader.R$id;

public final class o implements f4.a {

    private final LinearLayout f16183a;

    public final TextView f16184b;

    public final ViewPager2 f16185c;

    public final CircleIndicator f16186d;

    public final AppCompatImageView f16187e;

    public final TextView f16188f;

    public final TextView f16189g;

    private o(LinearLayout linearLayout, TextView textView, ViewPager2 viewPager2, CircleIndicator circleIndicator, AppCompatImageView appCompatImageView, TextView textView2, TextView textView3) {
        this.f16183a = linearLayout;
        this.f16184b = textView;
        this.f16185c = viewPager2;
        this.f16186d = circleIndicator;
        this.f16187e = appCompatImageView;
        this.f16188f = textView2;
        this.f16189g = textView3;
    }

    public static o a(View view) {
        int i10 = R$id.guide_desc;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.guide_pager;
            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
            if (viewPager2 != null) {
                i10 = R$id.indicator;
                CircleIndicator circleIndicator = (CircleIndicator) f4.b.a(view, i10);
                if (circleIndicator != null) {
                    i10 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.next;
                        TextView textView2 = (TextView) f4.b.a(view, i10);
                        if (textView2 != null) {
                            i10 = R$id.title;
                            TextView textView3 = (TextView) f4.b.a(view, i10);
                            if (textView3 != null) {
                                return new o((LinearLayout) view, textView, viewPager2, circleIndicator, appCompatImageView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f16183a;
    }
}
