package qr;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.base.widget.TnTextView;

public final class u implements f4.a {

    private final View f70175a;

    public final AppCompatImageView f70176b;

    public final LinearLayoutCompat f70177c;

    public final TnTextView f70178d;

    private u(View view, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat, TnTextView tnTextView) {
        this.f70175a = view;
        this.f70176b = appCompatImageView;
        this.f70177c = linearLayoutCompat;
        this.f70178d = tnTextView;
    }

    public static u a(View view) {
        int i10 = R$id.iv_icon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ll_download_inner;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.short_tv_tips;
                TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                if (tnTextView != null) {
                    return new u(view, appCompatImageView, linearLayoutCompat, tnTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f70175a;
    }
}
