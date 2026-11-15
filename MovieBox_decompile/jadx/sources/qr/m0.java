package qr;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.base.widget.TnTextView;

public final class m0 implements f4.a {

    private final ConstraintLayout f70111a;

    public final RecyclerView f70112b;

    public final TnTextView f70113c;

    private m0(ConstraintLayout constraintLayout, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f70111a = constraintLayout;
        this.f70112b = recyclerView;
        this.f70113c = tnTextView;
    }

    public static m0 a(View view) {
        int i10 = R$id.sub_operation_appointment_recycle;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.sub_operation_appointment_title;
            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
            if (tnTextView != null) {
                return new m0((ConstraintLayout) view, recyclerView, tnTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70111a;
    }
}
