package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class i0 implements f4.a {

    private final ConstraintLayout f16085a;

    public final RecyclerView f16086b;

    public final TnTextView f16087c;

    public final TnTextView f16088d;

    public final View f16089e;

    private i0(ConstraintLayout constraintLayout, RecyclerView recyclerView, TnTextView tnTextView, TnTextView tnTextView2, View view) {
        this.f16085a = constraintLayout;
        this.f16086b = recyclerView;
        this.f16087c = tnTextView;
        this.f16088d = tnTextView2;
        this.f16089e = view;
    }

    public static i0 a(View view) {
        View viewA;
        int i10 = R$id.historyRv;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tvAll;
            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
            if (tnTextView != null) {
                i10 = R$id.tvTitle;
                TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                if (tnTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.vLine))) != null) {
                    return new i0((ConstraintLayout) view, recyclerView, tnTextView, tnTextView2, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_history_play_record_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16085a;
    }
}
