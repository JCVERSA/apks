package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.tn.lib.widget.TnTextView;
import com.transsnet.downloader.R$id;

public final class q implements f4.a {

    private final View f16209a;

    public final AppCompatImageView f16210b;

    public final LinearLayoutCompat f16211c;

    public final TnTextView f16212d;

    private q(View view, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat, TnTextView tnTextView) {
        this.f16209a = view;
        this.f16210b = appCompatImageView;
        this.f16211c = linearLayoutCompat;
        this.f16212d = tnTextView;
    }

    public static q a(View view) {
        int i10 = R$id.iv_icon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ll_download_inner;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.tv_tips;
                TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                if (tnTextView != null) {
                    return new q(view, appCompatImageView, linearLayoutCompat, tnTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f16209a;
    }
}
