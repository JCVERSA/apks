package com.transsion.photoview;

import android.view.View;

abstract class a {
    public static void a(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
