package mx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;

public final class d implements f4.a {

    private final LinearLayout f66756a;

    public final RecyclerView f66757b;

    public final AppCompatTextView f66758c;

    public final AppCompatTextView f66759d;

    private d(LinearLayout linearLayout, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f66756a = linearLayout;
        this.f66757b = recyclerView;
        this.f66758c = appCompatTextView;
        this.f66759d = appCompatTextView2;
    }

    public static d a(View view) {
        int i10 = R$id.f58053rv;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.tv_post;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_skip;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    return new d((LinearLayout) view, recyclerView, appCompatTextView, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_interest, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66756a;
    }
}
