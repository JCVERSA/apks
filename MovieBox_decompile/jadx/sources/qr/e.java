package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.ShortTvGradientTextView;

public final class e implements f4.a {

    private final FrameLayout f70002a;

    public final FrameLayout f70003b;

    public final AppCompatTextView f70004c;

    public final ShortTvGradientTextView f70005d;

    private e(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, ShortTvGradientTextView shortTvGradientTextView) {
        this.f70002a = frameLayout;
        this.f70003b = frameLayout2;
        this.f70004c = appCompatTextView;
        this.f70005d = shortTvGradientTextView;
    }

    public static e a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R$id.tvName;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tvNameSelected;
            ShortTvGradientTextView shortTvGradientTextView = (ShortTvGradientTextView) f4.b.a(view, i10);
            if (shortTvGradientTextView != null) {
                return new e(frameLayout, frameLayout, appCompatTextView, shortTvGradientTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pugc_short_tv_item_language_select, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f70002a;
    }
}
