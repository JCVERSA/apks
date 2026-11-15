package mx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.country.widget.SideBar;

public final class i implements f4.a {

    private final ConstraintLayout f66801a;

    public final AppCompatImageView f66802b;

    public final View f66803c;

    public final RecyclerView f66804d;

    public final SideBar f66805e;

    private i(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, View view, RecyclerView recyclerView, SideBar sideBar) {
        this.f66801a = constraintLayout;
        this.f66802b = appCompatImageView;
        this.f66803c = view;
        this.f66804d = recyclerView;
        this.f66805e = sideBar;
    }

    public static i a(View view) {
        View viewA;
        int i10 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null && (viewA = f4.b.a(view, (i10 = R$id.line))) != null) {
            i10 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.side_bar;
                SideBar sideBar = (SideBar) f4.b.a(view, i10);
                if (sideBar != null) {
                    return new i((ConstraintLayout) view, appCompatImageView, viewA, recyclerView, sideBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_sel_country, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66801a;
    }
}
