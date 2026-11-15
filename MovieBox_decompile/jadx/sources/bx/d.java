package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.tn.lib.view.TitleLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class d implements f4.a {

    private final FrameLayout f15988a;

    public final FrameLayout f15989b;

    public final TitleLayout f15990c;

    private d(FrameLayout frameLayout, FrameLayout frameLayout2, TitleLayout titleLayout) {
        this.f15988a = frameLayout;
        this.f15989b = frameLayout2;
        this.f15990c = titleLayout;
    }

    public static d a(View view) {
        int i10 = R$id.container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.title_layout;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                return new d((FrameLayout) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_my_downloads, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f15988a;
    }
}
