package com.transsion.wrapperad.view.cardpage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.wrapperad.R$id;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

public final class e extends RecyclerView.Adapter {

    private List f56130a;

    private final int f56131b;

    public static final class a extends RecyclerView.a0 {

        private final CardView f56132a;

        private final FrameLayout f56133b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            View viewFindViewById = itemView.findViewById(R$id.cardView);
            Intrinsics.g(viewFindViewById, "findViewById(...)");
            this.f56132a = (CardView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R$id.ad_container);
            Intrinsics.g(viewFindViewById2, "findViewById(...)");
            this.f56133b = (FrameLayout) viewFindViewById2;
        }

        public final Object f(f pageData) {
            Object objM453constructorimpl;
            Intrinsics.h(pageData, "pageData");
            try {
                Result.Companion companion = Result.INSTANCE;
                NativeCardPageAdHelper nativeCardPageAdHelperC = pageData.c();
                if (nativeCardPageAdHelperC != null) {
                    nativeCardPageAdHelperC.w(pageData);
                }
                ViewParent parent = pageData.d().getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(pageData.d());
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                pageData.d().setAlpha(0.0f);
                pageData.d().setScaleX(1.05f);
                this.f56133b.addView(pageData.d(), layoutParams);
                pageData.d().animate().alpha(1.0f).scaleX(1.0f).setDuration(600L).setListener(null).start();
                NativeCardPageAdHelper nativeCardPageAdHelperC2 = pageData.c();
                if (nativeCardPageAdHelperC2 != null) {
                    nativeCardPageAdHelperC2.s(pageData);
                }
                objM453constructorimpl = Result.m453constructorimpl(Boolean.TRUE);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m456exceptionOrNullimpl(objM453constructorimpl);
            return objM453constructorimpl;
        }

        public final FrameLayout g() {
            return this.f56133b;
        }

        public final CardView h() {
            return this.f56132a;
        }
    }

    public e(List pageItemDataList, int i10) {
        Intrinsics.h(pageItemDataList, "pageItemDataList");
        this.f56130a = pageItemDataList;
        this.f56131b = i10;
    }

    @Override
    public void onBindViewHolder(a holder, int i10) {
        Intrinsics.h(holder, "holder");
        holder.h().getLayoutParams().width = this.f56131b;
    }

    @Override
    public int getItemCount() {
        return this.f56130a.isEmpty() ? 0 : Integer.MAX_VALUE;
    }

    @Override
    public a onCreateViewHolder(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        pw.c cVarC = pw.c.c(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.g(cVarC, "inflate(...)");
        FrameLayout root = cVarC.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return new a(root);
    }
}
