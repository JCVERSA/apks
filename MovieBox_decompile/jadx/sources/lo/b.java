package lo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.CustomPublishHeader;

public final class b implements f4.a {

    private final RelativeLayout f65997a;

    public final FrameLayout f65998b;

    public final CustomPublishHeader f65999c;

    private b(RelativeLayout relativeLayout, FrameLayout frameLayout, CustomPublishHeader customPublishHeader) {
        this.f65997a = relativeLayout;
        this.f65998b = frameLayout;
        this.f65999c = customPublishHeader;
    }

    public static b a(View view) {
        int i10 = R$id.fl_content;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.sv_title_bar;
            CustomPublishHeader customPublishHeader = (CustomPublishHeader) f4.b.a(view, i10);
            if (customPublishHeader != null) {
                return new b((RelativeLayout) view, frameLayout, customPublishHeader);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_film_review, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.f65997a;
    }
}
