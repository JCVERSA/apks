package ki;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.audio.R$id;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class a implements f4.a {

    private final ConstraintLayout f63994a;

    public final AppCompatImageView f63995b;

    public final View f63996c;

    public final LinearLayoutCompat f63997d;

    public final MagicIndicator f63998e;

    public final TextView f63999f;

    public final ViewPager2 f64000g;

    private a(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, View view, LinearLayoutCompat linearLayoutCompat, MagicIndicator magicIndicator, TextView textView, ViewPager2 viewPager2) {
        this.f63994a = constraintLayout;
        this.f63995b = appCompatImageView;
        this.f63996c = view;
        this.f63997d = linearLayoutCompat;
        this.f63998e = magicIndicator;
        this.f63999f = textView;
        this.f64000g = viewPager2;
    }

    public static a a(View view) {
        View viewA;
        int i10 = R$id.iv_clear;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null && (viewA = f4.b.a(view, (i10 = R$id.line1))) != null) {
            i10 = R$id.ll_ctl;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.magic_indicator;
                MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                if (magicIndicator != null) {
                    i10 = R$id.tv_close;
                    TextView textView = (TextView) f4.b.a(view, i10);
                    if (textView != null) {
                        i10 = R$id.view_pager;
                        ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                        if (viewPager2 != null) {
                            return new a((ConstraintLayout) view, appCompatImageView, viewA, linearLayoutCompat, magicIndicator, textView, viewPager2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63994a;
    }
}
