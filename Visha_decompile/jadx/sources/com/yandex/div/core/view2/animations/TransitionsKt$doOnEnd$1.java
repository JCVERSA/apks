package com.yandex.div.core.view2.animations;

import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import defpackage.c74;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"com/yandex/div/core/view2/animations/TransitionsKt$doOnEnd$1", "Landroidx/transition/TransitionListenerAdapter;", "Landroidx/transition/Transition;", "transition", "Lzfb;", "onTransitionEnd", "(Landroidx/transition/Transition;)V", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 176)
public final class TransitionsKt$doOnEnd$1 extends TransitionListenerAdapter {
    public final c74 b;
    public final Transition c;

    @Override
    public void onTransitionEnd(Transition transition) {
        y45.j(transition, "transition");
        this.b.invoke();
        this.c.removeListener(this);
    }
}
