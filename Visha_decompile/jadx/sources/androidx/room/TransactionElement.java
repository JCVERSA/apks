package androidx.room;

import androidx.annotation.RestrictTo;
import defpackage.s74;
import java.util.concurrent.atomic.AtomicInteger;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\bR\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00000\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Landroidx/room/TransactionElement;", "Lkotlin/coroutines/d$b;", "Lkotlin/coroutines/c;", "transactionDispatcher", MethodDecl.initName, "(Lkotlin/coroutines/c;)V", "Lzfb;", "acquire", "()V", "release", "Lkotlin/coroutines/c;", "getTransactionDispatcher$room_ktx_release", "()Lkotlin/coroutines/c;", "Ljava/util/concurrent/atomic/AtomicInteger;", "referenceCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "Lkotlin/coroutines/d$c;", "getKey", "()Lkotlin/coroutines/d$c;", "key", "Key", "room-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class TransactionElement implements d.b {

    public static final Companion INSTANCE = new Companion(null);
    private final AtomicInteger referenceCount = new AtomicInteger(0);
    private final c transactionDispatcher;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/TransactionElement$Key;", "Lkotlin/coroutines/d$c;", "Landroidx/room/TransactionElement;", MethodDecl.initName, "()V", "room-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion implements d.c {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public TransactionElement(c cVar) {
        this.transactionDispatcher = cVar;
    }

    public final void acquire() {
        this.referenceCount.incrementAndGet();
    }

    @Override
    public <R> R fold(R r, s74 s74Var) {
        return (R) d.b.a.a(this, r, s74Var);
    }

    @Override
    public <E extends d.b> E get(d.c cVar) {
        return (E) d.b.a.b(this, cVar);
    }

    @Override
    public d.c getKey() {
        return INSTANCE;
    }

    public final c getTransactionDispatcher() {
        return this.transactionDispatcher;
    }

    @Override
    public d minusKey(d.c cVar) {
        return d.b.a.c(this, cVar);
    }

    @Override
    public d plus(d dVar) {
        return d.b.a.d(this, dVar);
    }

    public final void release() {
        if (this.referenceCount.decrementAndGet() < 0) {
            throw new IllegalStateException("Transaction was never started or was already released.");
        }
    }
}
