package kotlinx.coroutines.flow.internal;

import defpackage.l23;
import defpackage.n95;
import defpackage.ok1;
import defpackage.oz3;
import defpackage.pt1;
import defpackage.s74;
import defpackage.u74;
import defpackage.v09;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z07;
import defpackage.z0a;
import defpackage.z45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.internal.SafeCollector;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\f\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\u000e2\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000bH\u0016¢\u0006\u0004\b \u0010!J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u000f\u0010\"R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010#R\u0014\u0010\u0007\u001a\u00020\u00068\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010$R\u0014\u0010&\u001a\u00020%8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010(\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010$R\u001e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0014\u00100\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/¨\u00061"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", "T", "Loz3;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lok1;", "collector", "Lkotlin/coroutines/d;", "collectContext", MethodDecl.initName, "(Loz3;Lkotlin/coroutines/d;)V", "Lwh1;", "Lzfb;", "uCont", ES6Iterator.VALUE_PROPERTY, "", "emit", "(Lwh1;Ljava/lang/Object;)Ljava/lang/Object;", "currentContext", "previousContext", "checkContext", "(Lkotlin/coroutines/d;Lkotlin/coroutines/d;Ljava/lang/Object;)V", "Ll23;", "exception", "exceptionTransparencyViolated", "(Ll23;Ljava/lang/Object;)V", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lkotlin/Result;", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "()V", "(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;", "Loz3;", "Lkotlin/coroutines/d;", "", "collectContextSize", "I", "lastEmissionContext", "completion_", "Lwh1;", "getCallerFrame", "()Lok1;", "callerFrame", "getContext", "()Lkotlin/coroutines/d;", "context", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SafeCollector<T> extends ContinuationImpl implements oz3, ok1 {
    public final d collectContext;
    public final int collectContextSize;
    public final oz3 collector;
    private wh1<? super zfb> completion_;
    private d lastEmissionContext;

    public SafeCollector(oz3 oz3Var, d dVar) {
        super(z07.b, EmptyCoroutineContext.INSTANCE);
        this.collector = oz3Var;
        this.collectContext = dVar;
        this.collectContextSize = ((Number) dVar.fold(0, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(SafeCollector.collectContextSize$lambda$0(((Integer) obj).intValue(), (d.b) obj2));
            }
        })).intValue();
    }

    private final void checkContext(d currentContext, d previousContext, T value) {
        if (previousContext instanceof l23) {
            exceptionTransparencyViolated((l23) previousContext, value);
        }
        v09.b(this, currentContext);
    }

    public static final int collectContextSize$lambda$0(int i, d.b bVar) {
        return i + 1;
    }

    private final void exceptionTransparencyViolated(l23 exception, Object value) {
        throw new IllegalStateException(z0a.j("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + exception.c + ", but then emission attempt of value '" + value + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override
    public Object emit(T t, wh1<? super zfb> wh1Var) {
        try {
            Object objEmit = emit(wh1Var, t);
            if (objEmit == z45.f()) {
                pt1.c(wh1Var);
            }
            return objEmit == z45.f() ? objEmit : zfb.a;
        } catch (Throwable th) {
            this.lastEmissionContext = new l23(th, wh1Var.getContext());
            throw th;
        }
    }

    @Override
    public ok1 getCallerFrame() {
        wh1<? super zfb> wh1Var = this.completion_;
        if (wh1Var instanceof ok1) {
            return (ok1) wh1Var;
        }
        return null;
    }

    @Override
    public d getContext() {
        d dVar = this.lastEmissionContext;
        return dVar == null ? EmptyCoroutineContext.INSTANCE : dVar;
    }

    @Override
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override
    public Object invokeSuspend(Object result) {
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(result);
        if (thM282exceptionOrNullimpl != null) {
            this.lastEmissionContext = new l23(thM282exceptionOrNullimpl, getContext());
        }
        wh1<? super zfb> wh1Var = this.completion_;
        if (wh1Var != null) {
            wh1Var.resumeWith(result);
        }
        return z45.f();
    }

    @Override
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }

    private final Object emit(wh1<? super zfb> uCont, T value) {
        d context = uCont.getContext();
        n95.h(context);
        d dVar = this.lastEmissionContext;
        if (dVar != context) {
            checkContext(context, dVar, value);
            this.lastEmissionContext = context;
        }
        this.completion_ = uCont;
        u74 u74Var = SafeCollectorKt.a;
        oz3 oz3Var = this.collector;
        y45.h(oz3Var, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        y45.h(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object objInvoke = u74Var.invoke(oz3Var, value, this);
        if (!y45.e(objInvoke, z45.f())) {
            this.completion_ = null;
        }
        return objInvoke;
    }
}
