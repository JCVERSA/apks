package com.transsion.vishatransfer.manager;

import android.net.NetworkInfo;
import android.util.Log;
import com.transsion.vishatransfer.connection.ConnectClientManager;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.WifiModel;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import defpackage.cl0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.rx5;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1", f = "WifiTransferManager.kt", l = {931, 937}, m = "invokeSuspend")
public final class WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1 extends SuspendLambda implements s74 {
    final NetworkInfo $networkInfo;
    int label;
    final WifiTransferManager this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.vishatransfer.manager.WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1$1", f = "WifiTransferManager.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final NetworkInfo $networkInfo;
        int label;
        final WifiTransferManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(WifiTransferManager wifiTransferManager, NetworkInfo networkInfo, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.this$0 = wifiTransferManager;
            this.$networkInfo = networkInfo;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.this$0, this.$networkInfo, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            List<AccessReceiverActionListener> list = this.this$0.mListeners;
            if (list != null) {
                NetworkInfo networkInfo = this.$networkInfo;
                for (AccessReceiverActionListener accessReceiverActionListener : list) {
                    if (accessReceiverActionListener != null) {
                        accessReceiverActionListener.onConnectionChanged(networkInfo, 1);
                    }
                }
            }
            NetworkInfo networkInfo2 = this.$networkInfo;
            if (networkInfo2 != null) {
                this.this$0.setConnectState(networkInfo2.isConnected() ? new ConnectedState(4, "", -1) : new ConnectedState(5, "", -1));
            }
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1(WifiTransferManager wifiTransferManager, NetworkInfo networkInfo, wh1<? super WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = wifiTransferManager;
        this.$networkInfo = networkInfo;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1(this.this$0, this.$networkInfo, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((WifiTransferManager$p2pConnectReceiver$1$onConnectionChanged$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0079 A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        rx5 rx5VarC;
        AnonymousClass1 anonymousClass1;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
        c.b(obj);
        Log.d("socket_debug", "WifiTransferManager_p2pConnectReceiver_onConnectionChanged");
        this.this$0.checkCreateP2pAndChannel();
        NetworkInfo networkInfo = this.$networkInfo;
        if (networkInfo != null && networkInfo.isConnected()) {
            Log.d("socket_debug", "WifiTransferManager_p2pConnectReceiver_onConnectionChanged_isConnected");
            WifiTransferManager wifiTransferManager = this.this$0;
            this.label = 1;
            obj = wifiTransferManager.requestConnectionInfo(this);
            if (obj == objF) {
                return objF;
            }
        }
        rx5VarC = mc2.c();
        anonymousClass1 = new AnonymousClass1(this.this$0, this.$networkInfo, null);
        this.label = 2;
        if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return zfb.a;
        if (((WifiModel) obj).getServiceIP().length() > 0) {
            Log.d("socket_debug", "WifiTransferManager_p2pConnectReceiver_onConnectionChanged_startSocketClient");
            ConnectClientManager.INSTANCE.startSocketClient(this.this$0.getIpAddress());
        }
        rx5VarC = mc2.c();
        anonymousClass1 = new AnonymousClass1(this.this$0, this.$networkInfo, null);
        this.label = 2;
        if (cl0.g(rx5VarC, anonymousClass1, this) == objF) {
            return objF;
        }
        return zfb.a;
    }
}
