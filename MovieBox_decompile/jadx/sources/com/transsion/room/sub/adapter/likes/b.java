package com.transsion.room.sub.adapter.likes;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.moviedetail.fragment.SubjectListFragment;
import com.transsion.room.R$string;
import com.transsion.room.sub.fragment.likes.UgcLikesFragment;
import com.transsion.usercenter.profile.ProfileSubjectListViewModel;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class b extends FragmentStateAdapter {

    private final List f49631a;

    public static final class a {

        private final String f49632a;

        private final Fragment f49633b;

        public a(String title, Fragment fragment) {
            Intrinsics.h(title, "title");
            Intrinsics.h(fragment, "fragment");
            this.f49632a = title;
            this.f49633b = fragment;
        }

        public final Fragment a() {
            return this.f49633b;
        }

        public final String b() {
            return this.f49632a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f49632a, aVar.f49632a) && Intrinsics.c(this.f49633b, aVar.f49633b);
        }

        public int hashCode() {
            return (this.f49632a.hashCode() * 31) + this.f49633b.hashCode();
        }

        public String toString() {
            return "TabInfo(title=" + this.f49632a + ", fragment=" + this.f49633b + ")";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(FragmentActivity activity) {
        super(activity);
        Intrinsics.h(activity, "activity");
        String string = activity.getString(R$string.play_hub);
        Intrinsics.g(string, "getString(...)");
        a aVar = new a(string, new UgcLikesFragment());
        String string2 = activity.getString(R$string.buzz_box);
        Intrinsics.g(string2, "getString(...)");
        this.f49631a = CollectionsKt.o(aVar, new a(string2, SubjectListFragment.INSTANCE.a(g(), ProfileSubjectListViewModel.class)));
    }

    private final Bundle g() {
        Bundle bundle = new Bundle();
        bundle.putInt(EventConstants.KEY_SOURCE, 1);
        return bundle;
    }

    @Override
    public Fragment createFragment(int i10) {
        return ((a) this.f49631a.get(i10)).a();
    }

    @Override
    public int getItemCount() {
        return this.f49631a.size();
    }

    public final String h(int i10) {
        return ((a) this.f49631a.get(i10)).b();
    }
}
