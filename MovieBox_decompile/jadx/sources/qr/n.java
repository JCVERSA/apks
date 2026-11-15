package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv._channel.ui.widget.ShortTvTitleLayout;

public final class n implements f4.a {

    private final ConstraintLayout f70114a;

    public final FrameLayout f70115b;

    public final ShortTvTitleLayout f70116c;

    private n(ConstraintLayout constraintLayout, FrameLayout frameLayout, ShortTvTitleLayout shortTvTitleLayout) {
        this.f70114a = constraintLayout;
        this.f70115b = frameLayout;
        this.f70116c = shortTvTitleLayout;
    }

    public static n a(View view) {
        int i10 = R$id.content_layout;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.tool_bar;
            ShortTvTitleLayout shortTvTitleLayout = (ShortTvTitleLayout) f4.b.a(view, i10);
            if (shortTvTitleLayout != null) {
                return new n((ConstraintLayout) view, frameLayout, shortTvTitleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_activity_movie_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70114a;
    }
}
