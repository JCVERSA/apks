package com.transsion.home.viewmodel;

import android.app.Application;
import android.net.Uri;
import android.os.Bundle;
import androidx.p009lifecycle.u0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.bean.RoomEntranceResponse;
import com.transsion.home.bean.TrendingRequestEntity;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.AbsSubjectListViewModel;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.p006enum.PostListSource;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

public final class TrendingViewModel extends AbsSubjectListViewModel {

    public static final a f44499p = new a(null);

    public static final int f44500q = 8;

    private final Lazy f44501k;

    private final Lazy f44502l;

    private final Lazy f44503m;

    private int f44504n;

    private final yk.e f44505o;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrendingViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f44501k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingViewModel.c0();
            }
        });
        this.f44502l = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingViewModel.Z();
            }
        });
        this.f44503m = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return TrendingViewModel.b0();
            }
        });
        this.f44504n = 12;
        this.f44505o = (yk.e) kg.c.f63982e.a().h(yk.e.class);
    }

    public static final Unit U(TrendingViewModel trendingViewModel) {
        String string = zk.e.f76812a.b().getString("trending_room_entrance_cache_v2", "");
        if (string == null || string.length() == 0) {
            wf.a.f74274a.c("TrendingViewModel", "fetchGroupInfo failed without cache", true);
        } else {
            trendingViewModel.W().n((RoomEntranceResponse) com.blankj.utilcode.util.o.d(string, RoomEntranceResponse.class));
            wf.a.f74274a.c("TrendingViewModel", "fetchGroupInfo use cache", true);
        }
        return Unit.f64096a;
    }

    public static final androidx.p009lifecycle.b0 Z() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 b0() {
        return new androidx.p009lifecycle.b0();
    }

    public static final androidx.p009lifecycle.b0 c0() {
        return new androidx.p009lifecycle.b0();
    }

    @Override
    public PostListSource A() {
        return PostListSource.POSTLIST;
    }

    @Override
    public void E(boolean z10) {
    }

    @Override
    public void F(Bundle bundle) {
    }

    public final void T(boolean z10) {
        Function0 function0 = new Function0() {
            @Override
            public final Object invoke() {
                return TrendingViewModel.U(this.f44549a);
            }
        };
        if (z10) {
            function0.invoke();
        } else {
            kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new TrendingViewModel$fetchGroupInfo$1(this, function0, null), 2, null);
        }
    }

    public final androidx.p009lifecycle.b0 V() {
        return (androidx.p009lifecycle.b0) this.f44502l.getValue();
    }

    public final androidx.p009lifecycle.b0 W() {
        return (androidx.p009lifecycle.b0) this.f44503m.getValue();
    }

    public final androidx.p009lifecycle.b0 X() {
        return (androidx.p009lifecycle.b0) this.f44501k.getValue();
    }

    public final void Y(String nextPage, int i10, boolean z10) {
        String string;
        Intrinsics.h(nextPage, "nextPage");
        TrendingRequestEntity trendingRequestEntity = new TrendingRequestEntity();
        trendingRequestEntity.setPage(nextPage);
        trendingRequestEntity.setPerPage(i10);
        trendingRequestEntity.setSessionId(jg.b.f63119a.h());
        Uri uriB = com.transsion.baselib.report.h.f42200a.b();
        if (uriB == null || (string = uriB.toString()) == null) {
            string = "";
        }
        trendingRequestEntity.setDeepLink(string);
        trendingRequestEntity.setLatest_events(new ej.a(ej.b.f59709a.e()));
        trendingRequestEntity.setTabId(String.valueOf(HomeTabId.Trending.getValue()));
        trendingRequestEntity.setDisablePlaylist(Boolean.valueOf(z10));
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new TrendingViewModel$getTrendingList$1(trendingRequestEntity, this, nextPage, null), 2, null);
    }

    public final void a0(Subject subject, int i10, String moduleName) {
        Intrinsics.h(subject, "subject");
        Intrinsics.h(moduleName, "moduleName");
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("has_resource", String.valueOf(subject.getHasResource()));
        map.put("item_type", "rec");
        String title = subject.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        String ops = subject.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        map.put(WebConstants.PAGE_FROM, v());
        map.put("sequence", String.valueOf(i10));
        Map mapU = u(t().ordinal());
        if (mapU != null) {
            for (Map.Entry entry : mapU.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (str2 == null) {
                    str2 = "";
                }
                map.put(str, str2);
            }
        }
        com.transsion.baselib.helper.a.f42121a.g(w(t().ordinal()), map);
    }

    @Override
    public String w(int i10) {
        return "Trending";
    }
}
