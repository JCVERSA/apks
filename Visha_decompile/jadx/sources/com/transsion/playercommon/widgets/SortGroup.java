package com.transsion.playercommon.widgets;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.dbdata.utils.SortUtil;
import defpackage.h27;
import defpackage.p06;
import defpackage.pp3;
import defpackage.sq3;
import defpackage.w6c;

public class SortGroup extends LinearLayout {
    public Context b;
    public SortItem.a c;
    public b d;
    public int e;
    public boolean f;
    public int g;
    public c h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public boolean m;

    public class a implements SortItem.a {
        @Override
        public void a(SortItem sortItem, boolean z, boolean z2) {
            if (SortGroup.this.e != sortItem.getId()) {
                SortGroup sortGroup = SortGroup.this;
                sortGroup.j(sortGroup.e, false);
            }
            SortGroup.this.i(sortItem.getId(), sortItem.getValue(), z2, sortItem.getFrom());
            SortGroup.this.f(sortItem.getValue());
        }

        public a() {
        }
    }

    public interface b {
        void a(SortGroup sortGroup, int i, int i2);
    }

    public class c implements ViewGroup.OnHierarchyChangeListener {
        public ViewGroup.OnHierarchyChangeListener b;

        @Override
        public void onChildViewAdded(View view, View view2) {
            if (view == SortGroup.this && (view2 instanceof SortItem)) {
                if (view2.getId() == -1) {
                    view2.setId(View.generateViewId());
                }
                ((SortItem) view2).setOnSelectedChangeListener(SortGroup.this.c);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override
        public void onChildViewRemoved(View view, View view2) {
            if (view == SortGroup.this && (view2 instanceof SortItem)) {
                ((SortItem) view2).setOnSelectedChangeListener(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }

        public c() {
        }
    }

    public SortGroup(@NonNull Context context) {
        this(context, null);
    }

    public final void f(int i) {
        if (i == SortUtil.SortType.MANUAL.getValue()) {
            w6c.r(getContext(), "sort_manually_is_red_point", true);
        }
    }

    public final void g(Context context) {
        this.b = context;
        setOrientation(1);
        this.c = new a();
        c cVar = new c();
        this.h = cVar;
        super.setOnHierarchyChangeListener(cVar);
    }

    public boolean getIsAscending() {
        return this.f;
    }

    public boolean getNewestAscending() {
        return this.m ? this.k : this.f;
    }

    public int getNewestSortByNameValue() {
        return this.m ? this.l : this.g;
    }

    public int getSortByNameValue() {
        return this.g;
    }

    public final void h() {
        for (int i = 0; i < getChildCount(); i++) {
            SortItem sortItem = (SortItem) getChildAt(i);
            if (sortItem != null && sortItem.getValue() == this.g) {
                sortItem.setSelected(true, this.f);
                this.e = sortItem.getId();
                return;
            }
        }
    }

    public final void i(int i, int i2, boolean z, int i3) {
        this.e = i;
        this.m = true;
        this.l = i2;
        this.k = z;
        if (i3 != 1001 || Build.VERSION.SDK_INT <= 29) {
            w6c.t(this.b, this.i ? "video_pref_sort_name" : "audio_pref_sort_name", i2);
            w6c.r(this.b, this.i ? "video_pref_sort_by" : "audio_pref_sort_by", z);
        } else {
            w6c.t(this.b, "audio_pref_sort_name_album", i2);
            w6c.r(this.b, "audio_pref_sort_by_album", z);
        }
        if (this.j) {
            return;
        }
        if (i2 == SortUtil.SortType.MANUAL.getValue()) {
            SortUtil.q(i2);
            b bVar = this.d;
            if (bVar != null) {
                bVar.a(this, this.e, i2);
            }
            p06.M(this.i);
            return;
        }
        if (this.i) {
            SortUtil.r(z);
            SortUtil.s(i2);
        } else {
            SortUtil.p(z);
            SortUtil.q(i2);
        }
        sq3.a().d(this.i);
        p06.M(this.i);
        b bVar2 = this.d;
        if (bVar2 != null) {
            bVar2.a(this, this.e, i2);
        }
    }

    public final void j(int i, boolean z) {
        View viewFindViewById = findViewById(i);
        if (viewFindViewById == null || !(viewFindViewById instanceof SortItem)) {
            return;
        }
        ((SortItem) viewFindViewById).setSelected(z, false);
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
    }

    public void saveVideoListModeAttr(boolean z, int i, int i2, boolean z2) {
        pp3.I = i2 == -3;
        w6c.t(this.b, "video_sort_list_mode_type", i2);
        w6c.s(this.b, "video_adapter_grid_type", i2 == -2);
        w6c.s(this.b, "video_short_list_mode_open", pp3.I);
        if (z2) {
            SortUtil.r(z);
            SortUtil.s(i);
            sq3.a().d(true);
            h27.c().e(1154, Boolean.FALSE, 2);
            h27.c().e(1167, new Object[0]);
            p06.M(true);
        }
    }

    public void saveVideoSortAttr(boolean z, int i) {
        w6c.r(this.b, "video_pref_sort_by", z);
        w6c.t(this.b, "video_pref_sort_name", i);
        SortUtil.r(z);
        SortUtil.s(i);
        sq3.a().d(true);
    }

    public void setIsSortVideo(boolean z, boolean z2) {
        this.i = z;
        if (z2) {
            this.f = w6c.c(this.b, z ? "video_pref_sort_by" : "audio_pref_sort_by_album", false);
            this.g = w6c.d(this.b, z ? "video_pref_sort_name" : "audio_pref_sort_name_album", SortUtil.SortType.NUMBER.getValue());
        } else {
            this.f = w6c.c(this.b, z ? "video_pref_sort_by" : "audio_pref_sort_by", false);
            this.g = w6c.d(this.b, z ? "video_pref_sort_name" : "audio_pref_sort_name", 0);
        }
        h();
    }

    public void setNotPlayNow(boolean z) {
        this.j = z;
    }

    @Override
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.h.b = onHierarchyChangeListener;
    }

    public void setOnSelectedChangeListener(b bVar) {
        this.d = bVar;
    }

    public SortGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = -1;
        g(context);
    }

    public void setIsSortVideo(boolean z) {
        this.i = z;
        this.f = w6c.c(this.b, z ? "video_pref_sort_by" : "audio_pref_sort_by", false);
        this.g = w6c.d(this.b, z ? "video_pref_sort_name" : "audio_pref_sort_name", 0);
        h();
    }
}
