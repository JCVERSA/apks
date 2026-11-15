package sj;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.R$layout;

public final class i implements f4.a {

    private final LinearLayoutCompat f72308a;

    public final RecyclerView f72309b;

    public final TitleLayout f72310c;

    private i(LinearLayoutCompat linearLayoutCompat, RecyclerView recyclerView, TitleLayout titleLayout) {
        this.f72308a = linearLayoutCompat;
        this.f72309b = recyclerView;
        this.f72310c = titleLayout;
    }

    public static i a(View view) {
        int i10 = R$id.rv_game_list;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.title_layout;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                return new i((LinearLayoutCompat) view, recyclerView, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_game_center, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f72308a;
    }
}
