package ki;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.audio.R$id;
import com.transsion.audio.R$layout;

public final class c implements f4.a {

    private final LinearLayoutCompat f64003a;

    public final AppCompatImageView f64004b;

    public final ShapeableImageView f64005c;

    public final LinearLayoutCompat f64006d;

    public final RecyclerView f64007e;

    public final SwipeRefreshLayout f64008f;

    public final AppCompatTextView f64009g;

    private c(LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, LinearLayoutCompat linearLayoutCompat2, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, AppCompatTextView appCompatTextView) {
        this.f64003a = linearLayoutCompat;
        this.f64004b = appCompatImageView;
        this.f64005c = shapeableImageView;
        this.f64006d = linearLayoutCompat2;
        this.f64007e = recyclerView;
        this.f64008f = swipeRefreshLayout;
        this.f64009g = appCompatTextView;
    }

    public static c a(View view) {
        int i10 = R$id.iv_enter;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_subject_cover;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                i10 = R$id.ll_subject;
                LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
                if (linearLayoutCompat != null) {
                    i10 = R$id.rv_list;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        i10 = R$id.swipe_refresh;
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
                        if (swipeRefreshLayout != null) {
                            i10 = R$id.tv_subject_name;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                return new c((LinearLayoutCompat) view, appCompatImageView, shapeableImageView, linearLayoutCompat, recyclerView, swipeRefreshLayout, appCompatTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_relate_subject, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f64003a;
    }
}
