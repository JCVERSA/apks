package qr;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.base.widget.TnTextView;

public final class o0 implements f4.a {

    private final ConstraintLayout f70122a;

    public final TnTextView f70123b;

    public final RecyclerView f70124c;

    public final TnTextView f70125d;

    private o0(ConstraintLayout constraintLayout, TnTextView tnTextView, RecyclerView recyclerView, TnTextView tnTextView2) {
        this.f70122a = constraintLayout;
        this.f70123b = tnTextView;
        this.f70124c = recyclerView;
        this.f70125d = tnTextView2;
    }

    public static o0 a(View view) {
        int i10 = R$id.main_operation_movie_more_text;
        TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
        if (tnTextView != null) {
            i10 = R$id.main_operation_movie_rank_recycler;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.main_operation_movie_rank_title;
                TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                if (tnTextView2 != null) {
                    return new o0((ConstraintLayout) view, tnTextView, recyclerView, tnTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70122a;
    }
}
