package com.cloud.hisavana.sdk.internal.agentpage;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.i0;
import defpackage.ied;
import defpackage.ikd;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a extends G {
    public final String i;
    public final List j;
    public InterfaceC0049a k;

    public interface InterfaceC0049a {
        void a(List list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ied iedVar) {
        super(iedVar);
        y45.j(iedVar, "fetchInfo");
        this.i = "TranAgentPage";
        this.j = new ArrayList();
    }

    public final void F(InterfaceC0049a interfaceC0049a) {
        y45.j(interfaceC0049a, "adListener");
        this.k = interfaceC0049a;
    }

    @Override
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        InterfaceC0049a interfaceC0049a = this.k;
        if (interfaceC0049a != null) {
            interfaceC0049a.a(new ArrayList());
        }
        super.b(taErrorCode, bundle);
    }

    @Override
    public void d(List list, Bundle bundle) {
        ikd ikdVarB = ikd.b();
        String str = this.i;
        StringBuilder sb = new StringBuilder();
        sb.append("onAdLoadedStub ads size = ");
        sb.append(list != null ? Integer.valueOf(list.size()) : null);
        ikdVarB.i(str, sb.toString());
        if (list == null || list.size() == 0) {
            ikd.b().d(this.i, "onAdLoadedStub ads = null");
            InterfaceC0049a interfaceC0049a = this.k;
            if (interfaceC0049a != null) {
                interfaceC0049a.a(new ArrayList());
                return;
            }
            return;
        }
        IDiskCache iDiskCacheG = DiskLruCacheUtil.g(4);
        if (iDiskCacheG == null) {
            ikd.b().e(this.i, "get getDiskCache failed");
            return;
        }
        this.j.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            String strI = i0.a.i(adsDTO);
            if (!TextUtils.isEmpty(strI) && iDiskCacheG.d(new ImageCacheURL(strI)) != null) {
                this.j.add(adsDTO);
            }
        }
        InterfaceC0049a interfaceC0049a2 = this.k;
        if (interfaceC0049a2 != null) {
            List list2 = this.j;
            y45.i(list2, "mAdBeans");
            interfaceC0049a2.a(list2);
        }
    }

    @Override
    public void m() {
        ikd.b().d(this.i, "TranAgentPage destroy");
        this.k = null;
        this.j.clear();
        super.m();
    }
}
