package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class j implements f4.a {

    private final RelativeLayout f75608a;

    public final FrameLayout f75609b;

    public final ProgressBar f75610c;

    public final TitleLayout f75611d;

    private j(RelativeLayout relativeLayout, FrameLayout frameLayout, ProgressBar progressBar, TitleLayout titleLayout) {
        this.f75608a = relativeLayout;
        this.f75609b = frameLayout;
        this.f75610c = progressBar;
        this.f75611d = titleLayout;
    }

    public static j a(View view) {
        int i10 = R$id.fl_content;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.load_view;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.toolbar;
                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                if (titleLayout != null) {
                    return new j((RelativeLayout) view, frameLayout, progressBar, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_profile_center_edit, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.f75608a;
    }
}
