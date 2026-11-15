package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class h0 implements f4.a {

    private final ConstraintLayout f75591a;

    public final RecyclerView f75592b;

    public final AppCompatImageView f75593c;

    public final ConstraintLayout f75594d;

    private h0(ConstraintLayout constraintLayout, RecyclerView recyclerView, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2) {
        this.f75591a = constraintLayout;
        this.f75592b = recyclerView;
        this.f75593c = appCompatImageView;
        this.f75594d = constraintLayout2;
    }

    public static h0 a(View view) {
        int i10 = R$id.contentList;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.iv_qr_code;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                return new h0(constraintLayout, recyclerView, appCompatImageView, constraintLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_me, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75591a;
    }
}
