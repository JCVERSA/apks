package androidx.core.animation;

import android.animation.Animator;
import defpackage.e74;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\u001a*\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a*\u0010\u0007\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0007\u0010\u0006\u001a*\u0010\b\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\b\u0010\u0006\u001a*\u0010\t\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\t\u0010\u0006\u001a%\u0010\u000b\u001a\u00020\n*\u00020\u00002\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0004\b\u000b\u0010\f\u001a%\u0010\r\u001a\u00020\n*\u00020\u00002\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0004\b\r\u0010\f\u001al\u0010\u0012\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0006\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0006\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0006\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0006\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a=\u0010\u0016\u001a\u00020\n*\u00020\u00002\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroid/animation/Animator;", "Lkotlin/Function1;", "Lzfb;", "action", "Landroid/animation/Animator$AnimatorListener;", "doOnEnd", "(Landroid/animation/Animator;Le74;)Landroid/animation/Animator$AnimatorListener;", "doOnStart", "doOnCancel", "doOnRepeat", "Landroid/animation/Animator$AnimatorPauseListener;", "doOnResume", "(Landroid/animation/Animator;Le74;)Landroid/animation/Animator$AnimatorPauseListener;", "doOnPause", "onEnd", "onStart", "onCancel", "onRepeat", "addListener", "(Landroid/animation/Animator;Le74;Le74;Le74;Le74;)Landroid/animation/Animator$AnimatorListener;", "onResume", "onPause", "addPauseListener", "(Landroid/animation/Animator;Le74;Le74;)Landroid/animation/Animator$AnimatorPauseListener;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class AnimatorKt {
    public static final Animator.AnimatorListener addListener(Animator animator, e74 e74Var, e74 e74Var2, e74 e74Var3, e74 e74Var4) {
        AnimatorKt$addListener$listener$1 animatorKt$addListener$listener$1 = new AnimatorKt$addListener$listener$1(e74Var4, e74Var, e74Var3, e74Var2);
        animator.addListener(animatorKt$addListener$listener$1);
        return animatorKt$addListener$listener$1;
    }

    public static Animator.AnimatorListener addListener$default(Animator animator, e74 e74Var, e74 e74Var2, e74 e74Var3, e74 e74Var4, int i, Object obj) {
        if ((i & 1) != 0) {
            e74Var = new e74() {
                public final void invoke(Animator animator2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Animator) obj2);
                    return zfb.a;
                }
            };
        }
        if ((i & 2) != 0) {
            e74Var2 = new e74() {
                public final void invoke(Animator animator2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Animator) obj2);
                    return zfb.a;
                }
            };
        }
        if ((i & 4) != 0) {
            e74Var3 = new e74() {
                public final void invoke(Animator animator2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Animator) obj2);
                    return zfb.a;
                }
            };
        }
        if ((i & 8) != 0) {
            e74Var4 = new e74() {
                public final void invoke(Animator animator2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Animator) obj2);
                    return zfb.a;
                }
            };
        }
        AnimatorKt$addListener$listener$1 animatorKt$addListener$listener$1 = new AnimatorKt$addListener$listener$1(e74Var4, e74Var, e74Var3, e74Var2);
        animator.addListener(animatorKt$addListener$listener$1);
        return animatorKt$addListener$listener$1;
    }

    public static final Animator.AnimatorPauseListener addPauseListener(Animator animator, final e74 e74Var, final e74 e74Var2) {
        Animator.AnimatorPauseListener animatorPauseListener = new Animator.AnimatorPauseListener() {
            @Override
            public void onAnimationPause(Animator animator2) {
                e74Var2.invoke(animator2);
            }

            @Override
            public void onAnimationResume(Animator animator2) {
                e74Var.invoke(animator2);
            }
        };
        animator.addPauseListener(animatorPauseListener);
        return animatorPauseListener;
    }

    public static Animator.AnimatorPauseListener addPauseListener$default(Animator animator, e74 e74Var, e74 e74Var2, int i, Object obj) {
        if ((i & 1) != 0) {
            e74Var = new e74() {
                public final void invoke(Animator animator2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Animator) obj2);
                    return zfb.a;
                }
            };
        }
        if ((i & 2) != 0) {
            e74Var2 = new e74() {
                public final void invoke(Animator animator2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Animator) obj2);
                    return zfb.a;
                }
            };
        }
        return addPauseListener(animator, e74Var, e74Var2);
    }

    public static final Animator.AnimatorListener doOnCancel(Animator animator, final e74 e74Var) {
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator2) {
                e74Var.invoke(animator2);
            }

            @Override
            public void onAnimationEnd(Animator animator2) {
            }

            @Override
            public void onAnimationRepeat(Animator animator2) {
            }

            @Override
            public void onAnimationStart(Animator animator2) {
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorListener doOnEnd(Animator animator, final e74 e74Var) {
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator2) {
            }

            @Override
            public void onAnimationEnd(Animator animator2) {
                e74Var.invoke(animator2);
            }

            @Override
            public void onAnimationRepeat(Animator animator2) {
            }

            @Override
            public void onAnimationStart(Animator animator2) {
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorPauseListener doOnPause(Animator animator, e74 e74Var) {
        return addPauseListener$default(animator, null, e74Var, 1, null);
    }

    public static final Animator.AnimatorListener doOnRepeat(Animator animator, final e74 e74Var) {
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator2) {
            }

            @Override
            public void onAnimationEnd(Animator animator2) {
            }

            @Override
            public void onAnimationRepeat(Animator animator2) {
                e74Var.invoke(animator2);
            }

            @Override
            public void onAnimationStart(Animator animator2) {
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    public static final Animator.AnimatorPauseListener doOnResume(Animator animator, e74 e74Var) {
        return addPauseListener$default(animator, e74Var, null, 2, null);
    }

    public static final Animator.AnimatorListener doOnStart(Animator animator, final e74 e74Var) {
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator animator2) {
            }

            @Override
            public void onAnimationEnd(Animator animator2) {
            }

            @Override
            public void onAnimationRepeat(Animator animator2) {
            }

            @Override
            public void onAnimationStart(Animator animator2) {
                e74Var.invoke(animator2);
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }
}
