package androidx.core.view;

import android.view.ViewParent;
import defpackage.e74;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class ViewKt$ancestors$1 extends FunctionReferenceImpl implements e74 {
    public static final ViewKt$ancestors$1 INSTANCE = new ViewKt$ancestors$1();

    public ViewKt$ancestors$1() {
        super(1, ViewParent.class, "getParent", "getParent()Landroid/view/ViewParent;", 0);
    }

    @Override
    public final ViewParent invoke(ViewParent viewParent) {
        return viewParent.getParent();
    }
}
