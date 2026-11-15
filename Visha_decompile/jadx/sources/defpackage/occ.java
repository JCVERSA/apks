package defpackage;

import android.view.View;
import android.view.ViewGroup;
import com.lzy.okgo.model.Progress;
import com.yandex.div.core.view2.Div2View;
import java.util.ArrayList;
import java.util.List;

public final class occ {
    public static final occ a = new occ();

    public static final View a(Div2View div2View, String str) {
        y45.j(div2View, "divView");
        y45.j(str, Progress.TAG);
        List listC = c(div2View, str);
        if (listC.isEmpty()) {
            return null;
        }
        if (listC.size() <= 1) {
            return (View) i81.o0(listC);
        }
        eg2.e(div2View, new RuntimeException("Ambiguous scope id. There are " + listC.size() + " divs with id '" + str + '\''));
        return null;
    }

    public static final List c(Div2View div2View, String str) {
        y45.j(div2View, "divView");
        y45.j(str, Progress.TAG);
        return a.b(div2View.getView(), str);
    }

    public final List b(View view, Object obj) {
        if (obj == null) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList();
        d(view, obj, arrayList);
        return arrayList;
    }

    public final List d(View view, Object obj, List list) {
        if (y45.e(obj, view.getTag())) {
            list.add(view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                y45.i(childAt, "view.getChildAt(i)");
                d(childAt, obj, list);
            }
        }
        return list;
    }
}
