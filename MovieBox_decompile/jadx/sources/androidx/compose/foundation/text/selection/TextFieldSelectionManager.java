package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.f;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.platform.h2;
import androidx.compose.ui.platform.q0;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.b0;
import androidx.compose.ui.text.c0;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.d0;
import androidx.compose.ui.text.input.j0;
import androidx.compose.ui.text.input.v;
import androidx.compose.ui.text.input.w;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import y.g;
import y.i;

public final class TextFieldSelectionManager {

    private final androidx.compose.foundation.text.d f3016a;

    private v f3017b;

    private Function1 f3018c;

    private final i1 f3019d;

    private j0 f3020e;

    private q0 f3021f;

    private h2 f3022g;

    private final i1 f3023h;

    private final i1 f3024i;

    private long f3025j;

    private long f3026k;

    private final i1 f3027l;

    private final i1 f3028m;

    private int f3029n;

    private TextFieldValue f3030o;

    private final androidx.compose.foundation.text.c f3031p;

    private final androidx.compose.foundation.text.selection.a f3032q;

    public static final class a implements androidx.compose.foundation.text.selection.a {
        a() {
        }
    }

    public static final class b implements androidx.compose.foundation.text.c {
        b() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldSelectionManager() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static void b(TextFieldSelectionManager textFieldSelectionManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        textFieldSelectionManager.a(z10);
    }

    private final TextFieldValue c(AnnotatedString annotatedString, long j10) {
        return new TextFieldValue(annotatedString, j10, (b0) null, 4, (DefaultConstructorMarker) null);
    }

    private final i f() {
        return i.f76004e.a();
    }

    private final void o(boolean z10) {
        if (z10) {
            n();
        } else {
            j();
        }
    }

    public final void a(boolean z10) {
        if (b0.f(i().e())) {
            return;
        }
        q0 q0Var = this.f3021f;
        if (q0Var != null) {
            q0Var.c(d0.a(i()));
        }
        if (z10) {
            int i10 = b0.i(i().e());
            this.f3018c.invoke(c(i().c(), c0.b(i10, i10)));
            m(HandleState.None);
        }
    }

    public final void d() {
        if (b0.f(i().e())) {
            return;
        }
        q0 q0Var = this.f3021f;
        if (q0Var != null) {
            q0Var.c(d0.a(i()));
        }
        AnnotatedString annotatedStringN = d0.c(i(), i().f().length()).n(d0.b(i(), i().f().length()));
        int iJ = b0.j(i().e());
        this.f3018c.invoke(c(annotatedStringN, c0.b(iJ, iJ)));
        m(HandleState.None);
        androidx.compose.foundation.text.d dVar = this.f3016a;
        if (dVar != null) {
            dVar.a();
        }
    }

    public final void e(boolean z10) {
        this.f3030o = i();
        o(z10);
        m(HandleState.Selection);
    }

    public final boolean g() {
        return ((Boolean) this.f3023h.getValue()).booleanValue();
    }

    public final boolean h() {
        return ((Boolean) this.f3024i.getValue()).booleanValue();
    }

    public final TextFieldValue i() {
        return (TextFieldValue) this.f3019d.getValue();
    }

    public final void j() {
        h2 h2Var;
        h2 h2Var2 = this.f3022g;
        if ((h2Var2 != null ? h2Var2.getStatus() : null) != TextToolbarStatus.Shown || (h2Var = this.f3022g) == null) {
            return;
        }
        h2Var.hide();
    }

    public final void k() {
        AnnotatedString annotatedStringA;
        q0 q0Var = this.f3021f;
        if (q0Var == null || (annotatedStringA = q0Var.a()) == null) {
            return;
        }
        AnnotatedString annotatedStringN = d0.c(i(), i().f().length()).n(annotatedStringA).n(d0.b(i(), i().f().length()));
        int iJ = b0.j(i().e()) + annotatedStringA.length();
        this.f3018c.invoke(c(annotatedStringN, c0.b(iJ, iJ)));
        m(HandleState.None);
        androidx.compose.foundation.text.d dVar = this.f3016a;
        if (dVar != null) {
            dVar.a();
        }
    }

    public final void l() {
        TextFieldValue textFieldValueC = c(i().c(), c0.b(0, i().f().length()));
        this.f3018c.invoke(textFieldValueC);
        this.f3030o = TextFieldValue.b(this.f3030o, null, textFieldValueC.e(), null, 5, null);
        e(true);
    }

    public final void n() {
        q0 q0Var;
        if (h()) {
            boolean z10 = this.f3020e instanceof w;
            Function0<Unit> function0 = (b0.f(i().e()) || z10) ? null : new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m65invoke();
                    return Unit.f64096a;
                }

                public final void m65invoke() {
                    TextFieldSelectionManager.b(this.this$0, false, 1, null);
                    this.this$0.j();
                }
            };
            Function0<Unit> function1 = (b0.f(i().e()) || !g() || z10) ? null : new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m66invoke();
                    return Unit.f64096a;
                }

                public final void m66invoke() {
                    this.this$0.d();
                    this.this$0.j();
                }
            };
            Function0<Unit> function2 = (g() && (q0Var = this.f3021f) != null && q0Var.b()) ? new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m67invoke();
                    return Unit.f64096a;
                }

                public final void m67invoke() {
                    this.this$0.k();
                    this.this$0.j();
                }
            } : null;
            Function0<Unit> function3 = b0.h(i().e()) != i().f().length() ? new Function0<Unit>() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m68invoke();
                    return Unit.f64096a;
                }

                public final void m68invoke() {
                    this.this$0.l();
                }
            } : null;
            h2 h2Var = this.f3022g;
            if (h2Var != null) {
                h2Var.a(f(), function0, function2, function1, function3);
            }
        }
    }

    public TextFieldSelectionManager(androidx.compose.foundation.text.d dVar) {
        this.f3016a = dVar;
        this.f3017b = f.b();
        this.f3018c = new Function1<TextFieldValue, Unit>() {
            public final void invoke(TextFieldValue textFieldValue) {
            }

            @Override
            public Object invoke(Object obj) {
                invoke((TextFieldValue) obj);
                return Unit.f64096a;
            }
        };
        this.f3019d = u2.c(new TextFieldValue((String) null, 0L, (b0) null, 7, (DefaultConstructorMarker) null), null, 2, null);
        this.f3020e = j0.f5924a.a();
        Boolean bool = Boolean.TRUE;
        this.f3023h = u2.c(bool, null, 2, null);
        this.f3024i = u2.c(bool, null, 2, null);
        g.a aVar = g.f75999b;
        this.f3025j = aVar.c();
        this.f3026k = aVar.c();
        this.f3027l = u2.c(null, null, 2, null);
        this.f3028m = u2.c(null, null, 2, null);
        this.f3029n = -1;
        this.f3030o = new TextFieldValue((String) null, 0L, (b0) null, 7, (DefaultConstructorMarker) null);
        this.f3031p = new b();
        this.f3032q = new a();
    }

    public TextFieldSelectionManager(androidx.compose.foundation.text.d dVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : dVar);
    }

    private final void m(HandleState handleState) {
    }
}
