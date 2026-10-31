package com.snaptube.premium.dialog.choose_format;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.view.Lifecycle;
import androidx.view.OnLifecycleEvent;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.snaptube.premium.R;
import com.wandoujia.base.utils.RxBus;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.cn0;
import o.dx2;
import o.mg8;
import o.or3;
import o.w24;
import o.wu7;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000e2\u00020\u0001:\u0001\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/snaptube/premium/dialog/choose_format/ChooseFormatAdViewHolder;", "Lo/w24;", "Lo/mg8;", "onStart", "()V", "onStop", "Landroid/view/View;", "a", "Landroid/view/View;", "contentView", "Lo/wu7;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lo/wu7;", "mAdRemoveSubscription", "c", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class ChooseFormatAdViewHolder implements w24 {

    public final View contentView;

    public wu7 mAdRemoveSubscription;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/wandoujia/base/utils/RxBus$d;", "kotlin.jvm.PlatformType", "it", "Lo/mg8;", "invoke", "(Lcom/wandoujia/base/utils/RxBus$d;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    public static final class AnonymousClass1 extends Lambda implements dx2 {
        public AnonymousClass1() {
            super(1);
        }

        @Override
        public Object invoke(Object obj) {
            invoke((RxBus.d) obj);
            return mg8.a;
        }

        public final void invoke(RxBus.d dVar) {
            View viewFindViewById = ChooseFormatAdViewHolder.c(ChooseFormatAdViewHolder.this).findViewById(R.id.adview);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(4);
                ViewParent parent = viewFindViewById.getParent();
                or3.d(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).removeView(viewFindViewById);
            }
        }
    }

    public static void a(dx2 dx2Var, Object obj) {
        d(dx2Var, obj);
    }

    public static final View c(ChooseFormatAdViewHolder chooseFormatAdViewHolder) {
        return chooseFormatAdViewHolder.contentView;
    }

    public static final void d(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public final void onStart() {
        this.mAdRemoveSubscription = RxBus.d().c(1052).g(RxBus.f).t0(new cn0(new AnonymousClass1()));
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public final void onStop() {
        wu7 wu7Var = this.mAdRemoveSubscription;
        if (wu7Var != null) {
            wu7Var.unsubscribe();
        }
        this.mAdRemoveSubscription = null;
    }
}
