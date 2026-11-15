package wn;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.noober.background.view.BLImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.transsion.postdetail.R$id;

public final class a0 implements f4.a {

    private final View f74312a;

    public final AppCompatImageView f74313b;

    public final AppCompatImageView f74314c;

    public final BLTextView f74315d;

    public final BLView f74316e;

    public final BLImageView f74317f;

    private a0(View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, BLTextView bLTextView, BLView bLView, BLImageView bLImageView) {
        this.f74312a = view;
        this.f74313b = appCompatImageView;
        this.f74314c = appCompatImageView2;
        this.f74315d = bLTextView;
        this.f74316e = bLView;
        this.f74317f = bLImageView;
    }

    public static a0 a(View view) {
        int i10 = R$id.iv_short_tv_guide_arrow_1;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_short_tv_guide_arrow_2;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.tv_short_tv_guide_ep;
                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                if (bLTextView != null) {
                    i10 = R$id.tv_short_tv_guide_ep_bg;
                    BLView bLView = (BLView) f4.b.a(view, i10);
                    if (bLView != null) {
                        i10 = R$id.tv_short_tv_guide_list;
                        BLImageView bLImageView = (BLImageView) f4.b.a(view, i10);
                        if (bLImageView != null) {
                            return new a0(view, appCompatImageView, appCompatImageView2, bLTextView, bLView, bLImageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f74312a;
    }
}
