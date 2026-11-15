package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

public abstract class CompositionLocalsKt {

    private static final androidx.compose.runtime.s1 f5303a = CompositionLocalKt.f(new Function0<h>() {
        @Override
        public final h invoke() {
            return null;
        }
    });

    private static final androidx.compose.runtime.s1 f5304b = CompositionLocalKt.f(new Function0<x.g>() {
        @Override
        public final x.g invoke() {
            return null;
        }
    });

    private static final androidx.compose.runtime.s1 f5305c = CompositionLocalKt.f(new Function0<x.w>() {
        @Override
        public final x.w invoke() {
            CompositionLocalsKt.k("LocalAutofillTree");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5306d = CompositionLocalKt.f(new Function0<q0>() {
        @Override
        public final q0 invoke() {
            CompositionLocalsKt.k("LocalClipboardManager");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5307e = CompositionLocalKt.f(new Function0<a4>() {
        @Override
        public final a4 invoke() {
            CompositionLocalsKt.k("LocalGraphicsContext");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5308f = CompositionLocalKt.f(new Function0<o0.e>() {
        @Override
        public final o0.e invoke() {
            CompositionLocalsKt.k("LocalDensity");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5309g = CompositionLocalKt.f(new Function0<androidx.compose.ui.focus.g>() {
        @Override
        public final androidx.compose.ui.focus.g invoke() {
            CompositionLocalsKt.k("LocalFocusManager");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5310h = CompositionLocalKt.f(new Function0<androidx.compose.ui.text.font.g>() {
        @Override
        public final androidx.compose.ui.text.font.g invoke() {
            CompositionLocalsKt.k("LocalFontLoader");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5311i = CompositionLocalKt.f(new Function0<androidx.compose.ui.text.font.h.b>() {
        @Override
        public final androidx.compose.ui.text.font.h.b invoke() {
            CompositionLocalsKt.k("LocalFontFamilyResolver");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5312j = CompositionLocalKt.f(new Function0<b0.a>() {
        @Override
        public final b0.a invoke() {
            CompositionLocalsKt.k("LocalHapticFeedback");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5313k = CompositionLocalKt.f(new Function0<c0.b>() {
        @Override
        public final c0.b invoke() {
            CompositionLocalsKt.k("LocalInputManager");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5314l = CompositionLocalKt.f(new Function0<LayoutDirection>() {
        @Override
        public final LayoutDirection invoke() {
            CompositionLocalsKt.k("LocalLayoutDirection");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5315m = CompositionLocalKt.f(new Function0<androidx.compose.ui.text.input.e0>() {
        @Override
        public final androidx.compose.ui.text.input.e0 invoke() {
            return null;
        }
    });

    private static final androidx.compose.runtime.s1 f5316n = CompositionLocalKt.f(new Function0<g2>() {
        @Override
        public final g2 invoke() {
            return null;
        }
    });

    private static final androidx.compose.runtime.s1 f5317o = CompositionLocalKt.f(new Function0<h2>() {
        @Override
        public final h2 invoke() {
            CompositionLocalsKt.k("LocalTextToolbar");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5318p = CompositionLocalKt.f(new Function0<j2>() {
        @Override
        public final j2 invoke() {
            CompositionLocalsKt.k("LocalUriHandler");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5319q = CompositionLocalKt.f(new Function0<o2>() {
        @Override
        public final o2 invoke() {
            CompositionLocalsKt.k("LocalViewConfiguration");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5320r = CompositionLocalKt.f(new Function0<v2>() {
        @Override
        public final v2 invoke() {
            CompositionLocalsKt.k("LocalWindowInfo");
            throw new KotlinNothingValueException();
        }
    });

    private static final androidx.compose.runtime.s1 f5321s = CompositionLocalKt.f(new Function0<androidx.compose.ui.input.pointer.t>() {
        @Override
        public final androidx.compose.ui.input.pointer.t invoke() {
            return null;
        }
    });

    private static final androidx.compose.runtime.s1 f5322t = CompositionLocalKt.d(null, new Function0<Boolean>() {
        @Override
        public final Boolean invoke() {
            return Boolean.FALSE;
        }
    }, 1, null);

    public static final void a(final androidx.compose.ui.node.y0 y0Var, final j2 j2Var, Function2 function2, androidx.compose.runtime.i iVar, final int i10) {
        int i11;
        final Function2 function3;
        androidx.compose.runtime.i iVar2;
        androidx.compose.runtime.i iVarG = iVar.g(874662829);
        if ((i10 & 6) == 0) {
            i11 = ((i10 & 8) == 0 ? iVarG.O(y0Var) : iVarG.A(y0Var) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= (i10 & 64) == 0 ? iVarG.O(j2Var) : iVarG.A(j2Var) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i11 |= iVarG.A(function2) ? 256 : 128;
        }
        if ((i11 & 147) == 146 && iVarG.h()) {
            iVarG.G();
            function3 = function2;
            iVar2 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(874662829, i11, -1, "androidx.compose.ui.platform.ProvideCommonCompositionLocals (CompositionLocals.kt:214)");
            }
            function3 = function2;
            iVar2 = iVarG;
            CompositionLocalKt.b(new androidx.compose.runtime.t1[]{f5303a.d(y0Var.getAccessibilityManager()), f5304b.d(y0Var.getAutofill()), f5305c.d(y0Var.getAutofillTree()), f5306d.d(y0Var.getClipboardManager()), f5308f.d(y0Var.getDensity()), f5309g.d(y0Var.getFocusOwner()), f5310h.e(y0Var.getFontLoader()), f5311i.e(y0Var.getFontFamilyResolver()), f5312j.d(y0Var.getHapticFeedBack()), f5313k.d(y0Var.getInputModeManager()), f5314l.d(y0Var.getLayoutDirection()), f5315m.d(y0Var.getTextInputService()), f5316n.d(y0Var.getSoftwareKeyboardController()), f5317o.d(y0Var.getTextToolbar()), f5318p.d(j2Var), f5319q.d(y0Var.getViewConfiguration()), f5320r.d(y0Var.getWindowInfo()), f5321s.d(y0Var.getPointerIconService()), f5307e.d(y0Var.getGraphicsContext())}, function3, iVar2, androidx.compose.runtime.t1.f3732i | ((i11 >> 3) & 112));
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        androidx.compose.runtime.g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar3, int i12) {
                    CompositionLocalsKt.a(y0Var, j2Var, function3, iVar3, androidx.compose.runtime.v1.a(i10 | 1));
                }
            });
        }
    }

    public static final androidx.compose.runtime.s1 c() {
        return f5308f;
    }

    public static final androidx.compose.runtime.s1 d() {
        return f5311i;
    }

    public static final androidx.compose.runtime.s1 e() {
        return f5307e;
    }

    public static final androidx.compose.runtime.s1 f() {
        return f5313k;
    }

    public static final androidx.compose.runtime.s1 g() {
        return f5314l;
    }

    public static final androidx.compose.runtime.s1 h() {
        return f5322t;
    }

    public static final androidx.compose.runtime.q i() {
        return f5322t;
    }

    public static final androidx.compose.runtime.s1 j() {
        return f5319q;
    }

    public static final Void k(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
