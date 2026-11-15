package bx;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.downloader.R$id;

public final class f implements f4.a {

    private final FrameLayout f16009a;

    public final AppCompatTextView f16010b;

    public final AppCompatTextView f16011c;

    public final AppCompatTextView f16012d;

    public final AppCompatTextView f16013e;

    private f(FrameLayout frameLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f16009a = frameLayout;
        this.f16010b = appCompatTextView;
        this.f16011c = appCompatTextView2;
        this.f16012d = appCompatTextView3;
        this.f16013e = appCompatTextView4;
    }

    public static f a(View view) {
        int i10 = R$id.btn_no;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_yes;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.tv_tips;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView3 != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView4 != null) {
                        return new f((FrameLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16009a;
    }
}
