package androidx.p003activity;

import android.view.View;
import defpackage.e74;
import defpackage.y45;
import defpackage.zc9;
import kotlin.Metadata;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u001b\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0015\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroid/view/View;", "Landroidx/activity/OnBackPressedDispatcherOwner;", "onBackPressedDispatcherOwner", "Lzfb;", "set", "(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V", "setViewTreeOnBackPressedDispatcherOwner", "get", "(Landroid/view/View;)Landroidx/activity/OnBackPressedDispatcherOwner;", "findViewTreeOnBackPressedDispatcherOwner", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class C0468ViewTreeOnBackPressedDispatcherOwner {
    public static final OnBackPressedDispatcherOwner get(View view) {
        y45.j(view, "<this>");
        return (OnBackPressedDispatcherOwner) SequencesKt___SequencesKt.J(SequencesKt___SequencesKt.S(zc9.p(view, new e74() {
            @Override
            public final View invoke(View view2) {
                y45.j(view2, "it");
                Object parent = view2.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new e74() {
            @Override
            public final OnBackPressedDispatcherOwner invoke(View view2) {
                y45.j(view2, "it");
                Object tag = view2.getTag(R.id.view_tree_on_back_pressed_dispatcher_owner);
                if (tag instanceof OnBackPressedDispatcherOwner) {
                    return (OnBackPressedDispatcherOwner) tag;
                }
                return null;
            }
        }));
    }

    public static final void set(View view, OnBackPressedDispatcherOwner onBackPressedDispatcherOwner) {
        y45.j(view, "<this>");
        y45.j(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
