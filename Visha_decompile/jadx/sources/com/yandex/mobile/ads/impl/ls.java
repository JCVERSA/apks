package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public abstract class ls implements View.OnClickListener {
    private final k31 a;
    private final g31 b;

    public static final class a extends ls {
        private final r31 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(r31 r31Var, k31 k31Var, g31 g31Var) {
            super(k31Var, g31Var, 0);
            y45.j(r31Var, "multiBannerSwiper");
            y45.j(k31Var, "multiBannerEventTracker");
            this.c = r31Var;
        }

        @Override
        public final void onClick(View view) {
            this.c.b();
            super.onClick(view);
        }
    }

    public static final class b extends ls {
        private final r31 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(r31 r31Var, k31 k31Var, g31 g31Var) {
            super(k31Var, g31Var, 0);
            y45.j(r31Var, "multiBannerSwiper");
            y45.j(k31Var, "multiBannerEventTracker");
            this.c = r31Var;
        }

        @Override
        public final void onClick(View view) {
            this.c.a();
            super.onClick(view);
        }
    }

    private ls(k31 k31Var, g31 g31Var) {
        this.a = k31Var;
        this.b = g31Var;
    }

    @Override
    public void onClick(View view) {
        g31 g31Var = this.b;
        if (g31Var != null) {
            g31Var.a();
        }
        this.a.b();
    }

    public ls(k31 k31Var, g31 g31Var, int i) {
        this(k31Var, g31Var);
    }
}
