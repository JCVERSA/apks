package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class FontFamilyResolverImpl implements h.b {

    private final u f5793a;

    private final w f5794b;

    private final TypefaceRequestCache f5795c;

    private final l f5796d;

    private final t f5797e;

    private final Function1 f5798f;

    public FontFamilyResolverImpl(u uVar, w wVar, TypefaceRequestCache typefaceRequestCache, l lVar, t tVar) {
        this.f5793a = uVar;
        this.f5794b = wVar;
        this.f5795c = typefaceRequestCache;
        this.f5796d = lVar;
        this.f5797e = tVar;
        this.f5798f = new Function1<d0, Object>() {
            {
                super(1);
            }

            @Override
            public final Object invoke(d0 d0Var) {
                return this.this$0.g(d0.b(d0Var, null, null, 0, 0, null, 30, null)).getValue();
            }
        };
    }

    public final a3 g(final d0 d0Var) {
        return this.f5795c.c(d0Var, new Function1<Function1<? super e0, ? extends Unit>, e0>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final e0 invoke(Function1<? super e0, Unit> function1) {
                e0 e0VarA = this.this$0.f5796d.a(d0Var, this.this$0.f(), function1, this.this$0.f5798f);
                if (e0VarA == null && (e0VarA = this.this$0.f5797e.a(d0Var, this.this$0.f(), function1, this.this$0.f5798f)) == null) {
                    throw new IllegalStateException("Could not load font");
                }
                return e0VarA;
            }
        });
    }

    @Override
    public a3 a(h hVar, p pVar, int i10, int i11) {
        return g(new d0(this.f5794b.d(hVar), this.f5794b.a(pVar), this.f5794b.b(i10), this.f5794b.c(i11), this.f5793a.a(), null));
    }

    public final u f() {
        return this.f5793a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FontFamilyResolverImpl(u uVar, w wVar, TypefaceRequestCache typefaceRequestCache, l lVar, t tVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(uVar, (i10 & 2) != 0 ? w.f5866a.a() : wVar, (i10 & 4) != 0 ? j.b() : typefaceRequestCache, (i10 & 8) != 0 ? new l(j.a(), null, 2, 0 == true ? 1 : 0) : lVar, (i10 & 16) != 0 ? new t() : tVar);
    }
}
