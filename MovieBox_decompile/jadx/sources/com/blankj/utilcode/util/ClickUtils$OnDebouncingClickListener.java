package com.blankj.utilcode.util;

import android.view.View;

public abstract class ClickUtils$OnDebouncingClickListener implements View.OnClickListener {

    private static boolean f19389c = true;

    private static final Runnable f19390d = new Runnable() {
        @Override
        public void run() {
            boolean unused = ClickUtils$OnDebouncingClickListener.f19389c = true;
        }
    };

    private long f19391a;

    private boolean f19392b;

    public ClickUtils$OnDebouncingClickListener() {
        this(true, 1000L);
    }

    private static boolean b(View view, long j10) {
        return e0.E(view, j10);
    }

    public abstract void c(View view);

    @Override
    public final void onClick(View view) {
        if (!this.f19392b) {
            if (b(view, this.f19391a)) {
                c(view);
            }
        } else if (f19389c) {
            f19389c = false;
            view.postDelayed(f19390d, this.f19391a);
            c(view);
        }
    }

    public ClickUtils$OnDebouncingClickListener(boolean z10, long j10) {
        this.f19392b = z10;
        this.f19391a = j10;
    }
}
