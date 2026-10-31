package com.snaptube.premium.preview.audio;

import android.content.Context;
import android.view.View;
import com.snaptube.ads.feedback.newui.AdFeedbackActivity;
import com.snaptube.premium.preview.audio.view.CountDownView;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import net.pubnative.mediation.request.model.PubnativeAdModel;
import o.dx2;
import o.mg8;
import o.or3;
import o.u8;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/view/View;", "it", "Lo/mg8;", "invoke", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
public final class AudioPreviewAdController$handleCountDownAndLabel$1$1 extends Lambda implements dx2 {
    final PubnativeAdModel $ad;
    final CountDownView $this_run;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioPreviewAdController$handleCountDownAndLabel$1$1(CountDownView countDownView, PubnativeAdModel pubnativeAdModel) {
        super(1);
        this.$this_run = countDownView;
        this.$ad = pubnativeAdModel;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((View) obj);
        return mg8.a;
    }

    public final void invoke(@NotNull View view) {
        or3.f(view, "it");
        AdFeedbackActivity.Companion companion = AdFeedbackActivity.INSTANCE;
        Context context = this.$this_run.getContext();
        or3.e(context, "getContext(...)");
        companion.b(context, this.$ad);
        u8.d(this.$ad);
    }
}
