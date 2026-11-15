package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.tn.lib.view.TitleLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class c implements f4.a {

    private final LinearLayoutCompat f15956a;

    public final FrameLayout f15957b;

    public final TitleLayout f15958c;

    private c(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, TitleLayout titleLayout) {
        this.f15956a = linearLayoutCompat;
        this.f15957b = frameLayout;
        this.f15958c = titleLayout;
    }

    public static c a(View view) {
        int i10 = R$id.container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.title_layout;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                return new c((LinearLayoutCompat) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_download_series_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f15956a;
    }
}
