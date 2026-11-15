package h1;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.ViewKt;
import androidx.customview.poolingcontainer.R$id;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    private static final int f61219a = R$id.pooling_container_listener_holder_tag;

    private static final int f61220b = R$id.is_pooling_container_tag;

    public static final void a(View view, b listener) {
        Intrinsics.h(view, "<this>");
        Intrinsics.h(listener, "listener");
        d(view).a(listener);
    }

    public static final void b(View view) {
        Intrinsics.h(view, "<this>");
        Iterator f64466a = ViewKt.getAllViews(view).getF64466a();
        while (f64466a.hasNext()) {
            d((View) f64466a.next()).b();
        }
    }

    public static final void c(ViewGroup viewGroup) {
        Intrinsics.h(viewGroup, "<this>");
        Iterator f64466a = ViewGroupKt.getChildren(viewGroup).getF64466a();
        while (f64466a.hasNext()) {
            d((View) f64466a.next()).b();
        }
    }

    private static final c d(View view) {
        int i10 = f61219a;
        c cVar = (c) view.getTag(i10);
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        view.setTag(i10, cVar2);
        return cVar2;
    }

    public static final boolean e(View view) {
        Intrinsics.h(view, "<this>");
        Object tag = view.getTag(f61220b);
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static final boolean f(View view) {
        Intrinsics.h(view, "<this>");
        for (Object obj : ViewKt.getAncestors(view)) {
            if ((obj instanceof View) && e((View) obj)) {
                return true;
            }
        }
        return false;
    }

    public static final void g(View view, b listener) {
        Intrinsics.h(view, "<this>");
        Intrinsics.h(listener, "listener");
        d(view).c(listener);
    }

    public static final void h(View view, boolean z10) {
        Intrinsics.h(view, "<this>");
        view.setTag(f61220b, Boolean.valueOf(z10));
    }
}
