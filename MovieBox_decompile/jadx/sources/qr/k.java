package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.TnTextView;

public final class k implements f4.a {

    private final View f70072a;

    public final TnTextView f70073b;

    public final AppCompatImageView f70074c;

    public final AppCompatImageView f70075d;

    public final TnTextView f70076e;

    public final TnTextView f70077f;

    public final TnTextView f70078g;

    private k(View view, TnTextView tnTextView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TnTextView tnTextView2, TnTextView tnTextView3, TnTextView tnTextView4) {
        this.f70072a = view;
        this.f70073b = tnTextView;
        this.f70074c = appCompatImageView;
        this.f70075d = appCompatImageView2;
        this.f70076e = tnTextView2;
        this.f70077f = tnTextView3;
        this.f70078g = tnTextView4;
    }

    public static k a(View view) {
        int i10 = R$id.go_to_setting;
        TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
        if (tnTextView != null) {
            i10 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_no_connection;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.no_connection_title;
                    TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                    if (tnTextView2 != null) {
                        i10 = R$id.retry;
                        TnTextView tnTextView3 = (TnTextView) f4.b.a(view, i10);
                        if (tnTextView3 != null) {
                            i10 = R$id.tv_title;
                            TnTextView tnTextView4 = (TnTextView) f4.b.a(view, i10);
                            if (tnTextView4 != null) {
                                return new k(view, tnTextView, appCompatImageView, appCompatImageView2, tnTextView2, tnTextView3, tnTextView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.pugc_short_tv_view_content_no_connection, viewGroup);
        return a(viewGroup);
    }

    @Override
    public View getRoot() {
        return this.f70072a;
    }
}
