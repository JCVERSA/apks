package com.chad.library.adapter.base.provider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class BaseItemProvider {

    public Context f20588a;

    private WeakReference f20589b;

    private final Lazy f20590c;

    private final Lazy f20591d;

    public BaseItemProvider() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f20590c = LazyKt.a(lazyThreadSafetyMode, new Function0<ArrayList<Integer>>() {
            @Override
            public final ArrayList<Integer> invoke() {
                return new ArrayList<>();
            }
        });
        this.f20591d = LazyKt.a(lazyThreadSafetyMode, new Function0<ArrayList<Integer>>() {
            @Override
            public final ArrayList<Integer> invoke() {
                return new ArrayList<>();
            }
        });
    }

    private final ArrayList j() {
        return (ArrayList) this.f20590c.getValue();
    }

    private final ArrayList n() {
        return (ArrayList) this.f20591d.getValue();
    }

    public abstract void b(BaseViewHolder baseViewHolder, Object obj);

    public void f(BaseViewHolder helper, Object obj, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(payloads, "payloads");
    }

    public BaseProviderMultiAdapter g() {
        WeakReference weakReference = this.f20589b;
        if (weakReference != null) {
            return (BaseProviderMultiAdapter) weakReference.get();
        }
        return null;
    }

    public final ArrayList h() {
        return j();
    }

    public final ArrayList i() {
        return n();
    }

    public final Context k() {
        Context context = this.f20588a;
        if (context != null) {
            return context;
        }
        Intrinsics.y("context");
        return null;
    }

    public abstract int l();

    public abstract int m();

    public void o(BaseViewHolder helper, View view, Object obj, int i10) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(view, "view");
    }

    public boolean p(BaseViewHolder helper, View view, Object obj, int i10) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(view, "view");
        return false;
    }

    public void q(BaseViewHolder helper, View view, Object obj, int i10) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(view, "view");
    }

    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        return new BaseViewHolder(u6.a.a(parent, m()));
    }

    public boolean s(BaseViewHolder helper, View view, Object obj, int i10) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(view, "view");
        return false;
    }

    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
    }

    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
    }

    public void v(BaseViewHolder viewHolder, int i10) {
        Intrinsics.h(viewHolder, "viewHolder");
    }

    public final void w(BaseProviderMultiAdapter adapter) {
        Intrinsics.h(adapter, "adapter");
        this.f20589b = new WeakReference(adapter);
    }

    public final void x(Context context) {
        Intrinsics.h(context, "<set-?>");
        this.f20588a = context;
    }
}
