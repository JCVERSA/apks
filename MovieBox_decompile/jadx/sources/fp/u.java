package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class u implements f4.a {

    private final ConstraintLayout f60443a;

    public final View f60444b;

    public final RecyclerView f60445c;

    public final ImageView f60446d;

    public final ConstraintLayout f60447e;

    public final SwipeRefreshLayout f60448f;

    public final TextView f60449g;

    private u(ConstraintLayout constraintLayout, View view, RecyclerView recyclerView, ImageView imageView, ConstraintLayout constraintLayout2, SwipeRefreshLayout swipeRefreshLayout, TextView textView) {
        this.f60443a = constraintLayout;
        this.f60444b = view;
        this.f60445c = recyclerView;
        this.f60446d = imageView;
        this.f60447e = constraintLayout2;
        this.f60448f = swipeRefreshLayout;
        this.f60449g = textView;
    }

    public static u a(View view) {
        int i10 = R$id.divider_line;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.followingsRecyclerView;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
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
                                return new u((ConstraintLayout) view, viewA, recyclerView, imageView, constraintLayout, swipeRefreshLayout, textView);
                            }
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subscription_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60443a;
    }
}
