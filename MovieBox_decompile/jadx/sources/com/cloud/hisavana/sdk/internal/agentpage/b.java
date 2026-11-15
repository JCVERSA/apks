package com.cloud.hisavana.sdk.internal.agentpage;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.a0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.p3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class b extends F {

    private final String f21935i;

    private final List f21936j;

    private a f21937k;

    public interface a {
        void a(List list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(p3 fetchInfo) {
        super(fetchInfo);
        Intrinsics.h(fetchInfo, "fetchInfo");
        this.f21935i = "TranAgentPage";
        this.f21936j = new ArrayList();
    }

    public final void F(a adListener) {
        Intrinsics.h(adListener, "adListener");
        this.f21937k = adListener;
    }

    @Override
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        a aVar = this.f21937k;
        if (aVar != null) {
            aVar.a(new ArrayList());
        }
        super.b(taErrorCode, bundle);
    }

    @Override
    public void d(List list, Bundle bundle) {
        b4 b4VarB = b4.b();
        String str = this.f21935i;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onAdLoadedStub ads size = ");
        sb2.append(list != null ? Integer.valueOf(list.size()) : null);
        b4VarB.i(str, sb2.toString());
        if (list == null || list.size() == 0) {
            b4.b().d(this.f21935i, "onAdLoadedStub ads = null");
            a aVar = this.f21937k;
            if (aVar != null) {
                aVar.a(new ArrayList());
                return;
            }
            return;
        }
        IDiskCache iDiskCacheG = DiskLruCacheUtil.g(4);
        if (iDiskCacheG == null) {
            b4.b().e(this.f21935i, "get getDiskCache failed");
            return;
        }
        this.f21936j.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            String strJ = a0.f20947a.j(adsDTO);
            if (!TextUtils.isEmpty(strJ) && iDiskCacheG.c(new ImageCacheURL(strJ)) != null) {
                this.f21936j.add(adsDTO);
            }
        }
        a aVar2 = this.f21937k;
        if (aVar2 != null) {
            List mAdBeans = this.f21936j;
            Intrinsics.g(mAdBeans, "mAdBeans");
            aVar2.a(mAdBeans);
        }
    }

    @Override
    public void m() {
        b4.b().d(this.f21935i, "TranAgentPage destroy");
        this.f21937k = null;
        this.f21936j.clear();
        super.m();
    }
}
