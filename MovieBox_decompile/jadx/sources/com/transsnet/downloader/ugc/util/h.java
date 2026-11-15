package com.transsnet.downloader.ugc.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.RecyclerView;
import bx.d1;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsnet.downloader.R$layout;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class h {
    public static final void b(View view, List dataList, final Function1 itemClickCallback) {
        Intrinsics.h(view, "<this>");
        Intrinsics.h(dataList, "dataList");
        Intrinsics.h(itemClickCallback, "itemClickCallback");
        Context context = view.getContext();
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.ugc_layout_resolution_pop, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        d1 d1VarA = d1.a(viewInflate);
        Intrinsics.g(d1VarA, "bind(...)");
        d1VarA.f15994b.setLayoutManager(new NpaLinearLayoutManager(context, 1, false));
        RecyclerView recyclerView = d1VarA.f15994b;
        f fVar = new f(dataList);
        fVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i10) {
                h.c(popupWindow, itemClickCallback, baseQuickAdapter, view2, i10);
            }
        });
        recyclerView.setAdapter(fVar);
        popupWindow.setOutsideTouchable(true);
        popupWindow.showAsDropDown(view, view.getWidth() - lj.a.b(140), lj.a.b(4), 0);
    }

    public static final void c(PopupWindow popupWindow, Function1 function1, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 1000L)) {
            return;
        }
        Object item = adapter.getItem(i10);
        UGCDownloadResolutionBean uGCDownloadResolutionBean = item instanceof UGCDownloadResolutionBean ? (UGCDownloadResolutionBean) item : null;
        if (uGCDownloadResolutionBean != null) {
            function1.invoke(uGCDownloadResolutionBean);
        }
        popupWindow.dismiss();
    }
}
