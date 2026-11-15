package sj;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.task.wheel.LuckyWheelView;

public final class f implements f4.a {

    private final LinearLayout f72281a;

    public final AppCompatImageView f72282b;

    public final LuckyWheelView f72283c;

    public final LinearLayout f72284d;

    public final TextView f72285e;

    public final TextView f72286f;

    public final TextView f72287g;

    private f(LinearLayout linearLayout, AppCompatImageView appCompatImageView, LuckyWheelView luckyWheelView, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.f72281a = linearLayout;
        this.f72282b = appCompatImageView;
        this.f72283c = luckyWheelView;
        this.f72284d = linearLayout2;
        this.f72285e = textView;
        this.f72286f = textView2;
        this.f72287g = textView3;
    }

    public static f a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.luckyWheel;
            LuckyWheelView luckyWheelView = (LuckyWheelView) f4.b.a(view, i10);
            if (luckyWheelView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i10 = R$id.spinNowBtn;
                TextView textView = (TextView) f4.b.a(view, i10);
                if (textView != null) {
                    i10 = R$id.tvTitle1;
                    TextView textView2 = (TextView) f4.b.a(view, i10);
                    if (textView2 != null) {
                        i10 = R$id.tvTitle2;
                        TextView textView3 = (TextView) f4.b.a(view, i10);
                        if (textView3 != null) {
                            return new f(linearLayout, appCompatImageView, luckyWheelView, linearLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72281a;
    }
}
