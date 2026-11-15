package com.cloud.hisavana.sdk;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.iab.omid.library.hisavana.adsession.CreativeType;
import com.iab.omid.library.hisavana.adsession.FriendlyObstructionPurpose;
import defpackage.c74;
import defpackage.i81;
import defpackage.ikd;
import defpackage.s7;
import defpackage.ul4;
import defpackage.y45;
import defpackage.z5;
import defpackage.zfb;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

public final class Q0 {
    public final Map a = new LinkedHashMap();

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Lzfb;"}, k = 3, mv = {1, 9, 0})
    public static final class a extends Lambda implements c74 {
        final List<View> a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(List<View> list) {
            super(0);
            this.a = list;
        }

        @Override
        public final zfb invoke() {
            ikd.b().d("OmSdk", "omid setupAdSession failed");
            List<View> list = this.a;
            if (list == null) {
                return null;
            }
            list.clear();
            return zfb.a;
        }
    }

    public final void a() {
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            ((s7) ((Map.Entry) it.next()).getValue()).c();
            ikd.b().d("OmSdk", "omid session finish");
        }
        this.a.clear();
    }

    public final void b(AdsDTO adsDTO, ViewGroup viewGroup, List list) {
        Object objPut;
        if (this.a.containsKey(adsDTO != null ? adsDTO.getUuid() : null)) {
            return;
        }
        if (adsDTO == null || viewGroup == null) {
            ikd.b().d("OmSdk", "omid adSession == null");
            if (list != null) {
                list.clear();
                return;
            }
            return;
        }
        s7 s7VarB = n.a.b(ul4.a(), CreativeType.NATIVE_DISPLAY, adsDTO);
        if (s7VarB != null) {
            try {
                s7VarB.d(viewGroup);
                if (list != null && !list.isEmpty()) {
                    Iterator it = i81.l0(list).iterator();
                    while (it.hasNext()) {
                        s7VarB.a((View) it.next(), FriendlyObstructionPurpose.OTHER, null);
                    }
                    list.clear();
                }
                s7VarB.e();
                z5 z5VarA = z5.a(s7VarB);
                z5VarA.c();
                z5VarA.b();
                ikd.b().d("OmSdk", "omid adEvents impressionOccurred");
                Map map = this.a;
                String uuid = adsDTO.getUuid();
                y45.i(uuid, "getUuid(...)");
                objPut = map.put(uuid, s7VarB);
            } catch (Exception e) {
                ikd.b().e("setup omid native failed : " + e.getMessage());
                objPut = zfb.a;
            }
            if (objPut != null) {
                return;
            }
        }
        new a(list);
    }
}
