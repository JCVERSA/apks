package com.transsnet.downloader.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.transsion.moviedetailapi.bean.ResourcesSeason;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.fragment.DownloadMultiListFragment;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class l extends FragmentStateAdapter {

    private final zw.c f56299a;

    private List f56300b;

    private Subject f56301c;

    private String f56302d;

    private String f56303e;

    private String f56304f;

    private String f56305g;

    private String f56306h;

    private int f56307i;

    private Integer f56308j;

    private boolean f56309k;

    private final Map f56310l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(FragmentActivity activity, zw.c tabControl) {
        super(activity);
        Intrinsics.h(activity, "activity");
        Intrinsics.h(tabControl, "tabControl");
        this.f56299a = tabControl;
        this.f56310l = new LinkedHashMap();
    }

    @Override
    public Fragment createFragment(int i10) {
        ResourcesSeason resourcesSeasonH = h(i10);
        DownloadMultiListFragment downloadMultiListFragmentA = DownloadMultiListFragment.INSTANCE.a(this.f56303e, this.f56304f, this.f56301c, this.f56302d, this.f56305g, this.f56306h, 0, i10, this.f56309k, false, resourcesSeasonH != null ? resourcesSeasonH.getSe() : 0, this.f56307i, i10);
        downloadMultiListFragmentA.p1(this.f56300b);
        downloadMultiListFragmentA.q1(this.f56299a);
        this.f56310l.put(Integer.valueOf(i10), new WeakReference(downloadMultiListFragmentA));
        return downloadMultiListFragmentA;
    }

    public final DownloadMultiListFragment g(int i10) {
        WeakReference weakReference = (WeakReference) this.f56310l.get(Integer.valueOf(i10));
        if (weakReference != null) {
            return (DownloadMultiListFragment) weakReference.get();
        }
        return null;
    }

    @Override
    public int getItemCount() {
        List list = this.f56300b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final ResourcesSeason h(int i10) {
        List list = this.f56300b;
        if (list != null) {
            return (ResourcesSeason) CollectionsKt.l0(list, i10);
        }
        return null;
    }

    public final void i(String str) {
        this.f56302d = str;
    }

    public final void j(String str) {
        this.f56304f = str;
    }

    public final void k(String str) {
        this.f56305g = str;
    }

    public final void l(String str) {
        this.f56303e = str;
    }

    public final void m(Integer num) {
        this.f56308j = num;
    }

    public final void n(boolean z10) {
        this.f56309k = z10;
    }

    public final void o(Subject subject) {
        this.f56301c = subject;
    }

    public final void p(String str) {
        this.f56306h = str;
    }

    public final void q(int i10) {
        this.f56307i = i10;
    }

    public final void setData(List list) {
        this.f56300b = list;
    }
}
