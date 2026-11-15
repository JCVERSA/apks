package androidx.core.transition;

import android.transition.Transition;
import defpackage.e74;
import defpackage.zfb;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u001a*\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0005\u0010\u0006\u001a*\u0010\u0007\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0007\u0010\u0006\u001a*\u0010\b\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\b\u0010\u0006\u001a*\u0010\t\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\t\u0010\u0006\u001a*\u0010\n\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0004\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\n\u0010\u0006\u001a\u0082\u0001\u0010\u0010\u001a\u00020\u0004*\u00020\u00002\u0014\b\u0006\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0006\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0006\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0006\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u00012\u0014\b\u0006\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001H\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroid/transition/Transition;", "Lkotlin/Function1;", "Lzfb;", "action", "Landroid/transition/Transition$TransitionListener;", "doOnEnd", "(Landroid/transition/Transition;Le74;)Landroid/transition/Transition$TransitionListener;", "doOnStart", "doOnCancel", "doOnResume", "doOnPause", "onEnd", "onStart", "onCancel", "onResume", "onPause", "addListener", "(Landroid/transition/Transition;Le74;Le74;Le74;Le74;Le74;)Landroid/transition/Transition$TransitionListener;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class TransitionKt {
    public static final Transition.TransitionListener addListener(Transition transition, e74 e74Var, e74 e74Var2, e74 e74Var3, e74 e74Var4, e74 e74Var5) {
        TransitionKt$addListener$listener$1 transitionKt$addListener$listener$1 = new TransitionKt$addListener$listener$1(e74Var, e74Var4, e74Var5, e74Var3, e74Var2);
        transition.addListener(transitionKt$addListener$listener$1);
        return transitionKt$addListener$listener$1;
    }

    public static Transition.TransitionListener addListener$default(Transition transition, e74 e74Var, e74 e74Var2, e74 e74Var3, e74 e74Var4, e74 e74Var5, int i, Object obj) {
        if ((i & 1) != 0) {
            e74Var = new e74() {
                public final void invoke(Transition transition2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Transition) obj2);
                    return zfb.a;
                }
            };
        }
        if ((i & 2) != 0) {
            e74Var2 = new e74() {
                public final void invoke(Transition transition2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Transition) obj2);
                    return zfb.a;
                }
            };
        }
        e74 e74Var6 = e74Var2;
        if ((i & 4) != 0) {
            e74Var3 = new e74() {
                public final void invoke(Transition transition2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Transition) obj2);
                    return zfb.a;
                }
            };
        }
        e74 e74Var7 = e74Var3;
        if ((i & 8) != 0) {
            e74Var4 = new e74() {
                public final void invoke(Transition transition2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Transition) obj2);
                    return zfb.a;
                }
            };
        }
        if ((i & 16) != 0) {
            e74Var5 = new e74() {
                public final void invoke(Transition transition2) {
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((Transition) obj2);
                    return zfb.a;
                }
            };
        }
        TransitionKt$addListener$listener$1 transitionKt$addListener$listener$1 = new TransitionKt$addListener$listener$1(e74Var, e74Var4, e74Var5, e74Var7, e74Var6);
        transition.addListener(transitionKt$addListener$listener$1);
        return transitionKt$addListener$listener$1;
    }

    public static final Transition.TransitionListener doOnCancel(Transition transition, final e74 e74Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
                e74Var.invoke(transition2);
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
            }

            @Override
            public void onTransitionPause(Transition transition2) {
            }

            @Override
            public void onTransitionResume(Transition transition2) {
            }

            @Override
            public void onTransitionStart(Transition transition2) {
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnEnd(Transition transition, final e74 e74Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
                e74Var.invoke(transition2);
            }

            @Override
            public void onTransitionPause(Transition transition2) {
            }

            @Override
            public void onTransitionResume(Transition transition2) {
            }

            @Override
            public void onTransitionStart(Transition transition2) {
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnPause(Transition transition, final e74 e74Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
            }

            @Override
            public void onTransitionPause(Transition transition2) {
                e74Var.invoke(transition2);
            }

            @Override
            public void onTransitionResume(Transition transition2) {
            }

            @Override
            public void onTransitionStart(Transition transition2) {
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnResume(Transition transition, final e74 e74Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
            }

            @Override
            public void onTransitionPause(Transition transition2) {
            }

            @Override
            public void onTransitionResume(Transition transition2) {
                e74Var.invoke(transition2);
            }

            @Override
            public void onTransitionStart(Transition transition2) {
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }

    public static final Transition.TransitionListener doOnStart(Transition transition, final e74 e74Var) {
        Transition.TransitionListener transitionListener = new Transition.TransitionListener() {
            @Override
            public void onTransitionCancel(Transition transition2) {
            }

            @Override
            public void onTransitionEnd(Transition transition2) {
            }

            @Override
            public void onTransitionPause(Transition transition2) {
            }

            @Override
            public void onTransitionResume(Transition transition2) {
            }

            @Override
            public void onTransitionStart(Transition transition2) {
                e74Var.invoke(transition2);
            }
        };
        transition.addListener(transitionListener);
        return transitionListener;
    }
}
