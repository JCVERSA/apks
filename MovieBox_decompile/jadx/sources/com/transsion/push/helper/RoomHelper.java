package com.transsion.push.helper;

import android.content.Context;
import com.blankj.utilcode.util.c0;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.notification.MsgBean;
import com.transsion.push.bean.MsgType;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;

public final class RoomHelper {

    public static final RoomHelper f48763a = new RoomHelper();

    private RoomHelper() {
    }

    private final Object b(Context context, String str, Continuation continuation) {
        return AppDatabase.INSTANCE.b(context).s1().f(str, continuation);
    }

    public final Object a(Context context, Continuation continuation) {
        return b(context, MsgType.LOCAL_PUSH.getType(), continuation);
    }

    public final Object c(Context context, String str, Continuation continuation) {
        return AppDatabase.INSTANCE.b(context).s1().e(str, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Context context, Continuation continuation) {
        RoomHelper$getNewestMsgByReceiveTime$1 roomHelper$getNewestMsgByReceiveTime$1;
        if (continuation instanceof RoomHelper$getNewestMsgByReceiveTime$1) {
            roomHelper$getNewestMsgByReceiveTime$1 = (RoomHelper$getNewestMsgByReceiveTime$1) continuation;
            int i10 = roomHelper$getNewestMsgByReceiveTime$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                roomHelper$getNewestMsgByReceiveTime$1.label = i10 - Integer.MIN_VALUE;
            } else {
                roomHelper$getNewestMsgByReceiveTime$1 = new RoomHelper$getNewestMsgByReceiveTime$1(this, continuation);
            }
        } else {
            roomHelper$getNewestMsgByReceiveTime$1 = new RoomHelper$getNewestMsgByReceiveTime$1(this, continuation);
        }
        Object objD = roomHelper$getNewestMsgByReceiveTime$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = roomHelper$getNewestMsgByReceiveTime$1.label;
        if (i11 == 0) {
            ResultKt.b(objD);
            zi.a aVarS1 = AppDatabase.INSTANCE.b(context).s1();
            roomHelper$getNewestMsgByReceiveTime$1.label = 1;
            objD = aVarS1.d(roomHelper$getNewestMsgByReceiveTime$1);
            if (objD == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objD);
        }
        List list = (List) objD;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public final Object e(Context context, Continuation continuation) {
        return b(context, MsgType.SUBJECT_SEEKING.getType(), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(Context context, Continuation continuation) {
        RoomHelper$hasGetMsgToday$1 roomHelper$hasGetMsgToday$1;
        Long receiveTime;
        if (continuation instanceof RoomHelper$hasGetMsgToday$1) {
            roomHelper$hasGetMsgToday$1 = (RoomHelper$hasGetMsgToday$1) continuation;
            int i10 = roomHelper$hasGetMsgToday$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                roomHelper$hasGetMsgToday$1.label = i10 - Integer.MIN_VALUE;
            } else {
                roomHelper$hasGetMsgToday$1 = new RoomHelper$hasGetMsgToday$1(this, continuation);
            }
        } else {
            roomHelper$hasGetMsgToday$1 = new RoomHelper$hasGetMsgToday$1(this, continuation);
        }
        Object objD = roomHelper$hasGetMsgToday$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = roomHelper$hasGetMsgToday$1.label;
        if (i11 == 0) {
            ResultKt.b(objD);
            roomHelper$hasGetMsgToday$1.label = 1;
            objD = d(context, roomHelper$hasGetMsgToday$1);
            if (objD == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objD);
        }
        MsgBean msgBean = (MsgBean) objD;
        return (msgBean == null || (receiveTime = msgBean.getReceiveTime()) == null || !c0.f(receiveTime.longValue())) ? Boxing.a(false) : Boxing.a(true);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0093  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bf A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:38:0x00db  */
    /* JADX WARN: Code duplicated, block: B:42:0x0108 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x010f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00c6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x009b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:? A[LOOP:1: B:24:0x008d->B:53:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00bd -> B:31:0x00c0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0106 -> B:43:0x0109). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:42:0x0108
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object g(android.content.Context r9, com.transsion.baselib.db.notification.PullMsgResp r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.push.helper.RoomHelper.g(android.content.Context, com.transsion.baselib.db.notification.PullMsgResp, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object h(Context context, MsgBean msgBean, Continuation continuation) {
        Object objB = AppDatabase.INSTANCE.b(context).s1().b(msgBean, continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f64096a;
    }
}
