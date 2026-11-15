package com.transsion.search.fragment.result;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.model.PostEntity;
import com.transsion.search.bean.SearchList;
import com.transsion.search.bean.VerticalRank;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;

public final class SearchResultViewModel extends androidx.p009lifecycle.b {

    private final Lazy f50106b;

    private final b0 f50107c;

    private final b0 f50108d;

    private final b0 f50109e;

    private int f50110f;

    public static final class a extends dg.a {
        a() {
        }

        @Override
        public void a(String str, String str2) {
            wf.a.C0922a.l(wf.a.f74274a, "search", "SearchValuesFragment --> postRequestResource --> failed to post request resources " + str2, false, 4, null);
            SearchResultViewModel.this.i().n(null);
        }

        @Override
        public void c(PostEntity postEntity) {
            if (postEntity != null) {
                SearchResultViewModel.this.i().n(postEntity);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchResultViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50106b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return SearchResultViewModel.q();
            }
        });
        this.f50107c = new b0();
        this.f50108d = new b0();
        this.f50109e = new b0();
        this.f50110f = 1;
    }

    public final List h(List list) {
        ArrayList arrayList = new ArrayList();
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SearchList searchList = (SearchList) it.next();
                String title = searchList.getTitle();
                if (title != null && title.length() != 0) {
                    arrayList.add(new ResultWrapData(ResultType.TITLE, null, null, null, null, searchList.getTitle(), null, 94, null));
                }
                List<Subject> subjects = searchList.getSubjects();
                if (subjects != null) {
                    Iterator<T> it2 = subjects.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new ResultWrapData(ResultType.SUBJECT, (Subject) it2.next(), null, null, null, null, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null));
                    }
                }
                List<Staff> staffs = searchList.getStaffs();
                if (staffs != null) {
                    Iterator<T> it3 = staffs.iterator();
                    while (it3.hasNext()) {
                        arrayList.add(new ResultWrapData(ResultType.STAFF, null, (Staff) it3.next(), null, null, null, null, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, null));
                    }
                }
                List<Group> groups = searchList.getGroups();
                if (groups != null) {
                    Iterator<T> it4 = groups.iterator();
                    while (it4.hasNext()) {
                        arrayList.add(new ResultWrapData(ResultType.GROUP, null, null, (Group) it4.next(), null, null, null, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, null));
                    }
                }
                List<VerticalRank> verticalRanks = searchList.getVerticalRanks();
                if (verticalRanks != null) {
                    Iterator<T> it5 = verticalRanks.iterator();
                    while (it5.hasNext()) {
                        arrayList.add(new ResultWrapData(ResultType.VERTICAL_RANK, null, null, null, (VerticalRank) it5.next(), null, null, 110, null));
                    }
                }
                if (Intrinsics.c(searchList.getShowMore(), Boolean.TRUE)) {
                    arrayList.add(new ResultWrapData(ResultType.MORE, null, null, null, null, null, searchList.getMoreTabId(), 62, null));
                }
            }
        }
        return arrayList;
    }

    public final cq.g l() {
        return (cq.g) this.f50106b.getValue();
    }

    public static void n(SearchResultViewModel searchResultViewModel, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        searchResultViewModel.m(str, z10);
    }

    public static void p(SearchResultViewModel searchResultViewModel, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        searchResultViewModel.o(str, str2, z10);
    }

    public static final cq.g q() {
        return (cq.g) kg.c.f63982e.a().h(cq.g.class);
    }

    public final b0 i() {
        return this.f50109e;
    }

    public final b0 j() {
        return this.f50108d;
    }

    public final b0 k() {
        return this.f50107c;
    }

    public final void m(String keyword, boolean z10) {
        Intrinsics.h(keyword, "keyword");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(CampaignEx.JSON_KEY_AD_Q, keyword);
        jsonObject.addProperty("before", Boolean.valueOf(z10));
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        l().f(gg.a.f61067a.a(), companion.create(string, MediaType.INSTANCE.parse("application/json"))).E(ey.a.c()).subscribe(new a());
    }

    public final void o(String keyword, String str, boolean z10) {
        Intrinsics.h(keyword, "keyword");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new SearchResultViewModel$requestSearchResult$1(this, keyword, str, z10, null), 3, null);
    }

    public final void r(int i10) {
        this.f50110f = i10;
    }
}
