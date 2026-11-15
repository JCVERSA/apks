package defpackage;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import com.transsion.common.R;
import com.transsion.widgetsbottomsheet.bottomsheet.OSPageView;

public abstract class da7 {
    public static final void a(OSPageView oSPageView) {
        y45.j(oSPageView, "<this>");
        TextView textView = (TextView) oSPageView.findViewById(R.id.tv_title);
        ViewGroup.LayoutParams layoutParams = null;
        ViewParent parent = textView != null ? textView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (!ccc.a(oSPageView) || viewGroup == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams2 = viewGroup.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.width = -2;
            layoutParams = layoutParams2;
        }
        viewGroup.setLayoutParams(layoutParams);
    }
}
