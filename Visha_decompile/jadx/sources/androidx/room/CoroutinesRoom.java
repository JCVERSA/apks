package androidx.room;

import android.os.CancellationSignal;
import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteCompat;
import defpackage.cl0;
import defpackage.e74;
import defpackage.el0;
import defpackage.nz3;
import defpackage.pt1;
import defpackage.qi4;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.Callable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.j;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Landroidx/room/CoroutinesRoom;", "", "()V", "Companion", "room-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public final class CoroutinesRoom {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJA\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u000fJG\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Landroidx/room/CoroutinesRoom$Companion;", "", MethodDecl.initName, "()V", "R", "Landroidx/room/RoomDatabase;", "db", "", "inTransaction", "Ljava/util/concurrent/Callable;", "callable", "execute", "(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lwh1;)Ljava/lang/Object;", "Landroid/os/CancellationSignal;", "cancellationSignal", "(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lwh1;)Ljava/lang/Object;", "", "", "tableNames", "Lnz3;", "createFlow", "(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lnz3;", "room-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <R> nz3 createFlow(RoomDatabase db, boolean inTransaction, String[] tableNames, Callable<R> callable) {
            return sz3.r(new CoroutinesRoom$Companion$createFlow$1(inTransaction, db, tableNames, callable, null));
        }

        public final <R> Object execute(RoomDatabase roomDatabase, boolean z, Callable<R> callable, wh1<? super R> wh1Var) {
            c transactionDispatcher;
            if (roomDatabase.isOpenInternal() && roomDatabase.inTransaction()) {
                return callable.call();
            }
            TransactionElement transactionElement = (TransactionElement) wh1Var.getContext().get(TransactionElement.INSTANCE);
            if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher()) == null) {
                transactionDispatcher = z ? CoroutinesRoomKt.getTransactionDispatcher(roomDatabase) : CoroutinesRoomKt.getQueryDispatcher(roomDatabase);
            }
            return cl0.g(transactionDispatcher, new CoroutinesRoom$Companion$execute$2(callable, null), wh1Var);
        }

        private Companion() {
        }

        public final <R> Object execute(RoomDatabase roomDatabase, boolean z, final CancellationSignal cancellationSignal, Callable<R> callable, wh1<? super R> wh1Var) {
            c transactionDispatcher;
            if (roomDatabase.isOpenInternal() && roomDatabase.inTransaction()) {
                return callable.call();
            }
            TransactionElement transactionElement = (TransactionElement) wh1Var.getContext().get(TransactionElement.INSTANCE);
            if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher()) == null) {
                transactionDispatcher = z ? CoroutinesRoomKt.getTransactionDispatcher(roomDatabase) : CoroutinesRoomKt.getQueryDispatcher(roomDatabase);
            }
            c cVar = transactionDispatcher;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            final j jVarD = el0.d(qi4.b, cVar, null, new CoroutinesRoom$Companion$execute$4$job$1(callable, cancellableContinuationImpl, null), 2, null);
            cancellableContinuationImpl.invokeOnCancellation(new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return zfb.a;
                }

                public final void invoke(Throwable th) {
                    CancellationSignal cancellationSignal2 = cancellationSignal;
                    if (cancellationSignal2 != null) {
                        SupportSQLiteCompat.Api16Impl.cancel(cancellationSignal2);
                    }
                    j.a.b(jVarD, null, 1, null);
                }
            });
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result;
        }
    }

    private CoroutinesRoom() {
    }

    public static final <R> nz3 createFlow(RoomDatabase roomDatabase, boolean z, String[] strArr, Callable<R> callable) {
        return INSTANCE.createFlow(roomDatabase, z, strArr, callable);
    }

    public static final <R> Object execute(RoomDatabase roomDatabase, boolean z, CancellationSignal cancellationSignal, Callable<R> callable, wh1<? super R> wh1Var) {
        return INSTANCE.execute(roomDatabase, z, cancellationSignal, callable, wh1Var);
    }

    public static final <R> Object execute(RoomDatabase roomDatabase, boolean z, Callable<R> callable, wh1<? super R> wh1Var) {
        return INSTANCE.execute(roomDatabase, z, callable, wh1Var);
    }
}
