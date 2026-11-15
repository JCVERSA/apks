package xt;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.transfer.R$id;

public final class g implements f4.a {

    private final FrameLayout f75470a;

    public final AppCompatImageView f75471b;

    public final AppCompatImageView f75472c;

    public final AppCompatTextView f75473d;

    public final AppCompatTextView f75474e;

    private g(FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f75470a = frameLayout;
        this.f75471b = appCompatImageView;
        this.f75472c = appCompatImageView2;
        this.f75473d = appCompatTextView;
        this.f75474e = appCompatTextView2;
    }

    public static g a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivLoading;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.tvDevicesName;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tvWifiSsid;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new g((FrameLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75470a;
    }
}
