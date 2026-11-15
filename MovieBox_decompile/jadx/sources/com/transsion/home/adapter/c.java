package com.transsion.home.adapter;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.videodetail.music.ui.MusicTabLikedFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c extends FragmentStateAdapter {

    private final ViewPager2 f43082a;

    private final int f43083b;

    private final String f43084c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ViewPager2 viewPager2, int i10, String str, Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f43082a = viewPager2;
        this.f43083b = i10;
        this.f43084c = str;
    }

    public static final Unit h(c cVar) {
        ViewPager2 viewPager2 = cVar.f43082a;
        if (viewPager2 != null) {
            viewPager2.setCurrentItem(0);
        }
        return Unit.f64096a;
    }

    @Override
    public Fragment createFragment(int i10) {
        if (i10 == 0) {
            return SubTabFragment.INSTANCE.b(this.f43083b, this.f43084c);
        }
        if (i10 != 1) {
            return new MusicTabLikedFragment();
        }
        MusicTabLikedFragment musicTabLikedFragment = new MusicTabLikedFragment();
        musicTabLikedFragment.m1(new Function0() {
            @Override
            public final Object invoke() {
                return c.h(this.f43081a);
            }
        });
        return musicTabLikedFragment;
    }

    @Override
    public int getItemCount() {
        return 2;
    }
}
