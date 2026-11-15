package dt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.subroom.R$id;
import com.transsion.subroom.R$layout;

public final class b implements f4.a {

    private final ConstraintLayout f59080a;

    public final AppCompatTextView f59081b;

    private b(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView) {
        this.f59080a = constraintLayout;
        this.f59081b = appCompatTextView;
    }

    public static b a(View view) {
        int i10 = R$id.tv_call;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            return new b((ConstraintLayout) view, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_not_available, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f59080a;
    }
}
