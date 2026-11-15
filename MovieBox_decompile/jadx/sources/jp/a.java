package jp;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.transsion.room.activity.RoomDetailActivity;
import com.transsion.room.api.RoomsViewType;
import com.transsion.room.helper.LocationPlaceHelper;
import com.transsion.room.widget.RecommendRoomsView;
import com.transsion.room.widget.SubjectDetailRoomsView;
import com.transsion.room.widget.TrendingRoomsView;
import ep.c;
import ep.e;
import ep.f;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public class a implements f {

    public class C0776a {

        public static final int[] f63244a;

        static {
            int[] iArr = new int[RoomsViewType.values().length];
            try {
                iArr[RoomsViewType.TYPE_ROOM_HOME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomsViewType.TYPE_TRENDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RoomsViewType.TYPE_SUBJECT_DETAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f63244a = iArr;
        }
    }

    @Override
    public void a(FragmentActivity activity, boolean z10, Function1 callback) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        LocationPlaceHelper.f49603a.t(activity, z10, callback);
    }

    @Override
    public void b(FragmentActivity activity, Function1 callback) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(callback, "callback");
        LocationPlaceHelper.f49603a.n(activity, callback);
    }

    @Override
    public e c(Context context, RoomsViewType type) {
        Intrinsics.h(context, "context");
        Intrinsics.h(type, "type");
        int i10 = C0776a.f63244a[type.ordinal()];
        if (i10 == 1) {
            return new RecommendRoomsView(context, null, 0, 6, null);
        }
        if (i10 == 2) {
            return new TrendingRoomsView(context, null, 0, 6, null);
        }
        if (i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return new SubjectDetailRoomsView(context, null, 0, 6, null);
    }

    @Override
    public String d() {
        return String.valueOf(Reflection.b(RoomDetailActivity.class).g());
    }

    @Override
    public void e(double d10, double d11, Function1 callback) {
        Intrinsics.h(callback, "callback");
        LocationPlaceHelper.f49603a.p(d10, d11, callback);
    }

    @Override
    public c f(Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        return new com.transsion.room.helper.e(fragment);
    }
}
