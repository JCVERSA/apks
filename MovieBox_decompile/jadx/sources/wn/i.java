package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

public final class i implements f4.a {

    private final ConstraintLayout f74402a;

    public final View f74403b;

    public final ImageView f74404c;

    public final ConstraintLayout f74405d;

    public final SwipeRefreshLayout f74406e;

    public final TextView f74407f;

    public final RecyclerView f74408g;

    private i(ConstraintLayout constraintLayout, View view, ImageView imageView, ConstraintLayout constraintLayout2, SwipeRefreshLayout swipeRefreshLayout, TextView textView, RecyclerView recyclerView) {
        this.f74402a = constraintLayout;
        this.f74403b = view;
        this.f74404c = imageView;
        this.f74405d = constraintLayout2;
        this.f74406e = swipeRefreshLayout;
        this.f74407f = textView;
        this.f74408g = recyclerView;
    }

    public static i a(View view) {
        int i10 = R$id.divider_line;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.iv_back;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.mTitleLayout;
                ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout != null) {
                    i10 = R$id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
                    if (swipeRefreshLayout != null) {
                        i10 = R$id.tv_title;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.waterfallRecyclerView;
                            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                            if (recyclerView != null) {
                                return new i((ConstraintLayout) view, viewA, imageView, constraintLayout, swipeRefreshLayout, textView, recyclerView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_favorite_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74402a;
    }
}
