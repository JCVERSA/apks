package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class d implements f4.a {

    private final ConstraintLayout f75526a;

    public final RecyclerView f75527b;

    public final AppCompatButton f75528c;

    public final TitleLayout f75529d;

    private d(ConstraintLayout constraintLayout, RecyclerView recyclerView, AppCompatButton appCompatButton, TitleLayout titleLayout) {
        this.f75526a = constraintLayout;
        this.f75527b = recyclerView;
        this.f75528c = appCompatButton;
        this.f75529d = titleLayout;
    }

    public static d a(View view) {
        int i10 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.submitButton;
            AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
            if (appCompatButton != null) {
                i10 = R$id.toolbar;
                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                if (titleLayout != null) {
                    return new d((ConstraintLayout) view, recyclerView, appCompatButton, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_labels_feedback, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75526a;
    }
}
