package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.ShortTvGradientTextView;

public final class f0 implements f4.a {

    private final FrameLayout f70014a;

    public final FrameLayout f70015b;

    public final AppCompatTextView f70016c;

    public final ShortTvGradientTextView f70017d;

    private f0(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, ShortTvGradientTextView shortTvGradientTextView) {
        this.f70014a = frameLayout;
        this.f70015b = frameLayout2;
        this.f70016c = appCompatTextView;
        this.f70017d = shortTvGradientTextView;
    }

    public static f0 a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R$id.tvName;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tvNameSelected;
            ShortTvGradientTextView shortTvGradientTextView = (ShortTvGradientTextView) f4.b.a(view, i10);
            if (shortTvGradientTextView != null) {
                return new f0(frameLayout, frameLayout, appCompatTextView, shortTvGradientTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_item_language_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f70014a;
    }
}
