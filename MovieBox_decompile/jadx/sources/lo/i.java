package lo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;

public final class i implements f4.a {

    private final FrameLayout f66074a;

    public final LinearLayout f66075b;

    public final RecyclerView f66076c;

    public final AppCompatTextView f66077d;

    private i(FrameLayout frameLayout, LinearLayout linearLayout, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f66074a = frameLayout;
        this.f66075b = linearLayout;
        this.f66076c = recyclerView;
        this.f66077d = appCompatTextView;
    }

    public static i a(View view) {
        int i10 = R$id.ll_gps;
        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
        if (linearLayout != null) {
            i10 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.tv_gps_btn;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    return new i((FrameLayout) view, linearLayout, recyclerView, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_select_location, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f66074a;
    }
}
