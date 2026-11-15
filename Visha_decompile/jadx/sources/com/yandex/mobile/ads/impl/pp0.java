package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class pp0 {

    public static final class a implements op0 {
        private final aj a;

        public a(aj ajVar) {
            y45.j(ajVar, "viewController");
            this.a = ajVar;
        }

        @Override
        public final void a(Context context, View view) {
            y45.j(context, "context");
            y45.j(view, "view");
        }

        @Override
        public final void b(Context context) {
            y45.j(context, "context");
            int i = oa.b;
            if (oa.a((ro) this.a)) {
                return;
            }
            this.a.v();
        }

        @Override
        public final void a(Context context) {
            y45.j(context, "context");
            int i = oa.b;
            if (oa.a((ro) this.a)) {
                return;
            }
            this.a.w();
        }
    }

    public static op0 a(View view, aj ajVar) {
        y45.j(view, "view");
        y45.j(ajVar, "controller");
        return view.isInEditMode() ? new b() : new a(ajVar);
    }

    public static final class b implements op0 {
        @Override
        public final void a(Context context, View view) {
            y45.j(context, "context");
            y45.j(view, "view");
            view.setVisibility(0);
            view.setMinimumHeight(wh2.a(context, 50.0f));
        }

        @Override
        public final void b(Context context) {
            y45.j(context, "context");
        }

        @Override
        public final void a(Context context) {
            y45.j(context, "context");
        }
    }
}
