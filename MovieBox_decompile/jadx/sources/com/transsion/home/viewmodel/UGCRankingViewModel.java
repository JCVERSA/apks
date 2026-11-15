package com.transsion.home.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.home.bean.UGCRankAllData;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class UGCRankingViewModel extends t0 {

    public static final a f44522g = new a(null);

    public static final int f44523h = 8;

    private String f44528e;

    private final androidx.p009lifecycle.b0 f44524a = new androidx.p009lifecycle.b0();

    private final androidx.p009lifecycle.b0 f44525b = new androidx.p009lifecycle.b0();

    private String f44526c = "1";

    private final yk.d f44527d = (yk.d) kg.c.f63982e.a().h(yk.d.class);

    private String f44529f = "";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final void i(UGCRankAllData uGCRankAllData) {
        ArrayList arrayList;
        if (uGCRankAllData != null) {
            List<UGCContent> items = uGCRankAllData.getItems();
            if (items != null) {
                arrayList = new ArrayList();
                for (Object obj : items) {
                    UGCContent uGCContent = (UGCContent) obj;
                    if (Intrinsics.c(uGCContent.getTopicType(), "UGC_VIDEO") && uGCContent.getVideo() != null) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            uGCRankAllData.setItems(arrayList);
        }
    }

    public final void o(UGCRankAllData uGCRankAllData) {
        List<UGCContent> items;
        String ops;
        String ops2;
        String ops3 = uGCRankAllData != null ? uGCRankAllData.getOps() : null;
        if (ops3 == null || ops3.length() == 0 || uGCRankAllData == null || (items = uGCRankAllData.getItems()) == null) {
            return;
        }
        for (UGCContent uGCContent : items) {
            UGCVideo video = uGCContent.getVideo();
            UGCCollection collection = uGCContent.getCollection();
            if (video != null && ((ops2 = video.getOps()) == null || ops2.length() == 0)) {
                video.setOps(ops3);
            }
            if (collection != null && ((ops = collection.getOps()) == null || ops.length() == 0)) {
                collection.setOps(ops3);
            }
        }
    }

    private final void p(boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new UGCRankingViewModel$startRequest$1(z10, this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 j() {
        return this.f44525b;
    }

    public final androidx.p009lifecycle.b0 k() {
        return this.f44524a;
    }

    public final void l(String str, String tabId) {
        Intrinsics.h(tabId, "tabId");
        wf.a.C0922a.f(wf.a.f74274a, "UGCRankingViewModel", "getRankData: category=" + str + ", tabId=" + tabId, false, 4, null);
        this.f44528e = str;
        this.f44529f = tabId;
        this.f44526c = "1";
        p(false);
    }

    public final void m() {
        wf.a.C0922a.f(wf.a.f74274a, "UGCRankingViewModel", "loadMore: currentPage=" + this.f44526c, false, 4, null);
        p(true);
    }

    public final void n() {
        wf.a.C0922a.f(wf.a.f74274a, "UGCRankingViewModel", "refresh: category=" + this.f44528e + ", tabId=" + this.f44529f, false, 4, null);
        this.f44526c = "1";
        p(false);
    }
}
