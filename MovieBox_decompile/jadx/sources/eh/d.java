package eh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;

public final class d implements f4.a {

    private final View f59687a;

    public final AppCompatTextView f59688b;

    public final ProgressBar f59689c;

    public final AppCompatTextView f59690d;

    public final Space f59691e;

    public final AppCompatTextView f59692f;

    private d(View view, AppCompatTextView appCompatTextView, ProgressBar progressBar, AppCompatTextView appCompatTextView2, Space space, AppCompatTextView appCompatTextView3) {
        this.f59687a = view;
        this.f59688b = appCompatTextView;
        this.f59689c = progressBar;
        this.f59690d = appCompatTextView2;
        this.f59691e = space;
        this.f59692f = appCompatTextView3;
    }

    public static d a(View view) {
        int i10 = R$id.go_to_setting;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.progress_bar;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.retry;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.space;
                    Space space = (Space) f4.b.a(view, i10);
                    if (space != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            return new d(view, appCompatTextView, progressBar, appCompatTextView2, space, appCompatTextView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d b(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R$layout.view_no_network, viewGroup);
        return a(viewGroup);
    }

    @Override
    public View getRoot() {
        return this.f59687a;
    }
}
