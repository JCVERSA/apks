package wn;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.postdetail.R$id;

public final class c0 implements f4.a {

    private final LinearLayoutCompat f74329a;

    public final AppCompatTextView f74330b;

    public final AppCompatTextView f74331c;

    public final AppCompatTextView f74332d;

    private c0(LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f74329a = linearLayoutCompat;
        this.f74330b = appCompatTextView;
        this.f74331c = appCompatTextView2;
        this.f74332d = appCompatTextView3;
    }

    public static c0 a(View view) {
        int i10 = R$id.iv_all;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.iv_hottest;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.iv_latest;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView3 != null) {
                    return new c0((LinearLayoutCompat) view, appCompatTextView, appCompatTextView2, appCompatTextView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f74329a;
    }
}
