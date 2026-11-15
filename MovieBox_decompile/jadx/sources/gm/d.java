package gm;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.member.R$id;

public final class d implements f4.a {

    private final GradientBorderView f61098a;

    public final GradientBorderView f61099b;

    public final LinearLayoutCompat f61100c;

    public final AppCompatTextView f61101d;

    public final ImageView f61102e;

    public final TextView f61103f;

    public final ImageView f61104g;

    public final TextView f61105h;

    private d(GradientBorderView gradientBorderView, GradientBorderView gradientBorderView2, LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, ImageView imageView, TextView textView, ImageView imageView2, TextView textView2) {
        this.f61098a = gradientBorderView;
        this.f61099b = gradientBorderView2;
        this.f61100c = linearLayoutCompat;
        this.f61101d = appCompatTextView;
        this.f61102e = imageView;
        this.f61103f = textView;
        this.f61104g = imageView2;
        this.f61105h = textView2;
    }

    public static d a(View view) {
        GradientBorderView gradientBorderView = (GradientBorderView) view;
        int i10 = R$id.explore;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
        if (linearLayoutCompat != null) {
            i10 = R$id.explore_title;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.iv_close;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null) {
                    i10 = R$id.iv_detail;
                    TextView textView = (TextView) f4.b.a(view, i10);
                    if (textView != null) {
                        i10 = R$id.iv_premium_mask;
                        ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                        if (imageView2 != null) {
                            i10 = R$id.iv_title;
                            TextView textView2 = (TextView) f4.b.a(view, i10);
                            if (textView2 != null) {
                                return new d(gradientBorderView, gradientBorderView, linearLayoutCompat, appCompatTextView, imageView, textView, imageView2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public GradientBorderView getRoot() {
        return this.f61098a;
    }
}
