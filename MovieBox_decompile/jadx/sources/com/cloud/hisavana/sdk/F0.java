package com.cloud.hisavana.sdk;

import android.view.View;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.iab.omid.library.hisavana.adsession.CreativeType;
import com.iab.omid.library.hisavana.adsession.FriendlyObstructionPurpose;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

public final class F0 {

    private final Map f20894a = new LinkedHashMap();

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Lkotlin/Unit;"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function0<Unit> {

        final List<View> f20895a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(List<View> list) {
            super(0);
            this.f20895a = list;
        }

        @Override
        public final Unit invoke() {
            b4.b().d("OmSdk", "omid setupAdSession failed");
            List<View> list = this.f20895a;
            if (list == null) {
                return null;
            }
            list.clear();
            return Unit.f64096a;
        }
    }

    public final void a() {
        Iterator it = this.f20894a.entrySet().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.b) ((Map.Entry) it.next()).getValue()).c();
            b4.b().d("OmSdk", "omid session finish");
        }
        this.f20894a.clear();
    }

    public final void b(AdsDTO adsDTO, ViewGroup viewGroup, List list) {
        Object objPut;
        if (this.f20894a.containsKey(adsDTO != null ? adsDTO.getUuid() : null)) {
            return;
        }
        if (adsDTO == null || viewGroup == null) {
            b4.b().d("OmSdk", "omid adSession == null");
            if (list != null) {
                list.clear();
                return;
            }
            return;
        }
        com.iab.omid.library.hisavana.adsession.b bVarB = g0.f21836a.b(com.cloud.sdk.commonutil.util.e.a(), CreativeType.NATIVE_DISPLAY, adsDTO);
        if (bVarB != null) {
            try {
                bVarB.d(viewGroup);
                if (list != null && !list.isEmpty()) {
                    Iterator it = CollectionsKt.f0(list).iterator();
                    while (it.hasNext()) {
                        bVarB.a((View) it.next(), FriendlyObstructionPurpose.OTHER, null);
                    }
                    list.clear();
                }
                bVarB.e();
                com.iab.omid.library.hisavana.adsession.a aVarA = com.iab.omid.library.hisavana.adsession.a.a(bVarB);
                aVarA.c();
                aVarA.b();
                b4.b().d("OmSdk", "omid adEvents impressionOccurred");
                Map map = this.f20894a;
                String uuid = adsDTO.getUuid();
                Intrinsics.g(uuid, "getUuid(...)");
                objPut = map.put(uuid, bVarB);
            } catch (Exception e10) {
                b4.b().e("setup omid native failed : " + e10.getMessage());
                objPut = Unit.f64096a;
            }
            if (objPut != null) {
                return;
            }
        }
        new a(list);
    }
}
