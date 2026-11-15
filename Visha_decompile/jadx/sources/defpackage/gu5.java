package defpackage;

import com.airbnb.lottie.LottieAnimationView;

public abstract class gu5 {
    public static void i(final LottieAnimationView lottieAnimationView, final int i) {
        lottieAnimationView.addLottieOnCompositionLoadedListener(new ht5() {
            @Override
            public final void a(ur5 ur5Var) {
                gu5.p(lottieAnimationView, i, ur5Var);
            }
        });
    }

    public static void j(final LottieAnimationView lottieAnimationView, final int i) {
        lottieAnimationView.addLottieOnCompositionLoadedListener(new ht5() {
            @Override
            public final void a(ur5 ur5Var) {
                gu5.r(lottieAnimationView, i, ur5Var);
            }
        });
    }

    public static Integer k(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static Integer l(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static Integer m(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static Integer n(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static Integer o(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static void p(LottieAnimationView lottieAnimationView, final int i, ur5 ur5Var) {
        tf5 tf5Var = new tf5("1", "矩形", "填充 1");
        tf5 tf5Var2 = new tf5("左2", "矩形备份 3", "填充 1");
        tf5 tf5Var3 = new tf5("右2", "矩形备份", "填充 1");
        tf5 tf5Var4 = new tf5("左3", "矩形备份 4", "填充 1");
        tf5 tf5Var5 = new tf5("右3", "矩形备份 2", "填充 1");
        Integer num = it5.a;
        lottieAnimationView.addValueCallback(tf5Var, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return gu5.k(i, bt5Var);
            }
        });
        lottieAnimationView.addValueCallback(tf5Var2, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return gu5.l(i, bt5Var);
            }
        });
        lottieAnimationView.addValueCallback(tf5Var3, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return gu5.m(i, bt5Var);
            }
        });
        lottieAnimationView.addValueCallback(tf5Var4, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return gu5.n(i, bt5Var);
            }
        });
        lottieAnimationView.addValueCallback(tf5Var5, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return gu5.o(i, bt5Var);
            }
        });
    }

    public static Integer q(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static void r(LottieAnimationView lottieAnimationView, final int i, ur5 ur5Var) {
        lottieAnimationView.addValueCallback(new tf5("↻ icon嗅探", "矩形", "矩形", "填充 1"), it5.a, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return gu5.q(i, bt5Var);
            }
        });
    }
}
