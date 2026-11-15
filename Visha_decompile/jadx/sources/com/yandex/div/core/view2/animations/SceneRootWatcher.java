package com.yandex.div.core.view2.animations;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Scene;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionManager;
import defpackage.y45;

public final class SceneRootWatcher {
    public static final SceneRootWatcher a = new SceneRootWatcher();

    public static final class a implements View.OnAttachStateChangeListener {
        public final ViewGroup b;

        public a(ViewGroup viewGroup) {
            y45.j(viewGroup, "sceneRoot");
            this.b = viewGroup;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            y45.j(view, "view");
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            y45.j(view, "view");
            this.b.removeOnAttachStateChangeListener(this);
            TransitionManager.endTransitions(this.b);
        }
    }

    public final void a(final ViewGroup viewGroup, final Transition transition) {
        y45.j(viewGroup, "sceneRoot");
        y45.j(transition, "transition");
        final a aVar = new a(viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        transition.addListener(new TransitionListenerAdapter() {
            @Override
            public void onTransitionEnd(Transition transition2) {
                y45.j(transition2, "transition");
                viewGroup.removeOnAttachStateChangeListener(aVar);
                transition.removeListener(this);
            }
        });
    }

    public final void b(Scene scene, Transition transition) {
        y45.j(scene, "scene");
        y45.j(transition, "transition");
        ViewGroup sceneRoot = scene.getSceneRoot();
        y45.i(sceneRoot, "scene.sceneRoot");
        a(sceneRoot, transition);
    }
}
