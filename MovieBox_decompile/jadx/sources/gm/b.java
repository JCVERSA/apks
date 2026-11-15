package gm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.transsion.member.R$id;
import com.transsion.member.R$layout;

public final class b implements f4.a {

    private final LinearLayoutCompat f61083a;

    public final FrameLayout f61084b;

    public final j f61085c;

    public final AppCompatTextView f61086d;

    private b(LinearLayoutCompat linearLayoutCompat, FrameLayout frameLayout, j jVar, AppCompatTextView appCompatTextView) {
        this.f61083a = linearLayoutCompat;
        this.f61084b = frameLayout;
        this.f61085c = jVar;
        this.f61086d = appCompatTextView;
    }

    public static b a(View view) {
        View viewA;
        int i10 = R$id.container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null && (viewA = f4.b.a(view, (i10 = R$id.titleLayout))) != null) {
            j jVarA = j.a(viewA);
            int i11 = R$id.tvTotalCoin;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i11);
            if (appCompatTextView != null) {
                return new b((LinearLayoutCompat) view, frameLayout, jVarA, appCompatTextView);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_points_history_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f61083a;
    }
}
