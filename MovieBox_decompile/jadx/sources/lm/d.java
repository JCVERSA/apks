package lm;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.tn.lib.view.MaxHeightNestedScrollView;
import com.transsion.moviedetail.R$id;

public final class d implements f4.a {

    private final BLLinearLayout f65749a;

    public final ImageView f65750b;

    public final LinearLayoutCompat f65751c;

    public final MaxHeightNestedScrollView f65752d;

    public final BLTextView f65753e;

    public final BLTextView f65754f;

    public final AppCompatTextView f65755g;

    public final AppCompatTextView f65756h;

    private d(BLLinearLayout bLLinearLayout, ImageView imageView, LinearLayoutCompat linearLayoutCompat, MaxHeightNestedScrollView maxHeightNestedScrollView, BLTextView bLTextView, BLTextView bLTextView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f65749a = bLLinearLayout;
        this.f65750b = imageView;
        this.f65751c = linearLayoutCompat;
        this.f65752d = maxHeightNestedScrollView;
        this.f65753e = bLTextView;
        this.f65754f = bLTextView2;
        this.f65755g = appCompatTextView;
        this.f65756h = appCompatTextView2;
    }

    public static d a(View view) {
        int i10 = R$id.iv_select;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.ll_select;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.ns_tips;
                MaxHeightNestedScrollView maxHeightNestedScrollView = (MaxHeightNestedScrollView) f4.b.a(view, i10);
                if (maxHeightNestedScrollView != null) {
                    i10 = R$id.tv_back;
                    BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                    if (bLTextView != null) {
                        i10 = R$id.tv_confirm;
                        BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
                        if (bLTextView2 != null) {
                            i10 = R$id.tv_tips;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tv_title;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    return new d((BLLinearLayout) view, imageView, linearLayoutCompat, maxHeightNestedScrollView, bLTextView, bLTextView2, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public BLLinearLayout getRoot() {
        return this.f65749a;
    }
}
