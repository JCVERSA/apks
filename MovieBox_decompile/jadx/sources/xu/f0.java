package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.usercenter.R$layout;

public final class f0 implements f4.a {

    private final FrameLayout f75566a;

    private f0(FrameLayout frameLayout) {
        this.f75566a = frameLayout;
    }

    public static f0 a(View view) {
        if (view != null) {
            return new f0((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    public static f0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.feedback_option_list_header, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75566a;
    }
}
