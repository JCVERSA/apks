package com.transsion.ad.bidding.icon;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.ps.distribute.PSDistributionRequestManager;
import com.transsion.ad.ps.model.RecommendInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import org.json.JSONException;

public final class e extends oh.a {

    private oh.a f40937d;

    private boolean f40938e;

    public static Object A(e eVar, int i10, String str, String str2, Continuation continuation, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        return eVar.z(i10, str, str2, continuation);
    }

    private final int y(String str) {
        return com.transsion.ad.scene.a.f41152a.n(str, 10);
    }

    public final void B(boolean z10) {
        this.f40938e = z10;
    }

    public final void C(oh.a aVar) {
        this.f40937d = aVar;
    }

    @Override
    public void e(TAdErrorCode tAdErrorCode, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.e(tAdErrorCode, biddingIntermediateMaterialBean);
        oh.a aVar = this.f40937d;
        if (aVar != null) {
            aVar.e(tAdErrorCode, biddingIntermediateMaterialBean);
        }
    }

    @Override
    public void v(List list) {
        super.v(list);
        if (this.f40938e) {
            ArrayList arrayList = new ArrayList();
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    RecommendInfo recommendInfo = (RecommendInfo) it.next();
                    if (!zh.b.f76790a.c(recommendInfo.getPackageName())) {
                        arrayList.add(recommendInfo);
                    }
                }
            }
            list = arrayList;
        }
        oh.a aVar = this.f40937d;
        if (aVar != null) {
            aVar.v(list);
        }
    }

    public final void x() {
        this.f40937d = null;
    }

    public final Object z(int i10, String str, String str2, Continuation continuation) throws JSONException {
        Object objD = PSDistributionRequestManager.f41136a.d(i10, y(str), str, str2, this, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f64096a;
    }
}
