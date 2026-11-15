package com.yandex.div.core.view2.state;

import androidx.core.view.OneShotPreDrawListener;
import androidx.transition.Transition;
import com.yandex.div.core.view2.Div2View;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public class DivStateTransitionHolder {
    public final Div2View a;
    public final List b;
    public boolean c;

    public DivStateTransitionHolder(Div2View div2View) {
        y45.j(div2View, "div2View");
        this.a = div2View;
        this.b = new ArrayList();
    }

    public void a(Transition transition) {
        y45.j(transition, "transition");
        this.b.add(transition);
        c();
    }

    public void b() {
        this.b.clear();
    }

    public final void c() {
        if (this.c) {
            return;
        }
        final Div2View div2View = this.a;
        OneShotPreDrawListener.add(div2View, new Runnable() {
            @Override
            public final void run() {
                this.b();
            }
        });
        this.c = true;
    }
}
