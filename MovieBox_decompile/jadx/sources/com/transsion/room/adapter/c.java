package com.transsion.room.adapter;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.therouter.TheRouter;
import com.transsion.baseui.fragment.EmptyFragment;
import com.transsion.moviedetailapi.PostRankType;
import com.transsion.moviedetailapi.g;
import com.transsion.room.viewmodel.RoomHotViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c extends FragmentStateAdapter {

    private final String f49375a;

    private final Lazy f49376b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String str, Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f49375a = str;
        this.f49376b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return c.i();
            }
        });
    }

    private final g h() {
        return (g) this.f49376b.getValue();
    }

    public static final g i() {
        return (g) TheRouter.d(g.class, new Object[0]);
    }

    @Override
    public Fragment createFragment(int i10) {
        Bundle bundle = new Bundle();
        PostRankType postRankType = i10 == 0 ? PostRankType.POST_RANK_TYPE_HOT : PostRankType.POST_RANK_TYPE_NEW;
        bundle.putString("subject_id", this.f49375a);
        bundle.putSerializable("rank_type", postRankType);
        g gVarH = h();
        Fragment fragmentE = gVarH != null ? gVarH.e(bundle, RoomHotViewModel.class) : null;
        return fragmentE == null ? new EmptyFragment() : fragmentE;
    }

    @Override
    public int getItemCount() {
        return 2;
    }
}
