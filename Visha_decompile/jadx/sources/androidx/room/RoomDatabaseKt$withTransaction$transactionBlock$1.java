package androidx.room;

import defpackage.e74;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"R", "Lnk1;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.room.RoomDatabaseKt$withTransaction$transactionBlock$1", f = "RoomDatabaseExt.kt", l = {62}, m = "invokeSuspend")
public final class RoomDatabaseKt$withTransaction$transactionBlock$1 extends SuspendLambda implements s74 {
    final e74 $block;
    final RoomDatabase $this_withTransaction;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomDatabaseKt$withTransaction$transactionBlock$1(RoomDatabase roomDatabase, e74 e74Var, wh1<? super RoomDatabaseKt$withTransaction$transactionBlock$1> wh1Var) {
        super(2, wh1Var);
        this.$this_withTransaction = roomDatabase;
        this.$block = e74Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        RoomDatabaseKt$withTransaction$transactionBlock$1 roomDatabaseKt$withTransaction$transactionBlock$1 = new RoomDatabaseKt$withTransaction$transactionBlock$1(this.$this_withTransaction, this.$block, wh1Var);
        roomDatabaseKt$withTransaction$transactionBlock$1.L$0 = obj;
        return roomDatabaseKt$withTransaction$transactionBlock$1;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super R> wh1Var) {
        return ((RoomDatabaseKt$withTransaction$transactionBlock$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        TransactionElement transactionElement;
        Throwable th;
        TransactionElement transactionElement2;
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i == 0) {
                c.b(obj);
                d.b bVar = ((nk1) this.L$0).getCoroutineContext().get(TransactionElement.INSTANCE);
                y45.g(bVar);
                transactionElement = (TransactionElement) bVar;
                transactionElement.acquire();
                try {
                    this.$this_withTransaction.beginTransaction();
                    try {
                        e74 e74Var = this.$block;
                        this.L$0 = transactionElement;
                        this.label = 1;
                        Object objInvoke = e74Var.invoke(this);
                        if (objInvoke == objF) {
                            return objF;
                        }
                        transactionElement2 = transactionElement;
                        obj = objInvoke;
                    } catch (Throwable th2) {
                        th = th2;
                        this.$this_withTransaction.endTransaction();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    transactionElement.release();
                    throw th;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                TransactionElement transactionElement3 = (TransactionElement) this.L$0;
                try {
                    c.b(obj);
                    transactionElement2 = transactionElement3;
                } catch (Throwable th4) {
                    th = th4;
                    this.$this_withTransaction.endTransaction();
                    throw th;
                }
            }
            this.$this_withTransaction.setTransactionSuccessful();
            this.$this_withTransaction.endTransaction();
            transactionElement2.release();
            return obj;
        } catch (Throwable th5) {
            th = th5;
            transactionElement = objF;
        }
    }
}
