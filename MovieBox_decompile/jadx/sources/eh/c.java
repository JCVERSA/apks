package eh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.TnTextView;

public final class c implements f4.a {

    private final View f59680a;

    public final AppCompatImageView f59681b;

    public final TnTextView f59682c;

    public final LinearLayoutCompat f59683d;

    public final TitleLayout f59684e;

    public final TnTextView f59685f;

    public final TnTextView f59686g;

    private c(View view, AppCompatImageView appCompatImageView, TnTextView tnTextView, LinearLayoutCompat linearLayoutCompat, TitleLayout titleLayout, TnTextView tnTextView2, TnTextView tnTextView3) {
        this.f59680a = view;
        this.f59681b = appCompatImageView;
        this.f59682c = tnTextView;
        this.f59683d = linearLayoutCompat;
        this.f59684e = titleLayout;
        this.f59685f = tnTextView2;
        this.f59686g = tnTextView3;
    }

    public static c a(View view) {
        int i10 = R$id.bg_no_connection;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.go_to_setting;
            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
            if (tnTextView != null) {
                i10 = R$id.ll_no_connection_tip;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                if (linearLayoutCompat != null) {
                    i10 = R$id.ll_title;
                    TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                    if (titleLayout != null) {
                        i10 = R$id.no_connection_title;
                        TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                        if (tnTextView2 != null) {
                            i10 = R$id.retry;
                            TnTextView tnTextView3 = (TnTextView) f4.b.a(view, i10);
                            if (tnTextView3 != null) {
                                return new c(view, appCompatImageView, tnTextView, linearLayoutCompat, titleLayout, tnTextView2, tnTextView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.view_no_connection, viewGroup);
        return a(viewGroup);
    }

    @Override
    public View getRoot() {
        return this.f59680a;
    }
}
