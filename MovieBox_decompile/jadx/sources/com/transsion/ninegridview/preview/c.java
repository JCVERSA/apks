package com.transsion.ninegridview.preview;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.transsion.moviedetailapi.bean.Image;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class c extends FragmentStateAdapter {

    private List f45836a;

    private Boolean f45837b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(FragmentActivity activity) {
        super(activity);
        Intrinsics.h(activity, "activity");
        this.f45837b = Boolean.FALSE;
    }

    @Override
    public Fragment createFragment(int i10) {
        GifImagePreviewFragment.Companion aVar = GifImagePreviewFragment.INSTANCE;
        Boolean bool = this.f45837b;
        List list = this.f45836a;
        return aVar.a(bool, list != null ? (Image) list.get(i10) : null, i10);
    }

    public final void g(Boolean bool) {
        this.f45837b = bool;
    }

    @Override
    public int getItemCount() {
        List list = this.f45836a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final void h(List list) {
        this.f45836a = list;
    }
}
