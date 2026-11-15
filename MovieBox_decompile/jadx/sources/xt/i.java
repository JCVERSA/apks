package xt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$layout;

public final class i implements f4.a {

    private final RelativeLayout f75478a;

    public final RecyclerView f75479b;

    public final LinearLayout f75480c;

    private i(RelativeLayout relativeLayout, RecyclerView recyclerView, LinearLayout linearLayout) {
        this.f75478a = relativeLayout;
        this.f75479b = recyclerView;
        this.f75480c = linearLayout;
    }

    public static i a(View view) {
        int i10 = R$id.transfer_sent_file_list;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.transfer_sent_file_list_empty;
            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
            if (linearLayout != null) {
                return new i((RelativeLayout) view, recyclerView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_transfer_sent, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.f75478a;
    }
}
