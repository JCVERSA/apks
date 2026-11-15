package com.transsion.vishatransfer.manager;

import android.net.wifi.p2p.WifiP2pDevice;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$ObjectRef;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$searchDevicesAsync$1$2$2", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
public final class WifiTransferManager$searchDevicesAsync$1$2$2 extends SuspendLambda implements s74 {
    final Ref$ObjectRef<List<WifiP2pDevice>> $wifiP2pDevices;
    int label;
    final WifiTransferManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiTransferManager$searchDevicesAsync$1$2$2(Ref$ObjectRef<List<WifiP2pDevice>> ref$ObjectRef, WifiTransferManager wifiTransferManager, wh1<? super WifiTransferManager$searchDevicesAsync$1$2$2> wh1Var) {
        super(2, wh1Var);
        this.$wifiP2pDevices = ref$ObjectRef;
        this.this$0 = wifiTransferManager;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new WifiTransferManager$searchDevicesAsync$1$2$2(this.$wifiP2pDevices, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((WifiTransferManager$searchDevicesAsync$1$2$2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List<AccessReceiverActionListener> list;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        Ref$ObjectRef<List<WifiP2pDevice>> ref$ObjectRef = this.$wifiP2pDevices;
        if (ref$ObjectRef.element != null && (list = this.this$0.mListeners) != null) {
            for (AccessReceiverActionListener accessReceiverActionListener : list) {
                if (accessReceiverActionListener != null) {
                    accessReceiverActionListener.onPeersAvailable(ref$ObjectRef.element);
                }
            }
        }
        return zfb.a;
    }
}
