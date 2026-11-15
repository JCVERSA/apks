package com.chad.library.adapter.base.binder;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.e;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class BaseItemBinder {

    private final Lazy f20562a;

    private final Lazy f20563b;

    private e f20564c;

    private Context f20565d;

    public BaseItemBinder() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f20562a = LazyKt.a(lazyThreadSafetyMode, new Function0<ArrayList<Integer>>() {
            @Override
            public final ArrayList<Integer> invoke() {
                return new ArrayList<>();
            }
        });
        this.f20563b = LazyKt.a(lazyThreadSafetyMode, new Function0<ArrayList<Integer>>() {
            @Override
            public final ArrayList<Integer> invoke() {
                return new ArrayList<>();
            }
        });
    }

    private final ArrayList e() {
        return (ArrayList) this.f20562a.getValue();
    }

    private final ArrayList f() {
        return (ArrayList) this.f20563b.getValue();
    }

    public abstract void a(BaseViewHolder baseViewHolder, Object obj);

    public void b(BaseViewHolder holder, Object obj, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
    }

    public final ArrayList c() {
        return e();
    }

    public final ArrayList d() {
        return f();
    }

    public void g(BaseViewHolder holder, View view, Object obj, int i10) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(view, "view");
    }

    public boolean h(BaseViewHolder holder, View view, Object obj, int i10) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(view, "view");
        return false;
    }

    public void i(BaseViewHolder holder, View view, Object obj, int i10) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(view, "view");
    }

    public abstract BaseViewHolder j(ViewGroup viewGroup, int i10);

    public boolean k(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return false;
    }

    public boolean l(BaseViewHolder holder, View view, Object obj, int i10) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(view, "view");
        return false;
    }

    public void m(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
    }

    public void n(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
    }

    public final void o(e eVar) {
        this.f20564c = eVar;
    }

    public final void p(Context context) {
        this.f20565d = context;
    }
}
