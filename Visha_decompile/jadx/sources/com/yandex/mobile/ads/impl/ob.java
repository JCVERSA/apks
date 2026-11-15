package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class ob {
    private final ac a;
    private final zq0 b;

    public static final class a implements View.OnClickListener {
        private final Dialog a;
        private final zq0 b;

        public a(Dialog dialog, zq0 zq0Var) {
            y45.j(dialog, "dialog");
            y45.j(zq0Var, "keyboardUtils");
            this.a = dialog;
            this.b = zq0Var;
        }

        @Override
        public final void onClick(View view) {
            y45.j(view, "view");
            this.b.getClass();
            zq0.a(view);
            n10.a(this.a);
        }
    }

    public static final class b implements View.OnTouchListener {
        private final View a;
        private final Dialog b;
        private final zq0 c;
        private float d;

        public b(ViewGroup viewGroup, Dialog dialog, zq0 zq0Var) {
            y45.j(viewGroup, "adTuneContainer");
            y45.j(dialog, "dialog");
            y45.j(zq0Var, "keyboardUtils");
            this.a = viewGroup;
            this.b = dialog;
            this.c = zq0Var;
        }

        @Override
        @SuppressLint({"ClickableViewAccessibility"})
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            y45.j(view, "view");
            y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
            float rawY = motionEvent.getRawY();
            int action = motionEvent.getAction();
            if (action == 0) {
                this.d = rawY;
                return true;
            }
            if (action == 1) {
                if (rawY <= this.d) {
                    return true;
                }
                this.c.getClass();
                zq0.a(view);
                n10.a(this.b);
                return true;
            }
            if (action != 2) {
                return false;
            }
            float f = this.d;
            if (rawY <= f) {
                this.a.setTranslationY(0.0f);
                return true;
            }
            this.a.setTranslationY(rawY - f);
            return true;
        }
    }

    public ob() {
        this(new ac(), new zq0());
    }

    public final void a(ViewGroup viewGroup, Dialog dialog) {
        y45.j(viewGroup, "adTuneContainer");
        y45.j(dialog, "dialog");
        this.a.getClass();
        y45.j(viewGroup, "adTuneContainer");
        View viewFindViewById = viewGroup.findViewById(R.id.adtune_drag_view_container);
        if (viewFindViewById != null) {
            viewFindViewById.setOnTouchListener(new b(viewGroup, dialog, this.b));
        }
        this.a.getClass();
        y45.j(viewGroup, "adTuneContainer");
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.adtune_background_view);
        if (viewGroup2 != null) {
            viewGroup2.setOnClickListener(new a(dialog, this.b));
        }
    }

    public ob(ac acVar, zq0 zq0Var) {
        y45.j(acVar, "adtuneViewProvider");
        y45.j(zq0Var, "keyboardUtils");
        this.a = acVar;
        this.b = zq0Var;
    }
}
