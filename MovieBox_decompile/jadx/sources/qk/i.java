package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.BlurredSectorView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class i implements f4.a {

    private final ConstraintLayout f69765a;

    public final FrameLayout f69766b;

    public final AppCompatImageView f69767c;

    public final AppCompatImageView f69768d;

    public final FrameLayout f69769e;

    public final ConstraintLayout f69770f;

    public final TnTextView f69771g;

    public final View f69772h;

    public final TextView f69773i;

    public final BlurredSectorView f69774j;

    private i(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, FrameLayout frameLayout2, ConstraintLayout constraintLayout2, TnTextView tnTextView, View view, TextView textView, BlurredSectorView blurredSectorView) {
        this.f69765a = constraintLayout;
        this.f69766b = frameLayout;
        this.f69767c = appCompatImageView;
        this.f69768d = appCompatImageView2;
        this.f69769e = frameLayout2;
        this.f69770f = constraintLayout2;
        this.f69771g = tnTextView;
        this.f69772h = view;
        this.f69773i = textView;
        this.f69774j = blurredSectorView;
    }

    public static i a(View view) {
        View viewA;
        int i10 = R$id.bottom_op_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.bottom_op_mb_logo;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.bottom_op_search_appstore;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.bottom_op_search_gamestore;
                    FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout2 != null) {
                        i10 = R$id.bottom_op_search_liner;
                        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                        if (constraintLayout != null) {
                            i10 = R$id.bottom_op_search_text;
                            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                            if (tnTextView != null && (viewA = f4.b.a(view, (i10 = R$id.divider_line))) != null) {
                                i10 = R$id.subscription_title;
                                TextView textView = (TextView) f4.b.a(view, i10);
                                if (textView != null) {
                                    i10 = R$id.trending_bottom_bg;
                                    BlurredSectorView blurredSectorView = (BlurredSectorView) f4.b.a(view, i10);
                                    if (blurredSectorView != null) {
                                        return new i((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatImageView2, frameLayout2, constraintLayout, tnTextView, viewA, textView, blurredSectorView);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_bottom_op_subscription, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69765a;
    }
}
