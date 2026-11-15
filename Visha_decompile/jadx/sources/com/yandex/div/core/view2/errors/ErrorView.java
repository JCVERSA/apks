package com.yandex.div.core.view2.errors;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.webkit.internal.AssetHelper;
import com.yandex.div.R;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.errors.ErrorView;
import com.yandex.div.internal.widget.FrameContainerLayout;
import defpackage.c74;
import defpackage.da2;
import defpackage.e74;
import defpackage.ld3;
import defpackage.md3;
import defpackage.qc2;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Result;
import kotlin.c;

public final class ErrorView implements qc2 {
    public final ViewGroup b;
    public final ErrorModel c;
    public final boolean d;
    public ViewGroup e;
    public da2 f;
    public md3 g;
    public final qc2 h;

    public ErrorView(ViewGroup viewGroup, ErrorModel errorModel, boolean z) {
        y45.j(viewGroup, "root");
        y45.j(errorModel, "errorModel");
        this.b = viewGroup;
        this.c = errorModel;
        this.d = z;
        this.h = errorModel.r(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((md3) obj);
                return zfb.a;
            }

            public final void invoke(md3 md3Var) {
                y45.j(md3Var, CmcdData.OBJECT_TYPE_MANIFEST);
                this.this$0.k(md3Var);
            }
        });
    }

    public static final void o(ErrorView errorView, View view) {
        y45.j(errorView, "this$0");
        errorView.c.u();
    }

    public final void D() {
        if (this.f != null) {
            return;
        }
        Context context = this.b.getContext();
        y45.i(context, "root.context");
        da2 da2Var = new da2(context, this.c.p(), new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m257invoke();
                return zfb.a;
            }

            public final void m257invoke() {
                this.this$0.c.q();
            }
        }, new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m258invoke();
                return zfb.a;
            }

            public final void m258invoke() {
                if (this.this$0.g != null) {
                    ErrorView errorView = this.this$0;
                    Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(errorView.h(ErrorModel.n(errorView.c, false, 1, null)));
                    if (thM282exceptionOrNullimpl == null || !ld3.b(thM282exceptionOrNullimpl)) {
                        return;
                    }
                    errorView.h(errorView.c.m(false));
                }
            }
        });
        this.b.addView(da2Var, new ViewGroup.LayoutParams(-1, -1));
        this.f = da2Var;
    }

    public final void E(md3 md3Var, md3 md3Var2) {
        if (md3Var == null || md3Var2 == null || md3Var.f() != md3Var2.f()) {
            ViewGroup viewGroup = this.e;
            if (viewGroup != null) {
                this.b.removeView(viewGroup);
            }
            this.e = null;
            da2 da2Var = this.f;
            if (da2Var != null) {
                this.b.removeView(da2Var);
            }
            this.f = null;
        }
        if (md3Var2 == null) {
            return;
        }
        if (md3Var2.f()) {
            D();
            da2 da2Var2 = this.f;
            if (da2Var2 != null) {
                da2Var2.i(md3Var2.e());
            }
            da2 da2Var3 = this.f;
            if (da2Var3 != null) {
                da2Var3.j(this.c.o());
                return;
            }
            return;
        }
        if (md3Var2.d().length() <= 0 && !this.d) {
            ViewGroup viewGroup2 = this.e;
            if (viewGroup2 != null) {
                this.b.removeView(viewGroup2);
            }
            this.e = null;
        } else {
            n();
        }
        ViewGroup viewGroup3 = this.e;
        View childAt = viewGroup3 != null ? viewGroup3.getChildAt(0) : null;
        AppCompatTextView appCompatTextView = childAt instanceof AppCompatTextView ? (AppCompatTextView) childAt : null;
        if (appCompatTextView != null) {
            appCompatTextView.setText(md3Var2.d());
            appCompatTextView.setBackgroundResource(md3Var2.c());
        }
    }

    @Override
    public void close() {
        this.h.close();
        this.b.removeView(this.e);
        this.b.removeView(this.f);
    }

    public final Object h(String str) {
        Object systemService = this.b.getContext().getSystemService("clipboard");
        ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
        if (clipboardManager == null) {
            xi.i("Failed to access clipboard manager!");
            Result.Companion companion = Result.INSTANCE;
            return Result.m279constructorimpl(zfb.a);
        }
        try {
            clipboardManager.setPrimaryClip(new ClipData("Error report", new String[]{AssetHelper.DEFAULT_MIME_TYPE}, new ClipData.Item(str)));
            Toast.makeText(this.b.getContext(), "Errors, DivData and Variables are dumped to clipboard!", 1).show();
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m279constructorimpl(zfb.a);
        } catch (Exception e) {
            Result.Companion companion3 = Result.INSTANCE;
            return Result.m279constructorimpl(c.a(new RuntimeException("Failed paste report to clipboard!", e)));
        }
    }

    public final void k(md3 md3Var) {
        E(this.g, md3Var);
        this.g = md3Var;
    }

    public final void n() {
        if (this.e != null) {
            return;
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(this.b.getContext());
        appCompatTextView.setBackgroundResource(R.drawable.error_counter_background);
        appCompatTextView.setTextSize(12.0f);
        appCompatTextView.setTextColor(-16777216);
        appCompatTextView.setGravity(17);
        appCompatTextView.setElevation(appCompatTextView.getResources().getDimension(R.dimen.div_shadow_elevation));
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ErrorView.o(this.b, view);
            }
        });
        DisplayMetrics displayMetrics = this.b.getContext().getResources().getDisplayMetrics();
        y45.i(displayMetrics, "metrics");
        int iL = BaseDivViewExtensionsKt.L(24, displayMetrics);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(iL, iL);
        int iL2 = BaseDivViewExtensionsKt.L(8, displayMetrics);
        marginLayoutParams.topMargin = iL2;
        marginLayoutParams.leftMargin = iL2;
        marginLayoutParams.rightMargin = iL2;
        marginLayoutParams.bottomMargin = iL2;
        Context context = this.b.getContext();
        y45.i(context, "root.context");
        FrameContainerLayout frameContainerLayout = new FrameContainerLayout(context, null, 0, 6, null);
        frameContainerLayout.addView(appCompatTextView, marginLayoutParams);
        this.b.addView(frameContainerLayout, -1, -1);
        this.e = frameContainerLayout;
    }
}
