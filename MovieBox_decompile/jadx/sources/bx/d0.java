package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class d0 implements f4.a {

    private final FrameLayout f15991a;

    public final z0 f15992b;

    private d0(FrameLayout frameLayout, z0 z0Var) {
        this.f15991a = frameLayout;
        this.f15992b = z0Var;
    }

    public static d0 a(View view) {
        int i10 = R$id.included_content;
        View viewA = f4.b.a(view, i10);
        if (viewA == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new d0((FrameLayout) view, z0.a(viewA));
    }

    public static d0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_path_setting, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f15991a;
    }
}
