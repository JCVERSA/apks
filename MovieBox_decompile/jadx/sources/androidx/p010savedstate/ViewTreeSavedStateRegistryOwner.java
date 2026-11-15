package androidx.p010savedstate;

import android.view.View;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

public abstract class ViewTreeSavedStateRegistryOwner {
    public static final e a(View view) {
        Intrinsics.h(view, "<this>");
        return (e) SequencesKt.t(SequencesKt.z(SequencesKt.h(view, new Function1<View, View>() {
            @Override
            public final View invoke(View view2) {
                Intrinsics.h(view2, "view");
                Object parent = view2.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new Function1<View, e>() {
            @Override
            public final e invoke(android.view.View view2) {
                Intrinsics.h(view2, "view");
                Object tag = view2.getTag(R$id.view_tree_saved_state_registry_owner);
                if (tag instanceof e) {
                    return (e) tag;
                }
                return null;
            }
        }));
    }

    public static final void b(View view, e eVar) {
        Intrinsics.h(view, "<this>");
        view.setTag(R$id.view_tree_saved_state_registry_owner, eVar);
    }
}
