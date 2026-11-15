package com.transsion.usercenter.profile.adapter;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.transsion.baseui.fragment.EmptyFragment;
import com.transsion.moviedetailapi.g;
import com.transsion.usercenter.profile.ProfileSubjectListViewModel;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class b extends FragmentStateAdapter {

    private final String f54973a;

    private final androidx.collection.a f54974b;

    private final Lazy f54975c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String str, Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f54973a = str;
        this.f54974b = new androidx.collection.a();
        this.f54975c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.j();
            }
        });
    }

    private final g i() {
        return (g) this.f54975c.getValue();
    }

    public static final g j() {
        return (g) TheRouter.d(g.class, new Object[0]);
    }

    @Override
    public Fragment createFragment(int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt(EventConstants.KEY_SOURCE, i10);
        bundle.putString("userId", this.f54973a);
        g gVarI = i();
        Fragment fragmentE = gVarI != null ? gVarI.e(bundle, ProfileSubjectListViewModel.class) : null;
        this.f54974b.put(Integer.valueOf(i10), fragmentE);
        return fragmentE == null ? new EmptyFragment() : fragmentE;
    }

    @Override
    public int getItemCount() {
        return 2;
    }

    public final void h(int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt(EventConstants.KEY_SOURCE, i10);
        bundle.putString("userId", this.f54973a);
        Fragment fragment = (Fragment) this.f54974b.get(Integer.valueOf(i10));
        if (fragment == null || fragment.isStateSaved()) {
            return;
        }
        fragment.setArguments(bundle);
        g gVarI = i();
        if (gVarI != null) {
            gVarI.c(fragment);
        }
    }
}
