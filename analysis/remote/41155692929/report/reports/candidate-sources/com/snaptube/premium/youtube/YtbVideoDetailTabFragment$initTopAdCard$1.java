package com.snaptube.premium.youtube;

import androidx.core.app.NotificationCompat;
import com.snaptube.ads.nativead.AdView;
import com.wandoujia.base.utils.RxBus;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import o.dx2;
import o.mg8;
import o.or3;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/wandoujia/base/utils/RxBus$d;", "kotlin.jvm.PlatformType", NotificationCompat.CATEGORY_EVENT, "Lo/mg8;", "invoke", "(Lcom/wandoujia/base/utils/RxBus$d;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nYtbVideoDetailTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YtbVideoDetailTabFragment.kt\ncom/snaptube/premium/youtube/YtbVideoDetailTabFragment$initTopAdCard$1\n+ 2 Any.kt\ncom/snaptube/ktx/AnyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,541:1\n8#2:542\n262#3,2:543\n*S KotlinDebug\n*F\n+ 1 YtbVideoDetailTabFragment.kt\ncom/snaptube/premium/youtube/YtbVideoDetailTabFragment$initTopAdCard$1\n*L\n248#1:542\n250#1:543,2\n*E\n"})
public final class YtbVideoDetailTabFragment$initTopAdCard$1 extends Lambda implements dx2 {
    final AdView $adView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YtbVideoDetailTabFragment$initTopAdCard$1(AdView adView) {
        super(1);
        this.$adView = adView;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((RxBus.d) obj);
        return mg8.a;
    }

    public final void invoke(RxBus.d dVar) {
        Object obj;
        if (dVar == null || (obj = dVar.d) == null) {
            return;
        }
        if (!(obj instanceof String)) {
            obj = null;
        }
        String str = (String) obj;
        if (str != null && or3.a(this.$adView.getPlacementAlias(), str)) {
            this.$adView.setVisibility(8);
        }
    }
}
