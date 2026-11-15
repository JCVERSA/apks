package com.bytedance.sdk.component.vS.Sj.TKC;

import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.HiB;
import java.util.concurrent.atomic.AtomicLong;

public class sP {
    public static void Sj(AtomicLong atomicLong, int i10) {
        HiB hiBUvD = Dq.Jcg().uvD();
        if (hiBUvD == null || !hiBUvD.Jcg() || atomicLong == null) {
            return;
        }
        atomicLong.getAndAdd(i10);
    }
}
