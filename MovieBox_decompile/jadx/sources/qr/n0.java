package qr;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;

public final class n0 implements f4.a {

    private final ConstraintLayout f70117a;

    public final RecyclerView f70118b;

    public final TextView f70119c;

    private n0(ConstraintLayout constraintLayout, RecyclerView recyclerView, TextView textView) {
        this.f70117a = constraintLayout;
        this.f70118b = recyclerView;
        this.f70119c = textView;
    }

    public static n0 a(View view) {
        int i10 = R$id.sub_operation_variable_recycle;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.sub_operation_variable_title;
            TextView textView = (TextView) f4.b.a(view, i10);
            if (textView != null) {
                return new n0((ConstraintLayout) view, recyclerView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70117a;
    }
}
