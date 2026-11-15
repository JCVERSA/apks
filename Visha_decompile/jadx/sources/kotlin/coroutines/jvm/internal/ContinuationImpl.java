package kotlin.coroutines.jvm.internal;

import defpackage.ub1;
import defpackage.wh1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.d;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\b!\u0018\u00002\u00020\u0001B#\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bB\u001b\b\u0016\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\tJ\u0015\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000fR \u0010\n\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lwh1;", "", "completion", "Lkotlin/coroutines/d;", "_context", MethodDecl.initName, "(Lwh1;Lkotlin/coroutines/d;)V", "(Lwh1;)V", "intercepted", "()Lwh1;", "Lzfb;", "releaseIntercepted", "()V", "Lkotlin/coroutines/d;", "Lwh1;", "getContext", "()Lkotlin/coroutines/d;", "context", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ContinuationImpl extends BaseContinuationImpl {
    private final d _context;
    private transient wh1<Object> intercepted;

    public ContinuationImpl(wh1<Object> wh1Var, d dVar) {
        super(wh1Var);
        this._context = dVar;
    }

    @Override
    public d getContext() {
        d dVar = this._context;
        y45.g(dVar);
        return dVar;
    }

    public final wh1<Object> intercepted() {
        wh1 wh1VarInterceptContinuation = this.intercepted;
        if (wh1VarInterceptContinuation == null) {
            c cVar = (c) getContext().get(c.A6);
            if (cVar == null || (wh1VarInterceptContinuation = cVar.interceptContinuation(this)) == null) {
                wh1VarInterceptContinuation = this;
            }
            this.intercepted = wh1VarInterceptContinuation;
        }
        return wh1VarInterceptContinuation;
    }

    @Override
    public void releaseIntercepted() {
        wh1<Object> wh1Var = this.intercepted;
        if (wh1Var != null && wh1Var != this) {
            d.b bVar = getContext().get(c.A6);
            y45.g(bVar);
            ((c) bVar).releaseInterceptedContinuation(wh1Var);
        }
        this.intercepted = ub1.b;
    }

    public ContinuationImpl(wh1<Object> wh1Var) {
        this(wh1Var, wh1Var != null ? wh1Var.getContext() : null);
    }
}
