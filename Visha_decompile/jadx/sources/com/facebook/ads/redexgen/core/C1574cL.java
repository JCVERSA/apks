package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

public class C1574cL extends AnimatorListenerAdapter {
    public static String[] A02 = {"XPcb7u", "1EqmHb2eknRLZguZZ09OTS3RJ6PZDacc", "q716qXT4J9ut1OK6cu8TQ8z", "ll75T4DF", "819G9oTFaahwgvqYm0vS8", "2zY5AuZMZiedj3zrg1jXmGR85zyyFWFf", "4jbusEaCntQ", "MMYtKoyK6XiZYZ9RjQwnamveqLTwrKqj"};
    public final C4K A00;
    public final boolean A01;

    public C1574cL(C4K c4k, boolean z) {
        this.A00 = c4k;
        this.A01 = z;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A0r(this.A00.A0B, true);
        if (this.A01) {
            return;
        }
        C4K c4k = this.A00;
        if (A02[1].charAt(10) == 't') {
            throw new RuntimeException();
        }
        A02[4] = "";
        if (c4k.A06 != null) {
            this.A00.A06.destroy();
        }
    }
}
