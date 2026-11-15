package yn;

import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.therouter.router.RouteItem;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.player.mediasession.h;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.shorttv.factory.i;
import com.transsion.postdetail.ui.fragment.CommentFragment;
import com.transsion.postdetail.ui.fragment.RoomPostExploreFragment;
import com.transsion.postdetail.ui.fragment.RoomPostNearbyFragment;
import com.transsion.postdetail.ui.fragment.RoomPostNewestFragment;
import com.transsion.postdetail.ui.fragment.RoomPostPopularFragment;
import com.transsion.postdetail.ui.fragment.RoomPostStaggeredFragment;
import com.transsion.postdetail.ui.fragment.RoomPostSubFragment;
import com.transsion.postdetail.ui.interceptor.LocalVideoDetailInterceptor;
import fo.n;
import fo.w;
import kotlin.jvm.internal.Intrinsics;

public final class b implements io.b {
    public static final void q() {
        h.f46423a.p();
    }

    @Override
    public void a(RouteItem routeItem, mf.b callback) {
        Intrinsics.h(routeItem, "routeItem");
        Intrinsics.h(callback, "callback");
        LocalVideoDetailInterceptor.f47787a.a().i(routeItem, callback);
        com.transsion.postdetail.shorttv.c.f47168a.a().d(routeItem, callback);
    }

    @Override
    public Fragment b(String str, RoomTabItem item, int i10) {
        Intrinsics.h(item, "item");
        return RoomPostStaggeredFragment.INSTANCE.a(str, item, i10);
    }

    @Override
    public Fragment c(String str, RoomTabItem item, int i10) {
        Intrinsics.h(item, "item");
        return RoomPostSubFragment.INSTANCE.a(str, item, i10);
    }

    @Override
    public Fragment d(String str, String str2, String str3) {
        return RoomPostExploreFragment.INSTANCE.a(str, str2, str3);
    }

    @Override
    public Fragment e(String str) {
        return RoomPostNewestFragment.INSTANCE.a(str);
    }

    @Override
    public Fragment f(String str, String str2, long j10, boolean z10, boolean z11, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        return CommentFragment.INSTANCE.a(str, str2, j10, z10, z11, str3 == null ? "" : str3, str4, str5, str6, str7, str8, str9, str10);
    }

    @Override
    public void g(Fragment fragment, boolean z10) {
        if (fragment instanceof RoomPostExploreFragment) {
            ((RoomPostExploreFragment) fragment).loadMoreCacheData(z10);
        }
    }

    @Override
    public BaseItemProvider h(String str, String str2, RecyclerView.s pool) {
        Intrinsics.h(pool, "pool");
        return new w(str, str2, pool);
    }

    @Override
    public void i(PostSubjectItem data) {
        Intrinsics.h(data, "data");
        ImmVideoHelper.f46840h.a().s(data);
    }

    @Override
    public void j(Application application) {
        Intrinsics.h(application, "application");
        wf.a.C0922a.f(wf.a.f74274a, "ShortTv", "---------------initShortTv--------------", false, 4, null);
        pq.c.f69249a.d(application, new i());
        cs.a.f58651a.c(application, new com.transsion.postdetail.shorttv.factory.a());
    }

    @Override
    public Fragment k(String str) {
        return RoomPostPopularFragment.INSTANCE.a(str);
    }

    @Override
    public Fragment l(String str) {
        return RoomPostNearbyFragment.INSTANCE.a(str);
    }

    @Override
    public void m(String tag) {
        Intrinsics.h(tag, "tag");
        cw.c cVar = cw.c.f58664a;
        if (cVar.b(tag)) {
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "资源被删除，移除pip,tag:" + tag, false, 4, null);
            cVar.a();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override
                public final void run() {
                    b.q();
                }
            }, 1500L);
        }
    }

    @Override
    public void n(Fragment fragment) {
        if (fragment instanceof RoomPostExploreFragment) {
            ((RoomPostExploreFragment) fragment).insertRoomCacheData();
        }
    }

    @Override
    public BaseItemProvider o(String str, String str2, RecyclerView.s pool) {
        Intrinsics.h(pool, "pool");
        return new n(str, str2, pool);
    }
}
