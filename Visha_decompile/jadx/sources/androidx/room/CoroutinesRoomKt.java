package androidx.room;

import androidx.annotation.RestrictTo;
import defpackage.ef3;
import defpackage.y45;
import java.util.Map;
import kotlin.Metadata;
import kotlinx.coroutines.c;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00008@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/room/RoomDatabase;", "Lkotlinx/coroutines/c;", "getQueryDispatcher", "(Landroidx/room/RoomDatabase;)Lkotlinx/coroutines/c;", "getTransactionDispatcher", "transactionDispatcher", "room-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class CoroutinesRoomKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final c getQueryDispatcher(RoomDatabase roomDatabase) {
        Map<String, Object> backingFieldMap = roomDatabase.getBackingFieldMap();
        Object objA = backingFieldMap.get("QueryDispatcher");
        if (objA == null) {
            objA = ef3.a(roomDatabase.getQueryExecutor());
            backingFieldMap.put("QueryDispatcher", objA);
        }
        y45.h(objA, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (c) objA;
    }

    public static final c getTransactionDispatcher(RoomDatabase roomDatabase) {
        Map<String, Object> backingFieldMap = roomDatabase.getBackingFieldMap();
        Object objA = backingFieldMap.get("TransactionDispatcher");
        if (objA == null) {
            objA = ef3.a(roomDatabase.getTransactionExecutor());
            backingFieldMap.put("TransactionDispatcher", objA);
        }
        y45.h(objA, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (c) objA;
    }
}
