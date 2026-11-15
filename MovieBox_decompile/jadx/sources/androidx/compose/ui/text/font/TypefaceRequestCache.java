package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public final class TypefaceRequestCache {

    private final androidx.compose.ui.text.platform.p f5799a = androidx.compose.ui.text.platform.o.a();

    private final m0.b f5800b = new m0.b(16);

    public final androidx.compose.ui.text.platform.p b() {
        return this.f5799a;
    }

    public final a3 c(final d0 d0Var, Function1 function1) {
        synchronized (this.f5799a) {
            e0 e0Var = (e0) this.f5800b.d(d0Var);
            if (e0Var != null) {
                if (e0Var.a()) {
                    return e0Var;
                }
            }
            try {
                e0 e0Var2 = (e0) function1.invoke(new Function1<e0, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((e0) obj);
                        return Unit.f64096a;
                    }

                    public final void invoke(e0 e0Var3) {
                        androidx.compose.ui.text.platform.p pVarB = this.this$0.b();
                        TypefaceRequestCache typefaceRequestCache = this.this$0;
                        d0 d0Var2 = d0Var;
                        synchronized (pVarB) {
                            try {
                                if (e0Var3.a()) {
                                    typefaceRequestCache.f5800b.e(d0Var2, e0Var3);
                                } else {
                                    typefaceRequestCache.f5800b.f(d0Var2);
                                }
                                Unit unit = Unit.f64096a;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                });
                synchronized (this.f5799a) {
                    try {
                        if (this.f5800b.d(d0Var) == null && e0Var2.a()) {
                            this.f5800b.e(d0Var, e0Var2);
                        }
                        Unit unit = Unit.f64096a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                return e0Var2;
            } catch (Exception e10) {
                throw new IllegalStateException("Could not load font", e10);
            }
        }
    }
}
