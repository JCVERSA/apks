package kotlin.coroutines.jvm.internal;

import defpackage.ok1;
import defpackage.ot1;
import defpackage.pt1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.d;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b!\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004B\u0019\u0012\u0010\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\n2\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\r\u001a\u0004\u0018\u00010\u00022\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\bH$¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J+\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\u00012\b\u0010\u0013\u001a\u0004\u0018\u00010\u00022\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016¢\u0006\u0004\b\u0011\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR!\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lwh1;", "", "Lok1;", "Ljava/io/Serializable;", "completion", MethodDecl.initName, "(Lwh1;)V", "Lkotlin/Result;", "result", "Lzfb;", "resumeWith", "(Ljava/lang/Object;)V", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "()V", "create", "(Lwh1;)Lwh1;", ES6Iterator.VALUE_PROPERTY, "(Ljava/lang/Object;Lwh1;)Lwh1;", "", "toString", "()Ljava/lang/String;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lwh1;", "getCompletion", "()Lwh1;", "getCallerFrame", "()Lok1;", "callerFrame", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseContinuationImpl implements wh1<Object>, ok1, Serializable {
    private final wh1<Object> completion;

    public BaseContinuationImpl(wh1<Object> wh1Var) {
        this.completion = wh1Var;
    }

    public wh1<zfb> create(wh1<?> completion) {
        y45.j(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override
    public ok1 getCallerFrame() {
        wh1<Object> wh1Var = this.completion;
        if (wh1Var instanceof ok1) {
            return (ok1) wh1Var;
        }
        return null;
    }

    public final wh1<Object> getCompletion() {
        return this.completion;
    }

    @Override
    public abstract d getContext();

    public StackTraceElement getStackTraceElement() {
        return ot1.d(this);
    }

    public abstract Object invokeSuspend(Object result);

    public void releaseIntercepted() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [wh1] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    @Override
    public final void resumeWith(Object result) {
        ?? r2 = this;
        while (true) {
            pt1.b(r2);
            BaseContinuationImpl baseContinuationImpl = (BaseContinuationImpl) r2;
            wh1<Object> wh1Var = baseContinuationImpl.completion;
            y45.g(wh1Var);
            try {
                Object objInvokeSuspend = baseContinuationImpl.invokeSuspend(result);
                if (objInvokeSuspend == z45.f()) {
                    return;
                } else {
                    result = Result.m279constructorimpl(objInvokeSuspend);
                }
            } catch (Throwable th) {
                Result.Companion companion = Result.INSTANCE;
                result = Result.m279constructorimpl(c.a(th));
            }
            baseContinuationImpl.releaseIntercepted();
            if (!(wh1Var instanceof BaseContinuationImpl)) {
                wh1Var.resumeWith(result);
                return;
            }
            r2 = wh1Var;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public wh1<zfb> create(Object value, wh1<?> completion) {
        y45.j(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
