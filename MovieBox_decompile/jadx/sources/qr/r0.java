package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.TnTextView;

public final class r0 implements f4.a {

    private final View f70152a;

    public final TnTextView f70153b;

    public final AppCompatImageView f70154c;

    public final AppCompatImageView f70155d;

    public final TnTextView f70156e;

    public final TnTextView f70157f;

    public final TnTextView f70158g;

    private r0(View view, TnTextView tnTextView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, TnTextView tnTextView2, TnTextView tnTextView3, TnTextView tnTextView4) {
        this.f70152a = view;
        this.f70153b = tnTextView;
        this.f70154c = appCompatImageView;
        this.f70155d = appCompatImageView2;
        this.f70156e = tnTextView2;
        this.f70157f = tnTextView3;
        this.f70158g = tnTextView4;
    }

    public static r0 a(View view) {
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
                                return new r0(view, tnTextView, appCompatImageView, appCompatImageView2, tnTextView2, tnTextView3, tnTextView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static r0 b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.short_tv_view_content_no_connection, viewGroup);
        return a(viewGroup);
    }

    @Override
    public View getRoot() {
        return this.f70152a;
    }
}
