package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class u implements f4.a {

    private final LinearLayoutCompat f72176a;

    public final Button f72177b;

    public final Button f72178c;

    public final Button f72179d;

    public final RecyclerView f72180e;

    public final AppCompatTextView f72181f;

    private u(LinearLayoutCompat linearLayoutCompat, Button button, Button button2, Button button3, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f72176a = linearLayoutCompat;
        this.f72177b = button;
        this.f72178c = button2;
        this.f72179d = button3;
        this.f72180e = recyclerView;
        this.f72181f = appCompatTextView;
    }

    public static u a(View view) {
        int i10 = R$id.btn;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.btnLogger;
            Button button2 = (Button) f4.b.a(view, i10);
            if (button2 != null) {
                i10 = R$id.btnRequestDetailLog;
                Button button3 = (Button) f4.b.a(view, i10);
                if (button3 != null) {
                    i10 = R$id.f40773rv;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        i10 = R$id.tvConfig;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            return new u((LinearLayoutCompat) view, button, button2, button3, recyclerView, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static u c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_ps_offer_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f72176a;
    }
}
