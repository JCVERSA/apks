package um;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLView;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$layout;
import com.transsion.ninegridview.preview.HackyViewPager;

public final class b implements f4.a {

    private final ConstraintLayout f73194a;

    public final BLView f73195b;

    public final BLView f73196c;

    public final ImageView f73197d;

    public final ConstraintLayout f73198e;

    public final View f73199f;

    public final AppCompatTextView f73200g;

    public final TextView f73201h;

    public final AppCompatTextView f73202i;

    public final HackyViewPager f73203j;

    private b(ConstraintLayout constraintLayout, BLView bLView, BLView bLView2, ImageView imageView, ConstraintLayout constraintLayout2, View view, AppCompatTextView appCompatTextView, TextView textView, AppCompatTextView appCompatTextView2, HackyViewPager hackyViewPager) {
        this.f73194a = constraintLayout;
        this.f73195b = bLView;
        this.f73196c = bLView2;
        this.f73197d = imageView;
        this.f73198e = constraintLayout2;
        this.f73199f = view;
        this.f73200g = appCompatTextView;
        this.f73201h = textView;
        this.f73202i = appCompatTextView2;
        this.f73203j = hackyViewPager;
    }

    public static b a(View view) {
        int i10 = R$id.bg_download;
        BLView bLView = (BLView) f4.b.a(view, i10);
        if (bLView != null) {
            i10 = R$id.bg_share;
            BLView bLView2 = (BLView) f4.b.a(view, i10);
            if (bLView2 != null) {
                i10 = R$id.iv_back;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i10 = R$id.statusSpace;
                    View viewA = f4.b.a(view, i10);
                    if (viewA != null) {
                        i10 = R$id.tv_download;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tv_pager;
                            TextView textView = (TextView) f4.b.a(view, i10);
                            if (textView != null) {
                                i10 = R$id.tv_share;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    i10 = R$id.viewPager;
                                    HackyViewPager hackyViewPager = (HackyViewPager) f4.b.a(view, i10);
                                    if (hackyViewPager != null) {
                                        return new b(constraintLayout, bLView, bLView2, imageView, constraintLayout, viewA, appCompatTextView, textView, appCompatTextView2, hackyViewPager);
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

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_preview, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f73194a;
    }
}
