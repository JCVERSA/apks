package lo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;

public final class j implements f4.a {

    private final ConstraintLayout f66078a;

    public final AppCompatTextView f66079b;

    public final AppCompatTextView f66080c;

    public final View f66081d;

    private j(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f66078a = constraintLayout;
        this.f66079b = appCompatTextView;
        this.f66080c = appCompatTextView2;
        this.f66081d = view;
    }

    public static j a(View view) {
        View viewA;
        int i10 = R$id.tv_tips;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tv_title;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.v_line))) != null) {
                return new j((ConstraintLayout) view, appCompatTextView, appCompatTextView2, viewA);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.item_select_location, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66078a;
    }
}
