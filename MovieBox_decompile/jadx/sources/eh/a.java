package eh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;

public final class a implements f4.a {

    private final ConstraintLayout f59671a;

    public final FrameLayout f59672b;

    public final TitleLayout f59673c;

    private a(ConstraintLayout constraintLayout, FrameLayout frameLayout, TitleLayout titleLayout) {
        this.f59671a = constraintLayout;
        this.f59672b = frameLayout;
        this.f59673c = titleLayout;
    }

    public static a a(View view) {
        int i10 = R$id.container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                return new a((ConstraintLayout) view, frameLayout, titleLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_fragment_title, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f59671a;
    }
}
