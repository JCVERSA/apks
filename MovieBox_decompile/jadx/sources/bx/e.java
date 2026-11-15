package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.tn.lib.view.TitleLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class e implements f4.a {

    private final LinearLayout f15995a;

    public final FrameLayout f15996b;

    public final TitleLayout f15997c;

    private e(LinearLayout linearLayout, FrameLayout frameLayout, TitleLayout titleLayout) {
        this.f15995a = linearLayout;
        this.f15996b = frameLayout;
        this.f15997c = titleLayout;
    }

    public static e a(View view) {
        int i10 = R$id.fl_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                return new e((LinearLayout) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_transfer, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f15995a;
    }
}
