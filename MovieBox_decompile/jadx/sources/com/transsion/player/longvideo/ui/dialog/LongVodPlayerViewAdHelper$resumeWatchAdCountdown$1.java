package com.transsion.player.longvideo.ui.dialog;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1", f = "LongVodPlayerViewAdHelper.kt", l = {847}, m = "invokeSuspend")
final class LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final LongVodPlayerViewAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, Continuation<? super LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodPlayerViewAdHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0022  */
    /* JADX WARN: Code duplicated, block: B:13:0x002c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x0042  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x002a -> B:14:0x002d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L17
            if (r1 != r2) goto Lf
            kotlin.ResultKt.b(r6)
            goto L2d
        Lf:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L17:
            kotlin.ResultKt.b(r6)
        L1a:
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r6 = r5.this$0
            int r6 = com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.R2(r6)
            if (r6 <= 0) goto L48
            r5.label = r2
            r3 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r6 = kotlinx.coroutines.u0.a(r3, r5)
            if (r6 != r0) goto L2d
            return r0
        L2d:
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r6 = r5.this$0
            int r6 = com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.R2(r6)
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r1 = r5.this$0
            int r6 = r6 + (-1)
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.s3(r1, r6)
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r6 = r5.this$0
            int r6 = com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.R2(r6)
            if (r6 <= 0) goto L1a
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r6 = r5.this$0
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.w3(r6)
            goto L1a
        L48:
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r6 = r5.this$0
            mn.j r6 = com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.Q2(r6)
            r0 = 0
            if (r6 == 0) goto L7e
            com.transsion.player.longvideo.view.LongVodRewardInterceptView r6 = r6.f66592v
            if (r6 == 0) goto L7e
            mn.g r6 = r6.getBind()
            if (r6 == 0) goto L7e
            com.noober.background.view.BLTextView r6 = r6.f66552h
            if (r6 == 0) goto L7e
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r1 = r5.this$0
            mn.j r1 = com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.Q2(r1)
            if (r1 == 0) goto L7a
            android.view.View r1 = r1.getRoot()
            if (r1 == 0) goto L7a
            android.content.Context r1 = r1.getContext()
            if (r1 == 0) goto L7a
            int r2 = com.transsion.player.longvideo.R$string.long_vod_reward_intercept_watch_ad
            java.lang.String r1 = r1.getString(r2)
            goto L7b
        L7a:
            r1 = r0
        L7b:
            r6.setText(r1)
        L7e:
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r6 = r5.this$0
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.r3(r6, r0)
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r6 = r5.this$0
            boolean r6 = com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.Y2(r6)
            if (r6 == 0) goto L90
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper r6 = r5.this$0
            com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper.t3(r6)
        L90:
            kotlin.Unit r6 = kotlin.Unit.f64096a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerViewAdHelper$resumeWatchAdCountdown$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
