package qr;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv_pugc.base.widget.TnTextView;

public final class h implements f4.a {

    private final ConstraintLayout f70027a;

    public final RecyclerView f70028b;

    public final TnTextView f70029c;

    private h(ConstraintLayout constraintLayout, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f70027a = constraintLayout;
        this.f70028b = recyclerView;
        this.f70029c = tnTextView;
    }

    public static h a(View view) {
        int i10 = R$id.sub_operation_appointment_recycle;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.sub_operation_appointment_title;
            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
            if (tnTextView != null) {
                return new h((ConstraintLayout) view, recyclerView, tnTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70027a;
    }
}
