package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import defpackage.y45;

public final class ep1 {

    public static final class a implements Runnable {
        private final yb1 b;
        private final hp1 c;

        public a(yb1 yb1Var, hp1 hp1Var) {
            y45.j(yb1Var, "nativeVideoView");
            y45.j(hp1Var, "replayActionView");
            this.b = yb1Var;
            this.c = hp1Var;
        }

        @Override
        public final void run() {
            this.b.c().setVisibility(4);
            this.c.a().setVisibility(0);
        }
    }

    public static final class b implements Runnable {
        private final hp1 b;
        private final Bitmap c;

        public b(hp1 hp1Var, Bitmap bitmap) {
            y45.j(hp1Var, "replayActionView");
            y45.j(bitmap, "background");
            this.b = hp1Var;
            this.c = bitmap;
        }

        @Override
        public final void run() {
            this.b.setBackground(new BitmapDrawable(this.b.getResources(), this.c));
            this.b.setVisibility(0);
        }
    }

    public static void a(yb1 yb1Var, hp1 hp1Var, Bitmap bitmap) {
        y45.j(yb1Var, "nativeVideoView");
        y45.j(hp1Var, "replayActionView");
        y45.j(bitmap, "background");
        hp1Var.setAlpha(0.0f);
        hp1Var.animate().alpha(1.0f).setDuration(700L).withStartAction(new b(hp1Var, bitmap)).withEndAction(new a(yb1Var, hp1Var)).start();
    }
}
