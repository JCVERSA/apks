package lo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.CustomHeader;

public final class k implements f4.a {

    private final ConstraintLayout f66082a;

    public final TextView f66083b;

    public final TextView f66084c;

    public final ProgressBar f66085d;

    public final RecyclerView f66086e;

    public final LinearLayout f66087f;

    public final LinearLayout f66088g;

    public final CustomHeader f66089h;

    public final TextView f66090i;

    private k(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ProgressBar progressBar, RecyclerView recyclerView, LinearLayout linearLayout, LinearLayout linearLayout2, CustomHeader customHeader, TextView textView3) {
        this.f66082a = constraintLayout;
        this.f66083b = textView;
        this.f66084c = textView2;
        this.f66085d = progressBar;
        this.f66086e = recyclerView;
        this.f66087f = linearLayout;
        this.f66088g = linearLayout2;
        this.f66089h = customHeader;
        this.f66090i = textView3;
    }

    public static k a(View view) {
        int i10 = R$id.confirmTV;
        TextView textView = (TextView) f4.b.a(view, i10);
        if (textView != null) {
            i10 = R$id.selectNumTV;
            TextView textView2 = (TextView) f4.b.a(view, i10);
            if (textView2 != null) {
                i10 = R$id.select_video_loading;
                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                if (progressBar != null) {
                    i10 = R$id.select_video_recycler;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        i10 = R$id.sv_lock_view;
                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                        if (linearLayout != null) {
                            i10 = R$id.sv_no_content_view;
                            LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout2 != null) {
                                i10 = R$id.sv_title_bar;
                                CustomHeader customHeader = (CustomHeader) f4.b.a(view, i10);
                                if (customHeader != null) {
                                    i10 = R$id.sv_tv_grant;
                                    TextView textView3 = (TextView) f4.b.a(view, i10);
                                    if (textView3 != null) {
                                        return new k((ConstraintLayout) view, textView, textView2, progressBar, recyclerView, linearLayout, linearLayout2, customHeader, textView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.upload_select_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66082a;
    }
}
