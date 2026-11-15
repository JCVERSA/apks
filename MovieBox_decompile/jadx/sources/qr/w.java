package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

public final class w implements f4.a {

    private final FrameLayout f70187a;

    public final FrameLayout f70188b;

    public final RecyclerView f70189c;

    private w(FrameLayout frameLayout, FrameLayout frameLayout2, RecyclerView recyclerView) {
        this.f70187a = frameLayout;
        this.f70188b = frameLayout2;
        this.f70189c = recyclerView;
    }

    public static w a(View view) {
        int i10 = R$id.loading;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.f50563rv;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                return new w((FrameLayout) view, frameLayout, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_dialog_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f70187a;
    }
}
