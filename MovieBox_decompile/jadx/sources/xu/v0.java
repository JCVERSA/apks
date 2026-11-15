package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class v0 implements f4.a {

    private final ConstraintLayout f75789a;

    public final AppCompatImageView f75790b;

    public final TitleLayout f75791c;

    public final AppCompatTextView f75792d;

    public final AppCompatTextView f75793e;

    private v0(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f75789a = constraintLayout;
        this.f75790b = appCompatImageView;
        this.f75791c = titleLayout;
        this.f75792d = appCompatTextView;
        this.f75793e = appCompatTextView2;
    }

    public static v0 a(View view) {
        int i10 = R$id.iv_logo;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.toolbar;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                i10 = R$id.tv_privacy;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_version;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new v0((ConstraintLayout) view, appCompatImageView, titleLayout, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static v0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_setting_about_us, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75789a;
    }
}
