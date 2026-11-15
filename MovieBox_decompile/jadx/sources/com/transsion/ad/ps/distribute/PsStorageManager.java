package com.transsion.ad.ps.distribute;

import ci.h;
import com.blankj.utilcode.util.o;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.ps.model.PsLinkAdInfo;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

public final class PsStorageManager {

    public static final PsStorageManager f41146a = new PsStorageManager();

    private PsStorageManager() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Continuation continuation) {
        PsStorageManager$deleteInvalidFile$1 psStorageManager$deleteInvalidFile$1;
        HashSet hashSet;
        if (continuation instanceof PsStorageManager$deleteInvalidFile$1) {
            psStorageManager$deleteInvalidFile$1 = (PsStorageManager$deleteInvalidFile$1) continuation;
            int i10 = psStorageManager$deleteInvalidFile$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                psStorageManager$deleteInvalidFile$1.label = i10 - Integer.MIN_VALUE;
            } else {
                psStorageManager$deleteInvalidFile$1 = new PsStorageManager$deleteInvalidFile$1(this, continuation);
            }
        } else {
            psStorageManager$deleteInvalidFile$1 = new PsStorageManager$deleteInvalidFile$1(this, continuation);
        }
        Object obj = psStorageManager$deleteInvalidFile$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = psStorageManager$deleteInvalidFile$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            HashSet hashSet2 = new HashSet();
            PsDbManager psDbManager = PsDbManager.f41140a;
            psStorageManager$deleteInvalidFile$1.L$0 = hashSet2;
            psStorageManager$deleteInvalidFile$1.label = 1;
            Object objD = psDbManager.d(psStorageManager$deleteInvalidFile$1);
            if (objD == objF) {
                return objF;
            }
            hashSet = hashSet2;
            obj = objD;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hashSet = (HashSet) psStorageManager$deleteInvalidFile$1.L$0;
            ResultKt.b(obj);
        }
        List list = (List) obj;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                PsLinkAdInfo psLinkAdInfo = (PsLinkAdInfo) o.d(((PsLinkAdPlan) it.next()).getPsLinkAdInfoStr(), PsLinkAdInfo.class);
                hashSet.add(psLinkAdInfo.getPath());
                hashSet.add(psLinkAdInfo.getAdvertiserAvatarPath());
            }
        }
        h.f16940a.b(new File(com.transsion.ad.a.f40775a.a() + File.separatorChar), hashSet);
        return Unit.f64096a;
    }
}
