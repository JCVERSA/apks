package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class ss1<V extends ViewGroup> implements b10<V> {
    private final e1 a;
    private final n52 b;
    private final ea1 c;
    private final f1 d;

    public static final class a implements f1 {
        private final ea1 a;

        public a(ea1 ea1Var) {
            y45.j(ea1Var, "nativeRewardViewController");
            this.a = ea1Var;
        }

        @Override
        public final void a() {
            this.a.c();
        }

        @Override
        public final void b() {
            this.a.b();
        }
    }

    public ss1(e1 e1Var, o52 o52Var, n91 n91Var, f52 f52Var) {
        ea1 ea1Var = new ea1(o52Var, n91Var, f52Var);
        this(e1Var, o52Var, n91Var, f52Var, ea1Var, new a(ea1Var));
    }

    @Override
    public final void a(V v) {
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        this.a.a(this.d);
        this.c.a(this.b.b(v));
    }

    @Override
    public final void c() {
        this.a.b(this.d);
        this.c.a();
    }

    public ss1(e1 e1Var, o52 o52Var, n91 n91Var, f52 f52Var, ea1 ea1Var, f1 f1Var) {
        y45.j(e1Var, "adActivityEventController");
        y45.j(o52Var, "timerViewProvider");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(f52Var, "timeProviderContainer");
        y45.j(ea1Var, "nativeRewardViewController");
        y45.j(f1Var, "adActivityFocusListener");
        this.a = e1Var;
        this.b = o52Var;
        this.c = ea1Var;
        this.d = f1Var;
    }
}
