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

public final class f implements f4.a {

    private final ConstraintLayout f66026a;

    public final ProgressBar f66027b;

    public final RecyclerView f66028c;

    public final LinearLayout f66029d;

    public final LinearLayout f66030e;

    public final CustomHeader f66031f;

    public final TextView f66032g;

    private f(ConstraintLayout constraintLayout, ProgressBar progressBar, RecyclerView recyclerView, LinearLayout linearLayout, LinearLayout linearLayout2, CustomHeader customHeader, TextView textView) {
        this.f66026a = constraintLayout;
        this.f66027b = progressBar;
        this.f66028c = recyclerView;
        this.f66029d = linearLayout;
        this.f66030e = linearLayout2;
        this.f66031f = customHeader;
        this.f66032g = textView;
    }

    public static f a(View view) {
        int i10 = R$id.select_video_loading;
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
                            TextView textView = (TextView) f4.b.a(view, i10);
                            if (textView != null) {
                                return new f((ConstraintLayout) view, progressBar, recyclerView, linearLayout, linearLayout2, customHeader, textView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_select_music, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66026a;
    }
}
