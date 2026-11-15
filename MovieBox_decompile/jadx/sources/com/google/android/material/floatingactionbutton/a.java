package com.google.android.material.floatingactionbutton;

import android.animation.Animator;

class a {

    private Animator f28155a;

    a() {
    }

    public void a() {
        Animator animator = this.f28155a;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void b() {
        this.f28155a = null;
    }

    public void c(Animator animator) {
        a();
        this.f28155a = animator;
    }
}
