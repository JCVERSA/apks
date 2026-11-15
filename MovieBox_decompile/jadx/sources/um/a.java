package um;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$layout;

public final class a implements f4.a {

    private final ConstraintLayout f73187a;

    public final View f73188b;

    public final AppCompatImageView f73189c;

    public final ConstraintLayout f73190d;

    public final TextView f73191e;

    public final AppCompatTextView f73192f;

    public final ViewPager2 f73193g;

    private a(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, TextView textView, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f73187a = constraintLayout;
        this.f73188b = view;
        this.f73189c = appCompatImageView;
        this.f73190d = constraintLayout2;
        this.f73191e = textView;
        this.f73192f = appCompatTextView;
        this.f73193g = viewPager2;
    }

    public static a a(View view) {
        int i10 = R$id.btn_top;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.iv_download;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i10 = R$id.tv_pager;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.tvSaved;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.viewPager;
                        ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                        if (viewPager2 != null) {
                            return new a(constraintLayout, viewA, appCompatImageView, constraintLayout, textView, appCompatTextView, viewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_gif_image_preview, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f73187a;
    }
}
