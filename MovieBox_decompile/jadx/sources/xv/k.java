package xv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

public final class k implements f4.a {

    private final LinearLayoutCompat f75968a;

    public final AppCompatImageView f75969b;

    public final AppCompatImageView f75970c;

    public final AppCompatImageView f75971d;

    public final AppCompatImageView f75972e;

    public final AppCompatTextView f75973f;

    private k(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatTextView appCompatTextView) {
        this.f75968a = linearLayoutCompat;
        this.f75969b = appCompatImageView;
        this.f75970c = appCompatImageView2;
        this.f75971d = appCompatImageView3;
        this.f75972e = appCompatImageView4;
        this.f75973f = appCompatTextView;
    }

    public static k a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivDance;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.ivLoop;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.ivShuffle;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView4 != null) {
                        i10 = R$id.tvTitle;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            return new k((LinearLayoutCompat) view, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_music_detail_list_operate_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f75968a;
    }
}
