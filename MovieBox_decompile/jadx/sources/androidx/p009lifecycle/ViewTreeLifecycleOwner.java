package androidx.p009lifecycle;

import android.view.View;
import androidx.p009lifecycle.runtime.R$id;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

public abstract class ViewTreeLifecycleOwner {
    public static final u a(View view) {
        Intrinsics.h(view, "<this>");
        return (u) SequencesKt.t(SequencesKt.z(SequencesKt.h(view, new Function1<View, View>() {
            @Override
            public final View invoke(View currentView) {
                Intrinsics.h(currentView, "currentView");
                Object parent = currentView.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new Function1<View, u>() {
            @Override
            public final u invoke(android.view.View viewParent) {
                Intrinsics.h(viewParent, "viewParent");
                Object tag = viewParent.getTag(R$id.view_tree_lifecycle_owner);
                if (tag instanceof u) {
                    return (u) tag;
                }
                return null;
            }
        }));
    }

    public static final void b(View view, u uVar) {
        Intrinsics.h(view, "<this>");
        view.setTag(R$id.view_tree_lifecycle_owner, uVar);
    }
}
