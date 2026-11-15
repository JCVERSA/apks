package sj;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.GradientTextView;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;

public final class k implements f4.a {

    private final ConstraintLayout f72320a;

    public final AppCompatImageView f72321b;

    public final LinearLayout f72322c;

    public final NativeWrapperAdView f72323d;

    public final TextView f72324e;

    public final GradientTextView f72325f;

    private k(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, LinearLayout linearLayout, NativeWrapperAdView nativeWrapperAdView, TextView textView, GradientTextView gradientTextView) {
        this.f72320a = constraintLayout;
        this.f72321b = appCompatImageView;
        this.f72322c = linearLayout;
        this.f72323d = nativeWrapperAdView;
        this.f72324e = textView;
        this.f72325f = gradientTextView;
    }

    public static k a(View view) {
        int i10 = R$id.ivRefresh;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.llChange;
            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
            if (linearLayout != null) {
                i10 = R$id.nativeWrapperAdView;
                NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
                if (nativeWrapperAdView != null) {
                    i10 = R$id.tvInstall;
                    TextView textView = (TextView) f4.b.a(view, i10);
                    if (textView != null) {
                        i10 = R$id.tvTryMore;
                        GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                        if (gradientTextView != null) {
                            return new k((ConstraintLayout) view, appCompatImageView, linearLayout, nativeWrapperAdView, textView, gradientTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_treasure_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f72320a;
    }
}
