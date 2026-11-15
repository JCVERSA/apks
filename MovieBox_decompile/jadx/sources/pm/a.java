package pm;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.therouter.router.RouteItem;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.activity.SubjectListActivity;
import com.transsion.moviedetail.fragment.SubjectListFragment;
import com.transsion.moviedetailapi.g;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public class a implements g {
    @Override
    public void a(RouteItem routeItem, mf.b callback) {
        Intrinsics.h(routeItem, "routeItem");
        Intrinsics.h(callback, "callback");
        com.transsion.moviedetail.preload.g.f45562a.a().a(routeItem, callback);
    }

    @Override
    public void b(Context context, Bundle params, Class type, String str) {
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
        Intrinsics.h(type, "type");
        SubjectListActivity.INSTANCE.a(context, params, type, str);
    }

    @Override
    public void c(Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        if (fragment instanceof SubjectListFragment) {
            ((SubjectListFragment) fragment).refresh();
        }
    }

    @Override
    public String d() {
        return String.valueOf(Reflection.b(MovieDetailActivity.class).g());
    }

    @Override
    public Fragment e(Bundle params, Class type) {
        Intrinsics.h(params, "params");
        Intrinsics.h(type, "type");
        return SubjectListFragment.INSTANCE.a(params, type);
    }
}
