.class public Lcom/transsion/vishatransfer/manager/WifiTransferManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishatransfer/manager/ITransferHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;,
        Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0004\u00a5\u0001\u00a8\u0001\u0008\u0016\u0018\u0000 \u00b0\u00012\u00020\u0001:\u0004\u00b0\u0001\u00b1\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0082@\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0083@\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0018\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019H\u0082@\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0082@\u00a2\u0006\u0004\u0008\u001d\u0010\u0011J\u0018\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0082@\u00a2\u0006\u0004\u0008\u001e\u0010\u0011J \u0010 \u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001aH\u0083@\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001d\u0010(\u001a\u00020\u00162\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00160&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010,\u001a\u00020\u00162\u0006\u0010+\u001a\u00020*H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010.\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008.\u0010\u0018J\u0017\u00100\u001a\u00020\u00162\u0006\u0010+\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00082\u0010\u0018J\u000f\u00103\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00083\u0010\u0018J\u000f\u00104\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00084\u0010\u0018J\u000f\u00105\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00085\u0010\u000cJ\u000f\u00106\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00086\u0010\u0018J\u000f\u00107\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00087\u0010\u0018J\u000f\u00108\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00088\u0010\u0018J\u0010\u00109\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0004\u00089\u0010\u001cJ\u0012\u0010;\u001a\u0004\u0018\u00010:H\u0082@\u00a2\u0006\u0004\u0008;\u0010\u001cJ/\u0010>\u001a\u00020\u00162\u001e\u0010\'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0017\u00a2\u0006\u0004\u0008>\u0010?J/\u0010@\u001a\u00020\u00162\u001e\u0010\'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0017\u00a2\u0006\u0004\u0008@\u0010?J/\u0010A\u001a\u00020\u00162\u001e\u0010\'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0016\u00a2\u0006\u0004\u0008A\u0010?J\u0017\u0010C\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008C\u0010DJ/\u0010E\u001a\u00020\u00162\u001e\u0010\'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0016\u00a2\u0006\u0004\u0008E\u0010?J/\u0010F\u001a\u00020\u00162\u001e\u0010\'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0016\u00a2\u0006\u0004\u0008F\u0010?J7\u0010G\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u001a2\u001e\u0010\'\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160<H\u0017\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010K\u001a\u00020\u00162\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u001f\u0010M\u001a\u00020\u00162\u0006\u0010+\u001a\u00020I2\u0006\u0010B\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008M\u0010NJ\u0015\u0010P\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020O\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010R\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008R\u0010\u0018J\u000f\u0010S\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008S\u0010\u0018J\u001d\u0010V\u001a\u00020\u00162\u000c\u0010U\u001a\u0008\u0012\u0004\u0012\u00020T0\u0019H\u0016\u00a2\u0006\u0004\u0008V\u0010WJ\u0017\u0010Z\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020XH\u0016\u00a2\u0006\u0004\u0008Z\u0010[J\u0017\u0010\\\u001a\u00020\u00162\u0006\u0010Y\u001a\u00020XH\u0016\u00a2\u0006\u0004\u0008\\\u0010[J\u0017\u0010]\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008]\u0010DJ7\u0010_\u001a\u00020\u00162&\u0010\'\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010:\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00160^H\u0016\u00a2\u0006\u0004\u0008_\u0010`J\u000f\u0010a\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008a\u0010bJ\u0017\u0010e\u001a\u00020d2\u0006\u0010c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\u0017\u0010g\u001a\u00020d2\u0006\u0010c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008g\u0010fJ\u0017\u0010h\u001a\u00020\u00062\u0006\u0010c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008h\u0010iJ\u0017\u0010j\u001a\u00020d2\u0006\u0010c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008j\u0010fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010kR\u0014\u0010l\u001a\u00020=8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0014\u0010o\u001a\u00020n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0014\u0010r\u001a\u00020q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0018\u0010u\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u0018\u0010x\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010zR\u0018\u0010|\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R%\u0010~\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008~\u0010\u007f\u001a\u0005\u0008\u0080\u0001\u0010\u000c\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R*\u0010\u0084\u0001\u001a\u00030\u0083\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001\u001a\u0006\u0008\u0084\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u0018\u0010\u0089\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010\u007fR\u0016\u0010\u008a\u0001\u001a\u00020=8\u0002X\u0082D\u00a2\u0006\u0007\n\u0005\u0008\u008a\u0001\u0010mR\u0016\u0010\u008b\u0001\u001a\u00020=8\u0002X\u0082D\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010mR\u0017\u0010\u008c\u0001\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u008f\u0001\u001a\u00030\u008e\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u0017\u0010\u0091\u0001\u001a\u00020d8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R(\u0010\u0093\u0001\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0093\u0001\u0010m\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R(\u0010\u0098\u0001\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0098\u0001\u0010\u008d\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001\"\u0005\u0008\u009b\u0001\u0010DR\u0019\u0010\u009c\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u008d\u0001R\u0019\u0010\u009d\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u008d\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u0018\u0010\u00a0\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a0\u0001\u0010\u007fR\u0018\u0010\u00a1\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a1\u0001\u0010\u007fR\"\u0010\u00a3\u0001\u001a\u000b\u0012\u0004\u0012\u00020I\u0018\u00010\u00a2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0018\u0010\u00a6\u0001\u001a\u00030\u00a5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u0018\u0010\u00a9\u0001\u001a\u00030\u00a8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u0018\u0010\u00ac\u0001\u001a\u00030\u00ab\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001R\u0018\u0010\u00ae\u0001\u001a\u00030\u00ab\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00ad\u0001R\u0018\u0010\u00af\u0001\u001a\u00030\u00ab\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00ad\u0001\u00a8\u0006\u00b2\u0001"
    }
    d2 = {
        "Lcom/transsion/vishatransfer/manager/WifiTransferManager;",
        "Lcom/transsion/vishatransfer/manager/ITransferHelper;",
        "Landroid/app/Application;",
        "context",
        "<init>",
        "(Landroid/app/Application;)V",
        "",
        "code",
        "getSystemErrorCode",
        "(I)I",
        "",
        "isConnectedWifi",
        "()Z",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "channel",
        "Lcom/transsion/vishatransfer/data/WifiModel;",
        "removeWifiGroupAsync",
        "(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;",
        "Landroid/net/wifi/p2p/WifiP2pConfig;",
        "wifiConfig",
        "createWifiGroup",
        "(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Lwh1;)Ljava/lang/Object;",
        "Lzfb;",
        "removeGroup",
        "()V",
        "",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        "requestPeers",
        "(Lwh1;)Ljava/lang/Object;",
        "searchWifiGroupAsync",
        "disconnect",
        "device",
        "connectWifi",
        "(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)Ljava/lang/Object;",
        "Lcom/transsion/vishatransfer/data/ConnectedState;",
        "socketState",
        "setConnectState",
        "(Lcom/transsion/vishatransfer/data/ConnectedState;)V",
        "Lkotlin/Function0;",
        "callback",
        "doOnMainThread",
        "(Lc74;)V",
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;",
        "listener",
        "registerClientListener",
        "(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V",
        "unRegisterClientListener",
        "Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;",
        "registerServerListener",
        "(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V",
        "unRegisterServerListener",
        "registerPeersReceiver",
        "unRegisterPeersReceiver",
        "checkLegal",
        "checkCreateP2pAndChannel",
        "registerP2pConnectReceiver",
        "registerServerReceiver",
        "requestConnectionInfo",
        "Landroid/net/wifi/p2p/WifiP2pInfo;",
        "getConnectionInfoInner",
        "Lkotlin/Function3;",
        "",
        "createGroupAsyncWithRetry",
        "(Lu74;)V",
        "createGroupAsync",
        "removeGroupAsync",
        "userType",
        "release",
        "(I)V",
        "searchDevicesAsync",
        "disconnectAsync",
        "connectAsync",
        "(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V",
        "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
        "accessReceiverActionListener",
        "unregisterCallback",
        "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V",
        "registerListener",
        "(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V",
        "Landroid/content/Context;",
        "checkPermission",
        "(Landroid/content/Context;)Z",
        "unRegisterServerReceiver",
        "unregisterP2pConnectReceiver",
        "Lcom/transsion/vishatransfer/data/FileData;",
        "fileDataList",
        "sendFileDataToServerAsync",
        "(Ljava/util/List;)V",
        "Lcom/transsion/vishatransfer/data/Conversation;",
        "conversation",
        "sendConversationToService",
        "(Lcom/transsion/vishatransfer/data/Conversation;)V",
        "sendConversationToClient",
        "cancelTransfer",
        "Lkotlin/Function4;",
        "getConnectionInfoAsync",
        "(Lw74;)V",
        "getConnectState",
        "()Lcom/transsion/vishatransfer/data/ConnectedState;",
        "isClient",
        "",
        "getAverageSpeedPerSecond",
        "(Z)J",
        "getRecentSpeedPerSecond",
        "getTotalNum",
        "(Z)I",
        "getTotalSize",
        "Landroid/app/Application;",
        "TAG",
        "Ljava/lang/String;",
        "Lhk1;",
        "coroutineExceptionHandler",
        "Lhk1;",
        "Lnk1;",
        "coroutineScope",
        "Lnk1;",
        "Landroid/net/wifi/WifiManager;",
        "mWifiManager",
        "Landroid/net/wifi/WifiManager;",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "p2p",
        "Landroid/net/wifi/p2p/WifiP2pManager;",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "Landroid/content/IntentFilter;",
        "filter",
        "Landroid/content/IntentFilter;",
        "started",
        "Z",
        "getStarted",
        "setStarted",
        "(Z)V",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isConnected",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setConnected",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "isCreateGroup",
        "mSsid",
        "mPwd",
        "mRetryCount",
        "I",
        "Ljava/lang/Object;",
        "connectLock",
        "Ljava/lang/Object;",
        "connnectTimeOut",
        "J",
        "ipAddress",
        "getIpAddress",
        "()Ljava/lang/String;",
        "setIpAddress",
        "(Ljava/lang/String;)V",
        "mUserType",
        "getMUserType",
        "()I",
        "setMUserType",
        "createRetryCount",
        "createCount",
        "mConnectState",
        "Lcom/transsion/vishatransfer/data/ConnectedState;",
        "mIsStartSend",
        "mIsStartReceive",
        "",
        "mListeners",
        "Ljava/util/List;",
        "com/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1",
        "socketClientListener",
        "Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;",
        "com/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1",
        "socketServerListener",
        "Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;",
        "Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;",
        "receiverDevices",
        "Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;",
        "serverReceiver",
        "p2pConnectReceiver",
        "Companion",
        "AccessPointReceiver",
        "vishatransferlib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;

.field public static final ERROR_CODE_CALL_AIP_BUSY:I = 0x3ee

.field public static final ERROR_CODE_CALL_API_UNKNOW:I = 0x3ec

.field public static final ERROR_CODE_CALL_API_UNSUPPORTED:I = 0x3ed

.field public static final ERROR_CODE_CONNECT_FAILED:I = 0x3ef

.field public static final ERROR_CODE_GET_CONNECTION_INFO_FAILED:I = 0x3f0

.field public static final ERROR_CODE_HOT_SPOT_OPEN:I = 0x3f1

.field public static final ERROR_CODE_OTHERS:I = 0x3eb

.field public static final ERROR_CODE_PERMISSION:I = 0x3e9

.field public static final ERROR_CODE_WIFI_NOT_ENABLED:I = 0x3ea

.field private static volatile instance:Lcom/transsion/vishatransfer/manager/WifiTransferManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final connectLock:Ljava/lang/Object;

.field private final connnectTimeOut:J

.field private final context:Landroid/app/Application;

.field private final coroutineExceptionHandler:Lhk1;

.field private final coroutineScope:Lnk1;

.field private createCount:I

.field private createRetryCount:I

.field private filter:Landroid/content/IntentFilter;

.field private ipAddress:Ljava/lang/String;

.field private isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isCreateGroup:Z

.field private mConnectState:Lcom/transsion/vishatransfer/data/ConnectedState;

.field private mIsStartReceive:Z

.field private mIsStartSend:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPwd:Ljava/lang/String;

.field private final mRetryCount:I

.field private final mSsid:Ljava/lang/String;

.field private mUserType:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private p2p:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final p2pConnectReceiver:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

.field private final receiverDevices:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

.field private final serverReceiver:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

.field private final socketClientListener:Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;

.field private final socketServerListener:Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->Companion:Lcom/transsion/vishatransfer/manager/WifiTransferManager$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    .line 3
    const-string v0, "WifiDirectHelper"

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->TAG:Ljava/lang/String;

    .line 4
    sget-object v0, Lhk1;->w1:Lhk1$b;

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lhk1$b;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    .line 5
    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineExceptionHandler:Lhk1;

    .line 6
    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    const-string v0, "DIRECT-vs_xos"

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mSsid:Ljava/lang/String;

    .line 9
    const-string v0, "123456Qwe"

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mPwd:Ljava/lang/String;

    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mRetryCount:I

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->connectLock:Ljava/lang/Object;

    const-wide/16 v0, 0x1f40

    .line 12
    iput-wide v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->connnectTimeOut:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->ipAddress:Ljava/lang/String;

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mUserType:I

    const/4 v1, 0x2

    .line 15
    iput v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createRetryCount:I

    .line 16
    new-instance v1, Lcom/transsion/vishatransfer/data/ConnectedState;

    const-string v2, "default"

    invoke-direct {v1, v0, v2, v0}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mConnectState:Lcom/transsion/vishatransfer/data/ConnectedState;

    .line 17
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 18
    new-instance v0, Ldmc;

    invoke-direct {v0}, Ldmc;-><init>()V

    invoke-static {p1, v0}, Lcom/transsion/socket/SocketMain;->init(Landroid/app/Application;Lcom/transsion/socket/SocketMain$SocketDataCreator;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mListeners:Ljava/util/List;

    .line 20
    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->socketClientListener:Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;

    .line 21
    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->socketServerListener:Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;

    .line 22
    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    new-instance v0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$receiverDevices$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-direct {p1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;-><init>(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->receiverDevices:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    .line 23
    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    new-instance v0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$serverReceiver$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-direct {p1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;-><init>(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->serverReceiver:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    .line 24
    new-instance p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    new-instance v0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$p2pConnectReceiver$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-direct {p1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;-><init>(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->p2pConnectReceiver:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Application;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;-><init>(Landroid/app/Application;)V

    return-void
.end method

.method private static final _init_$lambda$1(I)Lcom/transsion/socket/pkgdata/SocketData;
    .locals 1

    const/16 v0, -0x1c

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;

    invoke-direct {p0}, Lcom/transsion/vishatransfer/socket/TransferSocketCodeData;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->release$lambda$6(ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkCreateP2pAndChannel()V

    return-void
.end method

.method public static final synthetic access$checkLegal(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkLegal()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$connectWifi(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->connectWifi(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createWifiGroup(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createWifiGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$disconnect(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->disconnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$doOnMainThread(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lc74;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->doOnMainThread(Lc74;)V

    return-void
.end method

.method public static final synthetic access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method public static final synthetic access$getConnectLock$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->connectLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getConnectionInfoInner(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getConnectionInfoInner(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConnnectTimeOut$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->connnectTimeOut:J

    return-wide v0
.end method

.method public static final synthetic access$getContext$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    return-object p0
.end method

.method public static final synthetic access$getCoroutineScope$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Lnk1;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/transsion/vishatransfer/manager/WifiTransferManager;
    .locals 1

    sget-object v0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->instance:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    return-object v0
.end method

.method public static final synthetic access$getMIsStartReceive$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mIsStartReceive:Z

    return p0
.end method

.method public static final synthetic access$getMIsStartSend$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mIsStartSend:Z

    return p0
.end method

.method public static final synthetic access$getMListeners$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMPwd$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mPwd:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMRetryCount$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mRetryCount:I

    return p0
.end method

.method public static final synthetic access$getMSsid$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMWifiManager$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public static final synthetic access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->p2p:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method public static final synthetic access$getSystemErrorCode(Lcom/transsion/vishatransfer/manager/WifiTransferManager;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getSystemErrorCode(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$removeWifiGroupAsync(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->removeWifiGroupAsync(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestConnectionInfo(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->requestConnectionInfo(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestPeers(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->requestPeers(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$searchWifiGroupAsync(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->searchWifiGroupAsync(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setConnectState(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->setConnectState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    return-void
.end method

.method public static final synthetic access$setCreateGroup$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->isCreateGroup:Z

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V
    .locals 0

    sput-object p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->instance:Lcom/transsion/vishatransfer/manager/WifiTransferManager;

    return-void
.end method

.method public static final synthetic access$setMIsStartReceive$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mIsStartReceive:Z

    return-void
.end method

.method public static final synthetic access$setMIsStartSend$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mIsStartSend:Z

    return-void
.end method

.method public static synthetic b(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createGroupAsyncWithRetry$lambda$2(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/vishatransfer/manager/WifiTransferManager;I)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->cancelTransfer$lambda$13(Lcom/transsion/vishatransfer/manager/WifiTransferManager;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method private static final cancelTransfer$lambda$13(Lcom/transsion/vishatransfer/manager/WifiTransferManager;I)Lzfb;
    .locals 3

    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    const/4 v1, 0x2

    const-string v2, "cancelTransfer"

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->setConnectState(Lcom/transsion/vishatransfer/data/ConnectedState;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->unRegisterClientListener()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->unRegisterServerListener()V

    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final checkCreateP2pAndChannel()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->p2p:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    const-string v2, "wifip2p"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "null cannot be cast to non-null type android.net.wifi.p2p.WifiP2pManager"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->p2p:Landroid/net/wifi/p2p/WifiP2pManager;

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->p2p:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lfmc;

    invoke-direct {v3}, Lfmc;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    :cond_3
    return-void
.end method

.method private static final checkCreateP2pAndChannel$lambda$11()V
    .locals 0

    return-void
.end method

.method private final checkLegal()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final connectWifi(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)Ljava/lang/Object;
    .locals 15
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/data/WifiModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "WifiTransferManager_connectWifi"

    const-string v2, "socket_debug"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v3, Lcom/transsion/vishatransfer/data/WifiModel;

    const/16 v13, 0x7c

    const/4 v14, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v14}, Lcom/transsion/vishatransfer/data/WifiModel;-><init>(Ljava/lang/String;ZIFLjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getContext$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/app/Application;

    move-result-object v4

    move-object v5, p0

    invoke-virtual {p0, v4}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkPermission(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "Permission not granted"

    invoke-virtual {v3, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setMessage(Ljava/lang/String;)V

    const/16 v0, 0x3e9

    invoke-virtual {v3, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setErrorCode(I)V

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkLegal(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "Object not legal"

    invoke-virtual {v3, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setMessage(Ljava/lang/String;)V

    const/16 v0, 0x3eb

    invoke-virtual {v3, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setErrorCode(I)V

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectWifi_deviceAddress"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;-><init>()V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMSsid$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setNetworkName(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getMPwd$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->setPassphrase(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->enablePersistentMode(Z)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->build()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    new-instance v4, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectWifi$2$1;

    invoke-direct {v4, v3, v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectWifi$2$1;-><init>(Lcom/transsion/vishatransfer/data/WifiModel;Lcr0;)V

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static/range {p3 .. p3}, Lpt1;->c(Lwh1;)V

    :cond_3
    return-object v0
.end method

.method private static final createGroupAsyncWithRetry$lambda$2(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;ZLjava/lang/String;I)Lzfb;
    .locals 1

    const-string v0, "reason"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p3, p2}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget p2, p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createCount:I

    iget v0, p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createRetryCount:I

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createGroupAsyncWithRetry(Lu74;)V

    goto :goto_0

    :cond_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p0, p2, p3, p4}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p0, p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createCount:I

    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final createWifiGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Lwh1;)Ljava/lang/Object;
    .locals 14
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/data/WifiModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {p3 .. p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v2, Lcom/transsion/vishatransfer/data/WifiModel;

    const/16 v12, 0x7c

    const/4 v13, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lcom/transsion/vishatransfer/data/WifiModel;-><init>(Ljava/lang/String;ZIFLjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getContext$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkPermission(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "Permission not granted"

    invoke-virtual {v2, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setMessage(Ljava/lang/String;)V

    const/16 v0, 0x3e9

    invoke-virtual {v2, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setErrorCode(I)V

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkLegal(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Object not legal"

    invoke-virtual {v2, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setMessage(Ljava/lang/String;)V

    const/16 v0, 0x3eb

    invoke-virtual {v2, v0}, Lcom/transsion/vishatransfer/data/WifiModel;->setErrorCode(I)V

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createWifiGroup$2$1;

    invoke-direct {v4, v2, v1, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createWifiGroup$2$1;-><init>(Lcom/transsion/vishatransfer/data/WifiModel;Lcr0;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    move-object v0, p1

    move-object/from16 v2, p2

    invoke-virtual {v3, p1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static/range {p3 .. p3}, Lpt1;->c(Lwh1;)V

    :cond_3
    return-object v0
.end method

.method public static synthetic d(I)Lcom/transsion/socket/pkgdata/SocketData;
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->_init_$lambda$1(I)Lcom/transsion/socket/pkgdata/SocketData;

    move-result-object p0

    return-object p0
.end method

.method private final disconnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/data/WifiModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v1, Lcom/transsion/vishatransfer/data/WifiModel;

    const/16 v11, 0x7c

    const/4 v12, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/transsion/vishatransfer/data/WifiModel;-><init>(Ljava/lang/String;ZIFLjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnect$2$1;

    invoke-direct {v3, v1, p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnect$2$1;-><init>(Lcom/transsion/vishatransfer/data/WifiModel;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcr0;)V

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_1
    return-object p0
.end method

.method private final doOnMainThread(Lc74;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lc74;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v2

    new-instance v4, Lcom/transsion/vishatransfer/manager/WifiTransferManager$doOnMainThread$1;

    const/4 p0, 0x0

    invoke-direct {v4, p1, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$doOnMainThread$1;-><init>(Lc74;Lwh1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :goto_0
    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkCreateP2pAndChannel$lambda$11()V

    return-void
.end method

.method private final getConnectionInfoInner(Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Landroid/net/wifi/p2p/WifiP2pInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    :try_start_0
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p0

    new-instance v2, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoInner$2$1;

    invoke-direct {v2, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoInner$2$1;-><init>(Lcr0;)V

    invoke-virtual {v1, p0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_1
    return-object p0
.end method

.method private final getSystemErrorCode(I)I
    .locals 1

    const/16 p0, 0x3ec

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3ee

    goto :goto_0

    :cond_1
    const/16 p0, 0x3ed

    :cond_2
    :goto_0
    return p0
.end method

.method private final isConnectedWifi()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final registerClientListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V
    .locals 0

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->setListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V

    return-void
.end method

.method private final registerP2pConnectReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->p2pConnectReceiver:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->filter:Landroid/content/IntentFilter;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final registerPeersReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->receiverDevices:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->filter:Landroid/content/IntentFilter;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final registerServerListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V
    .locals 0

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->setListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V

    return-void
.end method

.method private final registerServerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->serverReceiver:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->filter:Landroid/content/IntentFilter;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final release$lambda$6(ZLjava/lang/String;I)Lzfb;
    .locals 0

    const-string p0, "<unused var>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final removeGroup()V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_removeGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->isCreateGroup:Z

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->p2p:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeGroup$1;

    invoke-direct {v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeGroup$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private final removeWifiGroupAsync(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/data/WifiModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v1, Lcom/transsion/vishatransfer/data/WifiModel;

    const/16 v11, 0x7c

    const/4 v12, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/transsion/vishatransfer/data/WifiModel;-><init>(Ljava/lang/String;ZIFLjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;

    invoke-direct {v3, v1, v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeWifiGroupAsync$2$1;-><init>(Lcom/transsion/vishatransfer/data/WifiModel;Lcr0;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_1
    return-object p0
.end method

.method private final requestConnectionInfo(Lwh1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/data/WifiModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_requestConnectionInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;

    invoke-direct {v3, p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestConnectionInfo$2$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lcr0;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_1
    return-object p0
.end method

.method private final requestPeers(Lwh1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_requestPeers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getContext$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkPermission(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    :try_start_0
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getChannel$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p0

    new-instance v3, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestPeers$2$1;

    invoke-direct {v3, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$requestPeers$2$1;-><init>(Lcr0;)V

    invoke-virtual {v1, p0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_2
    return-object p0
.end method

.method private final searchWifiGroupAsync(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lwh1;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/vishatransfer/data/WifiModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_searchWifiGroupAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lwh1;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v1, Lcom/transsion/vishatransfer/data/WifiModel;

    const/16 v11, 0x7c

    const/4 v12, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/transsion/vishatransfer/data/WifiModel;-><init>(Ljava/lang/String;ZIFLjava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getContext$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Permission not granted"

    invoke-virtual {v1, p0}, Lcom/transsion/vishatransfer/data/WifiModel;->setMessage(Ljava/lang/String;)V

    const/16 p0, 0x3e9

    invoke-virtual {v1, p0}, Lcom/transsion/vishatransfer/data/WifiModel;->setErrorCode(I)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkLegal(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "Object not legal"

    invoke-virtual {v1, p0}, Lcom/transsion/vishatransfer/data/WifiModel;->setMessage(Ljava/lang/String;)V

    const/16 p0, 0x3eb

    invoke-virtual {v1, p0}, Lcom/transsion/vishatransfer/data/WifiModel;->setErrorCode(I)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$checkCreateP2pAndChannel(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-static {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->access$getP2p$p(Lcom/transsion/vishatransfer/manager/WifiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchWifiGroupAsync$2$1;

    invoke-direct {v3, v1, v0, p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchWifiGroupAsync$2$1;-><init>(Lcom/transsion/vishatransfer/data/WifiModel;Lcr0;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_3
    return-object p0
.end method

.method private final setConnectState(Lcom/transsion/vishatransfer/data/ConnectedState;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mConnectState:Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/data/ConnectedState;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/transsion/vishatransfer/data/ConnectedState;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mConnectState:Lcom/transsion/vishatransfer/data/ConnectedState;

    return-void
.end method

.method private final unRegisterClientListener()V
    .locals 1

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->setListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V

    return-void
.end method

.method private final unRegisterPeersReceiver()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->receiverDevices:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final unRegisterServerListener()V
    .locals 1

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->setListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V

    return-void
.end method


# virtual methods
.method public cancelTransfer(I)V
    .locals 2

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_cancelTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mConnectState:Lcom/transsion/vishatransfer/data/ConnectedState;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/data/ConnectedState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->release()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->release()V

    :goto_0
    new-instance v0, Lbmc;

    invoke-direct {v0, p0, p1}, Lbmc;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;I)V

    invoke-direct {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->doOnMainThread(Lc74;)V

    return-void
.end method

.method public final checkPermission(Landroid/content/Context;)Z
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p0, v0, :cond_0

    const-string p0, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public connectAsync(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_connectAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkLegal()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 p1, 0x3eb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Object not legal"

    invoke-interface {p2, p0, v0, p1}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->resetPercent()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mIsStartSend:Z

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->registerP2pConnectReceiver()V

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v2

    new-instance v4, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$connectAsync$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lu74;Landroid/net/wifi/p2p/WifiP2pDevice;Lwh1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public createGroupAsync(Lu74;)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-interface {p1, p0, v1, v0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkLegal()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Object not legal"

    invoke-interface {p1, p0, v1, v0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->registerServerReceiver()V

    sget-object v0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {v0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->resetPercent()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mIsStartReceive:Z

    iget-object v1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    new-instance v4, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$createGroupAsync$1;-><init>(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public createGroupAsyncWithRetry(Lu74;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createCount:I

    new-instance v0, Lemc;

    invoke-direct {v0, p1, p0}, Lemc;-><init>(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;)V

    invoke-virtual {p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->createGroupAsync(Lu74;)V

    return-void
.end method

.method public disconnectAsync(Lu74;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_disconnectAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkCreateP2pAndChannel()V

    iget-object v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    new-instance v5, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$disconnectAsync$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lu74;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public getAverageSpeedPerSecond(Z)J
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getAverageSpeedPerSecond()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getAverageSpeedPerSecond()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getConnectState()Lcom/transsion/vishatransfer/data/ConnectedState;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mConnectState:Lcom/transsion/vishatransfer/data/ConnectedState;

    return-object p0
.end method

.method public getConnectionInfoAsync(Lw74;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw74;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_getConnectionInfoAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v3

    new-instance v5, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoAsync$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lw74;Lwh1;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final getIpAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->ipAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final getMUserType()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mUserType:I

    return p0
.end method

.method public getRecentSpeedPerSecond(Z)J
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getRecentSpeedPerSecond()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getRecentSpeedPerSecond()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final getStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->started:Z

    return p0
.end method

.method public getTotalNum(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTransferTotalNum()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTransferTotalNum()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTotalSize(Z)J
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->getTransferTotalSize()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->getTransferTotalSize()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final isConnected()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public registerListener(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iput p2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mUserType:I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->socketClientListener:Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketClientListener$1;

    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->registerClientListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketClientListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->socketServerListener:Lcom/transsion/vishatransfer/manager/WifiTransferManager$socketServerListener$1;

    invoke-direct {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->registerServerListener(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;)V

    :goto_0
    return-void
.end method

.method public release(I)V
    .locals 2

    :try_start_0
    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->unRegisterPeersReceiver()V

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->unregisterP2pConnectReceiver()V

    new-instance p1, Lcmc;

    invoke-direct {p1}, Lcmc;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->disconnectAsync(Lu74;)V

    sget-object p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->release()V

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->unRegisterClientListener()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->release()V

    invoke-virtual {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->unRegisterServerReceiver()V

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->removeGroup()V

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->unRegisterServerListener()V

    :goto_0
    iget-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/d;->f(Lnk1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove group error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public removeGroupAsync(Lu74;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_removeGroupAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    new-instance v5, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeGroupAsync$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$removeGroupAsync$1;-><init>(Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lu74;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public searchDevicesAsync(Lu74;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu74;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket_debug"

    const-string v1, "WifiTransferManager_searchDevicesAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->checkLegal()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Object not legal"

    invoke-interface {p1, p0, v1, v0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->registerPeersReceiver()V

    iget-object v2, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->coroutineScope:Lnk1;

    new-instance v5, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p0, v0}, Lcom/transsion/vishatransfer/manager/WifiTransferManager$searchDevicesAsync$1;-><init>(Lu74;Lcom/transsion/vishatransfer/manager/WifiTransferManager;Lwh1;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public sendConversationToClient(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    const-string p0, "conversation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectServerManager;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectServerManager;->sendConversationToClient(Lcom/transsion/vishatransfer/data/Conversation;)V

    return-void
.end method

.method public sendConversationToService(Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    const-string p0, "conversation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->sendConversationToServer(Lcom/transsion/vishatransfer/data/Conversation;)V

    return-void
.end method

.method public sendFileDataToServerAsync(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/vishatransfer/data/FileData;",
            ">;)V"
        }
    .end annotation

    const-string p0, "fileDataList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->INSTANCE:Lcom/transsion/vishatransfer/connection/ConnectClientManager;

    invoke-virtual {p0, p1}, Lcom/transsion/vishatransfer/connection/ConnectClientManager;->sendFileDataToServer(Ljava/util/List;)V

    return-void
.end method

.method public final setConnected(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setIpAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->ipAddress:Ljava/lang/String;

    return-void
.end method

.method public final setMUserType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mUserType:I

    return-void
.end method

.method public final setStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->started:Z

    return-void
.end method

.method public unRegisterServerReceiver()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->serverReceiver:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregisterCallback(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V
    .locals 1

    const-string v0, "accessReceiverActionListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->mListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterP2pConnectReceiver()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->context:Landroid/app/Application;

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager;->p2pConnectReceiver:Lcom/transsion/vishatransfer/manager/WifiTransferManager$AccessPointReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
