package defpackage;

import androidx.transition.Transition;
import androidx.transition.TransitionSet;
import java.util.Iterator;

public abstract class v7b {
    public static final void a(TransitionSet transitionSet, Iterable iterable) {
        y45.j(transitionSet, "<this>");
        y45.j(iterable, "transitions");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            transitionSet.addTransition((Transition) it.next());
        }
    }
}
