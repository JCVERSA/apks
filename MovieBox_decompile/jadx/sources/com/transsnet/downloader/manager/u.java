package com.transsnet.downloader.manager;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class u {

    public static final a f57285c = new a(null);

    private boolean f57286a;

    private boolean f57287b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public u() {
        this.f57286a = true;
        this.f57286a = ci.b.f16934a.c();
    }

    private final View c(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.layout_downloading_play_guide, (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    private final void e(FrameLayout frameLayout, View view) {
        int iA = a0.a(106.0f);
        int iA2 = a0.a(16.0f);
        Context context = view.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        final View viewC = c((Activity) context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a0.a(230.0f), -2);
        layoutParams.topMargin = iA;
        layoutParams.setMarginStart(iA2);
        frameLayout.addView(viewC, layoutParams);
        viewC.postDelayed(new Runnable() {
            @Override
            public final void run() {
                u.f(viewC);
            }
        }, 3000L);
        viewC.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                u.g(viewC, view2);
            }
        });
        this.f57286a = false;
        ci.b.f16934a.d();
    }

    public static final void f(View view) {
        if (view.getParent() != null) {
            ViewParent parent = view.getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static final void g(View view, View view2) {
        if (view.getParent() != null) {
            ViewParent parent = view.getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(view);
        }
    }

    public final void d(FrameLayout fragmentRootView, BaseViewHolder holder, long j10) {
        View viewOrNull;
        Intrinsics.h(fragmentRootView, "fragmentRootView");
        Intrinsics.h(holder, "holder");
        if (this.f57286a && !this.f57287b && (viewOrNull = holder.getViewOrNull(R$id.iv_cover)) != null && uf.c.i(viewOrNull)) {
            this.f57287b = true;
            e(fragmentRootView, viewOrNull);
        }
    }
}
