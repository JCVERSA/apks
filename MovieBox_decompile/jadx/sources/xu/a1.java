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

public final class a1 implements f4.a {

    private final ConstraintLayout f75488a;

    public final View f75489b;

    public final AppCompatImageView f75490c;

    public final AppCompatTextView f75491d;

    public final AppCompatTextView f75492e;

    public final AppCompatTextView f75493f;

    public final AppCompatImageView f75494g;

    public final AppCompatTextView f75495h;

    public final AppCompatTextView f75496i;

    public final TitleLayout f75497j;

    private a1(ConstraintLayout constraintLayout, View view, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, TitleLayout titleLayout) {
        this.f75488a = constraintLayout;
        this.f75489b = view;
        this.f75490c = appCompatImageView;
        this.f75491d = appCompatTextView;
        this.f75492e = appCompatTextView2;
        this.f75493f = appCompatTextView3;
        this.f75494g = appCompatImageView2;
        this.f75495h = appCompatTextView4;
        this.f75496i = appCompatTextView5;
        this.f75497j = titleLayout;
    }

    public static a1 a(View view) {
        int i10 = R$id.bgView;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.downloadIV;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.downloadTip;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.downloadTv;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.restartTV;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            i10 = R$id.streamIV;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView2 != null) {
                                i10 = R$id.streamTip;
                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView4 != null) {
                                    i10 = R$id.streamTv;
                                    AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView5 != null) {
                                        i10 = R$id.titleLayout;
                                        TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                                        if (titleLayout != null) {
                                            return new a1((ConstraintLayout) view, viewA, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatImageView2, appCompatTextView4, appCompatTextView5, titleLayout);
                                        }
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

    public static a1 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a1 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_setting_watch, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75488a;
    }
}
