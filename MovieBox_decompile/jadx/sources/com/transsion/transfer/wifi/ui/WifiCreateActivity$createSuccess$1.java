package com.transsion.transfer.wifi.ui;

import android.graphics.Bitmap;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.transfer.R$id;
import com.transsion.transfer.wifi.qrcode.QrCodeUtil;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.transfer.wifi.ui.WifiCreateActivity$createSuccess$1", f = "WifiCreateActivity.kt", l = {274, 282}, m = "invokeSuspend")
final class WifiCreateActivity$createSuccess$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final long $duration;
    final du.a $wifiInfoModel;
    long J$0;
    int label;
    final WifiCreateActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WifiCreateActivity$createSuccess$1(du.a aVar, WifiCreateActivity wifiCreateActivity, long j10, Continuation<? super WifiCreateActivity$createSuccess$1> continuation) {
        super(2, continuation);
        this.$wifiInfoModel = aVar;
        this.this$0 = wifiCreateActivity;
        this.$duration = j10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WifiCreateActivity$createSuccess$1(this.$wifiInfoModel, this.this$0, this.$duration, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        long j10;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                j10 = this.J$0;
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        long jCurrentTimeMillis = System.currentTimeMillis();
        QrCodeUtil qrCodeUtil = QrCodeUtil.f53835a;
        String strB = qrCodeUtil.b(this.$wifiInfoModel);
        this.J$0 = jCurrentTimeMillis;
        this.label = 1;
        obj = QrCodeUtil.g(qrCodeUtil, strB, 0, 0, this, 6, null);
        if (obj == objF) {
            return objF;
        }
        j10 = jCurrentTimeMillis;
        Bitmap bitmap = (Bitmap) obj;
        if (bitmap != null) {
            WifiCreateActivity wifiCreateActivity = this.this$0;
            long j11 = this.$duration;
            ((AppCompatImageView) wifiCreateActivity.findViewById(R$id.ivTransWifiQrCode)).setImageBitmap(bitmap);
            wifiCreateActivity.isCanceled = false;
            cu.c.f58656a.j(j11, System.currentTimeMillis() - j10);
            a2 a2VarC = y0.c();
            WifiCreateActivity$createSuccess$1$1$1 wifiCreateActivity$createSuccess$1$1$1 = new WifiCreateActivity$createSuccess$1$1$1(wifiCreateActivity, null);
            this.label = 2;
            if (kotlinx.coroutines.i.g(a2VarC, wifiCreateActivity$createSuccess$1$1$1, this) == objF) {
                return objF;
            }
        } else {
            WifiCreateActivity wifiCreateActivity2 = this.this$0;
            long j12 = this.$duration;
            com.transsion.transfer.wifi.util.g.d(com.transsion.transfer.wifi.util.g.f53898a, wifiCreateActivity2.getClassTag() + " --> createSuccess() --> syncEncodeQRCode() --> 创建二维码失败了", false, 2, null);
            wifiCreateActivity2.O0(103, j12);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WifiCreateActivity$createSuccess$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
