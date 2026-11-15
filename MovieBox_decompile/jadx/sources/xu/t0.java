package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class t0 implements f4.a {

    private final ConstraintLayout f75763a;

    public final ScrollView f75764b;

    public final TitleLayout f75765c;

    public final AppCompatTextView f75766d;

    public final AppCompatTextView f75767e;

    private t0(ConstraintLayout constraintLayout, ScrollView scrollView, TitleLayout titleLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f75763a = constraintLayout;
        this.f75764b = scrollView;
        this.f75765c = titleLayout;
        this.f75766d = appCompatTextView;
        this.f75767e = appCompatTextView2;
    }

    public static t0 a(View view) {
        int i10 = R$id.scrollView;
        ScrollView scrollView = (ScrollView) f4.b.a(view, i10);
        if (scrollView != null) {
            i10 = R$id.titleLayout;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                i10 = R$id.tvMessage;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tvPostTime;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new t0((ConstraintLayout) view, scrollView, titleLayout, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static t0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75763a;
    }
}
