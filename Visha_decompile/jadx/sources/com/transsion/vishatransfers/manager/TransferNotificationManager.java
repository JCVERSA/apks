package com.transsion.vishatransfers.manager;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pDevice;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.format.Formatter;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.markpoint.a;
import com.transsion.utils.ToastUtils;
import com.transsion.vishatransfer.data.ConnectedState;
import com.transsion.vishatransfer.data.Conversation;
import com.transsion.vishatransfer.data.FileData;
import com.transsion.vishatransfer.data.WifiModel;
import com.transsion.vishatransfer.manager.ITransferHelper;
import com.transsion.vishatransfer.manager.TransferManager;
import com.transsion.vishatransfer.manager.callback.AccessReceiverActionListener;
import com.transsion.vishatransfers.R;
import com.transsion.vishatransfers.manager.TransferNotificationManager;
import com.transsion.vishatransfers.service.TransferService;
import defpackage.el0;
import defpackage.qi4;
import defpackage.se;
import defpackage.u74;
import defpackage.y45;
import defpackage.zfb;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class TransferNotificationManager {
    public static final a s = new a(null);
    public static volatile TransferNotificationManager t;
    public final String a;
    public final Handler b;
    public TransferService c;
    public boolean d;
    public Context e;
    public ITransferHelper f;
    public int g;
    public int h;
    public long i;
    public long j;
    public int k;
    public final int l;
    public int m;
    public int n;
    public final Object o;
    public final b p;
    public final AccessReceiverActionListener q;
    public int r;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TransferNotificationManager a() {
            TransferNotificationManager transferNotificationManager = TransferNotificationManager.t;
            if (transferNotificationManager == null) {
                synchronized (this) {
                    transferNotificationManager = TransferNotificationManager.t;
                    if (transferNotificationManager == null) {
                        transferNotificationManager = new TransferNotificationManager(null);
                        TransferNotificationManager.t = transferNotificationManager;
                    }
                }
            }
            return transferNotificationManager;
        }

        public a() {
        }
    }

    public static final class b implements ServiceConnection {
        public b() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(TransferNotificationManager.this.a, "onServiceConnected");
            if (iBinder instanceof TransferService.a) {
                TransferNotificationManager.this.c = ((TransferService.a) iBinder).a();
                TransferNotificationManager.this.d = true;
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(TransferNotificationManager.this.a, "onServiceDisconnected");
            TransferService transferService = TransferNotificationManager.this.c;
            if (transferService != null) {
                transferService.c();
            }
            TransferNotificationManager.this.c = null;
            TransferNotificationManager.this.d = false;
        }
    }

    public TransferNotificationManager(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final void u(TransferNotificationManager transferNotificationManager) {
        ITransferHelper iTransferHelper = transferNotificationManager.f;
        if (iTransferHelper != null) {
            iTransferHelper.cancelTransfer(transferNotificationManager.g);
        }
    }

    public static final zfb x(TransferNotificationManager transferNotificationManager, boolean z, String str, int i) {
        y45.j(str, "reason");
        Log.d(transferNotificationManager.a, "disconnectAsync: " + z);
        return zfb.a;
    }

    public final long A() {
        return (System.currentTimeMillis() - this.i) / ((long) 1000);
    }

    public final boolean B() {
        return this.g == 1;
    }

    public final void C() {
        ITransferHelper iTransferHelper;
        if (this.h - this.r < 10 || (iTransferHelper = this.f) == null) {
            return;
        }
        com.transsion.dbdata.markpoint.a.a.r(this.h, iTransferHelper.getRecentSpeedPerSecond(B()) / ((long) 1024), System.currentTimeMillis() - this.i);
        this.r = this.h;
    }

    public final void D() {
        int i;
        ITransferHelper iTransferHelper = this.f;
        if (iTransferHelper != null) {
            long averageSpeedPerSecond = iTransferHelper.getAverageSpeedPerSecond(B()) / ((long) 1024);
            long jA = A();
            int i2 = this.n;
            int i3 = this.m;
            int i4 = i2 - i3;
            if (i3 == i2) {
                i = 1;
            } else {
                i = i4 > 0 ? 3 : 0;
            }
            com.transsion.dbdata.markpoint.a.a.q(i, jA, averageSpeedPerSecond, i3, i4);
        }
    }

    public final boolean E(int i, long j) {
        if (i == 100) {
            return true;
        }
        return j - this.j >= ((long) this.l) && Math.abs(i - this.k) >= 1;
    }

    public final void F() {
        Log.i(this.a, "startReceiveFile");
        I();
        this.g = 2;
        s();
        ITransferHelper iTransferHelper = this.f;
        if (iTransferHelper != null) {
            iTransferHelper.registerListener(this.q, 2);
        }
    }

    public final void G() {
        Log.i(this.a, "startSendFile");
        I();
        this.g = 1;
        s();
        ITransferHelper iTransferHelper = this.f;
        if (iTransferHelper != null) {
            iTransferHelper.registerListener(this.q, 1);
        }
    }

    public final void H() {
        w();
    }

    public final void I() {
        synchronized (this.o) {
            Context context = this.e;
            if (context == null) {
                return;
            }
            if (this.d) {
                context.unbindService(this.p);
                this.d = false;
                this.c = null;
                zfb zfbVar = zfb.a;
            }
        }
    }

    public final void J(long j, long j2, int i, int i2) {
        String strY = y(i, i2);
        String str = Formatter.formatFileSize(this.e, j2) + "/" + Formatter.formatFileSize(this.e, j);
        int i3 = j == 0 ? 0 : (int) ((j2 * ((long) 100)) / j);
        this.h = i3;
        if (E(i3, System.currentTimeMillis())) {
            TransferService transferService = this.c;
            if (transferService != null) {
                transferService.d(strY, str, this.h);
            }
            this.j = System.currentTimeMillis();
            this.k = this.h;
        }
        C();
    }

    public final void s() {
        if (this.d || this.e == null) {
            return;
        }
        Intent intent = new Intent(this.e, (Class<?>) TransferService.class);
        Context context = this.e;
        if (context != null) {
            context.startService(intent);
        }
        Context context2 = this.e;
        if (context2 != null) {
            context2.bindService(intent, this.p, 1);
        }
    }

    public final void t() {
        Log.d(this.a, "cancelTransfer");
        ToastUtils.q(R.string.visha_trans_has_cancel);
        TransferService transferService = this.c;
        if (transferService != null) {
            transferService.c();
        }
        if (B()) {
            Conversation conversation = new Conversation(5, 0L, false, 0, 0, null, 62, null);
            ITransferHelper iTransferHelper = this.f;
            if (iTransferHelper != null) {
                iTransferHelper.sendConversationToService(conversation);
            }
            ITransferHelper iTransferHelper2 = this.f;
            if (iTransferHelper2 != null) {
                iTransferHelper2.cancelTransfer(this.g);
            }
        } else {
            Conversation conversation2 = new Conversation(4, 0L, false, 0, 0, null, 62, null);
            ITransferHelper iTransferHelper3 = this.f;
            if (iTransferHelper3 != null) {
                iTransferHelper3.sendConversationToClient(conversation2);
            }
            this.b.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    TransferNotificationManager.u(this.b);
                }
            }, 200L);
        }
        com.transsion.dbdata.markpoint.a.a.b("transferring", z());
        el0.d(qi4.b, null, null, new TransferNotificationManager$cancelTransfer$2(this, null), 3, null);
    }

    public final void v() {
        ToastUtils.q(B() ? R.string.visha_send_success : R.string.visha_receive_success);
        TransferService transferService = this.c;
        if (transferService != null) {
            transferService.c();
        }
        D();
        w();
    }

    public final void w() {
        Log.d(this.a, "disconnect: ");
        TransferService transferService = this.c;
        if (transferService != null) {
            transferService.c();
        }
        ITransferHelper iTransferHelper = this.f;
        if (iTransferHelper != null) {
            iTransferHelper.cancelTransfer(this.g);
        }
        ITransferHelper iTransferHelper2 = this.f;
        if (iTransferHelper2 != null) {
            iTransferHelper2.unregisterCallback(this.q);
        }
        ITransferHelper iTransferHelper3 = this.f;
        if (iTransferHelper3 != null) {
            iTransferHelper3.disconnectAsync(new u74() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return TransferNotificationManager.x(this.b, ((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue());
                }
            });
        }
        I();
        this.h = 0;
        this.r = 0;
        this.i = 0L;
        this.j = 0L;
        this.k = 0;
        this.m = 0;
        this.n = 0;
    }

    public final String y(int i, int i2) {
        String strValueOf;
        String string;
        if (i == 0) {
            i = 1;
        }
        if (i2 == 0) {
            i2 = 1;
        }
        if (i2 == 1) {
            strValueOf = String.valueOf(i2);
        } else {
            strValueOf = i + "/" + i2;
        }
        int i3 = B() ? R.string.visha_sending_files : R.string.visha_receiving_files;
        Context context = this.e;
        return (context == null || (string = context.getString(i3, strValueOf)) == null) ? "" : string;
    }

    public final int z() {
        return this.h;
    }

    public TransferNotificationManager() {
        this.a = "TransferNotificationManager";
        this.b = new Handler(Looper.getMainLooper());
        this.g = 1;
        this.l = 500;
        this.o = new Object();
        this.p = new b();
        this.e = se.a().getApplicationContext();
        TransferManager transferManager = TransferManager.INSTANCE;
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        this.f = TransferManager.getInstance$default(transferManager, applicationA, 0, 2, null);
        this.q = new AccessReceiverActionListener() {
            @Override
            public void onConnectionChanged(NetworkInfo networkInfo, int userType) {
                Log.i(this.this$0.a, "onConnectionChanged: networkInfo: " + networkInfo);
            }

            @Override
            public void onConversationMessage(Conversation conversation) {
                y45.j(conversation, "conversation");
                Log.i(this.this$0.a, "onConversationMessage: conversation: " + conversation);
                if (conversation.getType() == 5 || conversation.getType() == 4) {
                    ToastUtils.s(R.string.visha_trans_has_cancel);
                    this.this$0.w();
                }
            }

            @Override
            public void onError(WifiModel wifiModel) {
                y45.j(wifiModel, "wifiModel");
                Log.i(this.this$0.a, "onError: wifiModel: " + wifiModel);
                a.a.g("transfer", wifiModel.getErrorCode());
            }

            @Override
            public void onFileTranslated(FileData fileData, int userType) {
                y45.j(fileData, "fileData");
                Log.i(this.this$0.a, "onFileTranslated: fileData: " + fileData + ", userType: " + userType);
                this.this$0.m = this.this$0.m + 1;
            }

            @Override
            public void onPeersAvailable(List<? extends WifiP2pDevice> devices) {
                y45.j(devices, "devices");
                Log.i(this.this$0.a, "onPeersAvailable: devices: " + devices);
            }

            @Override
            public void onProgress(long totalSize, long transferedSize, int fileNum, int totalNum) {
                Log.i(this.this$0.a, "onProgress: totalSize: " + totalSize + ", transferedSize: " + transferedSize + ", fileNum: " + fileNum + ", totalNum: " + totalNum);
                this.this$0.J(totalSize, transferedSize, fileNum, totalNum);
            }

            @Override
            public void onTransferState(ConnectedState socketState) {
                y45.j(socketState, "socketState");
                Log.i(this.this$0.a, "onTransferState: socketState: " + socketState);
                int state = socketState.getState();
                if (state == 3) {
                    this.this$0.H();
                    return;
                }
                if (state == 6) {
                    this.this$0.v();
                    return;
                }
                if (state != 8) {
                    return;
                }
                LogUtils.v(this.this$0.a, "transfer start");
                this.this$0.i = System.currentTimeMillis();
                ITransferHelper iTransferHelper = this.this$0.f;
                if (iTransferHelper != null) {
                    TransferNotificationManager transferNotificationManager = this.this$0;
                    long totalSize = iTransferHelper.getTotalSize(transferNotificationManager.B());
                    transferNotificationManager.n = iTransferHelper.getTotalNum(transferNotificationManager.B());
                    String strY = transferNotificationManager.y(1, transferNotificationManager.n);
                    TransferService transferService = transferNotificationManager.c;
                    if (transferService != null) {
                        transferService.b(strY);
                    }
                    a.C0214a.t(a.a, totalSize / ((long) 1024), transferNotificationManager.n, 0L, 4, null);
                }
            }
        };
    }
}
