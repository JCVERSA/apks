package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.NetworkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\fB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\rB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u00020\u00122\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001a\u001a\u00020\u00122\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u0015¢\u0006\u0004\b\u001a\u0010\u0018R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/tn/lib/view/NoNetworkBigView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "", "isShowTitleLayout", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V", "(Landroid/content/Context;Z)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "visible", "", CampaignEx.JSON_KEY_TITLE, "", "showTitle", "(ZLjava/lang/String;)V", "Lkotlin/Function0;", "retryListener", "retry", "(Lkotlin/jvm/functions/Function0;)V", "setting", "goToSetting", "Leh/c;", "a", "Leh/c;", "binding", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NoNetworkBigView extends ConstraintLayout {

    private eh.c binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoNetworkBigView(Context context, AttributeSet attributeSet, int i10, boolean z10) {
        TitleLayout titleLayout;
        TitleLayout titleLayout2;
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.binding = eh.c.b(LayoutInflater.from(context), this);
        setLayoutParams(new ConstraintLayout.b(-1, -1));
        setPadding(0, 0, 0, com.blankj.utilcode.util.a0.a(14.0f));
        setBackgroundResource(R$color.bg_01);
        if (z10) {
            eh.c cVar = this.binding;
            if (cVar == null || (titleLayout2 = cVar.f59684e) == null) {
                return;
            }
            uf.c.k(titleLayout2);
            return;
        }
        eh.c cVar2 = this.binding;
        if (cVar2 == null || (titleLayout = cVar2.f59684e) == null) {
            return;
        }
        uf.c.h(titleLayout);
    }

    public static final void j(Function0 function0, View view) {
        try {
            NetworkUtils.v();
            function0.invoke();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static final void k(Function0 function0, View view) {
        function0.invoke();
    }

    public static void showTitle$default(NoNetworkBigView noNetworkBigView, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "";
        }
        noNetworkBigView.showTitle(z10, str);
    }

    public final void goToSetting(final Function0<Unit> setting) {
        TnTextView tnTextView;
        Intrinsics.h(setting, "setting");
        eh.c cVar = this.binding;
        if (cVar == null || (tnTextView = cVar.f59682c) == null) {
            return;
        }
        tnTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                NoNetworkBigView.j(setting, view);
            }
        });
    }

    public final void retry(final Function0<Unit> retryListener) {
        TnTextView tnTextView;
        Intrinsics.h(retryListener, "retryListener");
        eh.c cVar = this.binding;
        if (cVar == null || (tnTextView = cVar.f59686g) == null) {
            return;
        }
        tnTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                NoNetworkBigView.k(retryListener, view);
            }
        });
    }

    public final void showTitle(boolean visible, String title) {
        TitleLayout titleLayout;
        Intrinsics.h(title, "title");
        eh.c cVar = this.binding;
        if (cVar == null || (titleLayout = cVar.f59684e) == null) {
            return;
        }
        if (visible) {
            uf.c.k(titleLayout);
        } else {
            uf.c.g(titleLayout);
        }
        titleLayout.setTitleText(title);
    }

    public NoNetworkBigView(Context context, AttributeSet attributeSet, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, i10, (i11 & 8) != 0 ? true : z10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoNetworkBigView(Context context, boolean z10) {
        this(context, null, 0, z10);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoNetworkBigView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, false, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoNetworkBigView(Context context) {
        this(context, (AttributeSet) null);
        Intrinsics.h(context, "context");
    }
}
