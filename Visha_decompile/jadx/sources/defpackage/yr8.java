package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import com.yandex.div.core.view2.Div2View;
import java.util.Iterator;

public final class yr8 {
    public static final yr8 a = new yr8();

    public final void a(ViewGroup viewGroup, Div2View div2View) {
        y45.j(viewGroup, "<this>");
        y45.j(div2View, "divView");
        b(viewGroup, div2View);
        viewGroup.removeAllViews();
    }

    public final void b(ViewGroup viewGroup, Div2View div2View) {
        y45.j(viewGroup, "<this>");
        y45.j(div2View, "divView");
        Iterator it = ViewGroupKt.getChildren(viewGroup).iterator();
        while (it.hasNext()) {
            wv2.a(div2View.getReleaseViewVisitor$div_release(), (View) it.next());
        }
    }

    public final void c(ViewGroup viewGroup, Div2View div2View) {
        y45.j(viewGroup, "<this>");
        y45.j(div2View, "divView");
        Iterator it = ViewGroupKt.getChildren(viewGroup).iterator();
        while (it.hasNext()) {
            wv2.a(div2View.getMediaReleaseViewVisitor$div_release(), (View) it.next());
        }
    }
}
