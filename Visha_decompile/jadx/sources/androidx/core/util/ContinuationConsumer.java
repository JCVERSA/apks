package androidx.core.util;

import androidx.annotation.RequiresApi;
import defpackage.wh1;
import java.util.concurrent.atomic.AtomicBoolean;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import org.mozilla.javascript.ES6Iterator;

@RequiresApi(24)
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/core/util/ContinuationConsumer;", "T", "Ljava/util/function/Consumer;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lwh1;", "continuation", MethodDecl.initName, "(Lwh1;)V", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "accept", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "Lwh1;", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class ContinuationConsumer<T> extends AtomicBoolean implements java.util.function.Consumer<T> {
    private final wh1<T> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationConsumer(wh1<? super T> wh1Var) {
        super(false);
        this.continuation = wh1Var;
    }

    @Override
    public void accept(T value) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(Result.m279constructorimpl(value));
        }
    }

    @Override
    public String toString() {
        return "ContinuationConsumer(resultAccepted = " + get() + ')';
    }
}
