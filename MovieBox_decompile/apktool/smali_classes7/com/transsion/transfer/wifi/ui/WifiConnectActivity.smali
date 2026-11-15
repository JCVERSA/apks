.class public final Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;
.super Lcom/transsion/baseui/activity/BaseNewActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseNewActivity<",
        "Lxt/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\nJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u001f\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\'\u0010 J\u000f\u0010(\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0004J\u000f\u0010+\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0004J\u000f\u0010,\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0004J\r\u0010.\u001a\u00020\u0005\u00a2\u0006\u0004\u0008.\u0010\u0004R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u0010:\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010@\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u00109R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020J0I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u001a\u0010S\u001a\u00020N8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\u00a8\u0006T"
    }
    d2 = {
        "Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Lxt/c;",
        "<init>",
        "()V",
        "",
        "a1",
        "Ldu/a;",
        "wifiInfoModel",
        "m1",
        "(Ldu/a;)V",
        "",
        "scannedText",
        "g1",
        "(Ljava/lang/String;)V",
        "U0",
        "ip",
        "W0",
        "o1",
        "Landroid/view/View;",
        "view",
        "",
        "marginTop",
        "l1",
        "(Landroid/view/View;I)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "",
        "n0",
        "()Z",
        "onPause",
        "onDestroy",
        "c1",
        "()Lxt/c;",
        "f0",
        "()Ljava/lang/String;",
        "setImmersionStatusBar",
        "l0",
        "m0",
        "k0",
        "p0",
        "q0",
        "retryLoadData",
        "V0",
        "Lcom/transsion/transfer/impl/ClientViewModel;",
        "i",
        "Lkotlin/Lazy;",
        "b1",
        "()Lcom/transsion/transfer/impl/ClientViewModel;",
        "clientViewModel",
        "j",
        "Ljava/lang/String;",
        "serverIp",
        "k",
        "Z",
        "clientReleaseTag",
        "",
        "l",
        "J",
        "onScanNotSupportTime",
        "m",
        "transferLaunched",
        "Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;",
        "n",
        "Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;",
        "loadingDialog",
        "Laf/a;",
        "o",
        "Laf/a;",
        "callback",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "p",
        "Landroidx/activity/result/b;",
        "permissionResult",
        "Lqi/b;",
        "q",
        "Lqi/b;",
        "getLogViewConfig",
        "()Lqi/b;",
        "logViewConfig",
        "Transfer_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final i:Lkotlin/Lazy;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:J

.field private m:Z

.field private n:Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;

.field private final o:Laf/a;

.field private p:Landroidx/activity/result/b;

.field private final q:Lqi/b;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/wifi/ui/g;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/ui/g;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->i:Lkotlin/Lazy;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->l:J

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$a;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$a;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->o:Laf/a;

    .line 27
    .line 28
    new-instance v0, Lf/j;

    .line 29
    .line 30
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/transsion/transfer/wifi/ui/h;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/h;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->p:Landroidx/activity/result/b;

    .line 43
    .line 44
    new-instance v0, Lqi/b;

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    const/4 v2, 0x0

    .line 48
    const-string v3, "wifi_connect_page"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->q:Lqi/b;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic C0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->h1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->T0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->k1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->X0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->f1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->i1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->j1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->Z0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->e1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->d1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->n1()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic N0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->Y0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->W0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Q0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->g1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic S0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->m1(Ldu/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final T0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/transsion/transfer/impl/ClientViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/transsion/transfer/impl/ClientViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private final U0(Ldu/a;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;

    .line 8
    .line 9
    invoke-direct {v2, p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->n(Landroidx/appcompat/app/AppCompatActivity;Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final W0(Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v7, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->l()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v4, Lcom/transsion/transfer/wifi/ui/k;

    .line 10
    .line 11
    invoke-direct {v4, p0}, Lcom/transsion/transfer/wifi/ui/k;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v0, v7

    .line 18
    move-object v1, p1

    .line 19
    invoke-static/range {v0 .. v6}, Lcom/transsion/transfer/impl/client/TransferClient$a;->m(Lcom/transsion/transfer/impl/client/TransferClient$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 23
    .line 24
    invoke-virtual {v7}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Lcu/b;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final X0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->b1()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsion/transfer/wifi/ui/n;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/n;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/ClientViewModel;->k(Lkotlin/jvm/functions/Function2;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final Y0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "connectWifi connect res:"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->b1()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Lcom/transsion/transfer/wifi/ui/e;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/transsion/transfer/wifi/ui/e;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/transsion/transfer/impl/ClientViewModel;->k(Lkotlin/jvm/functions/Function2;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object p0, Lcu/b;->a:Lcu/b;

    .line 35
    .line 36
    sget-object p1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcu/b;->e(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private static final Z0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "autoError"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "connectWifi auto retry connect res:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", autoError:"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 30
    .line 31
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, p2, v0}, Lcu/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->V0()V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->s()V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$doConnect$1$1$1$1;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-direct {v3, p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$doConnect$1$1$1$1;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x2

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    sget-object p0, Lcu/b;->a:Lcu/b;

    .line 70
    .line 71
    sget-object p1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcu/b;->e(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p0
.end method

.method private final a1()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/google/zxing/BarcodeFormat;

    .line 3
    .line 4
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lxt/c;

    .line 25
    .line 26
    iget-object v1, v1, Lxt/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 27
    .line 28
    new-instance v2, Laf/k;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Laf/k;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setDecoderFactory(Laf/h;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lxt/c;

    .line 41
    .line 42
    iget-object v0, v0, Lxt/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initializeFromIntent(Landroid/content/Intent;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lxt/c;

    .line 56
    .line 57
    iget-object v0, v0, Lxt/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->o:Laf/a;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->decodeContinuous(Laf/a;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private final b1()Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/impl/ClientViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final d1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->m:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 12
    .line 13
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcu/b;->e(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->m:Z

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->o1()V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private static final f1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->k:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->j:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->W0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private final g1(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> onScanSuccess() --> scannedText = "

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " --> \u626b\u7801\u6210\u529f \u5f00\u59cb\u89e3\u6790 \u5efa\u7acb\u8fde\u63a5"

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->a:Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;

    .line 39
    .line 40
    new-instance v1, Lcom/transsion/transfer/wifi/ui/l;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/l;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/transsion/transfer/wifi/qrcode/QrCodeUtil;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private static final h1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget v2, Lcom/transsion/transfer/R$string;->transfer_wifi_connect_error_tip_no_mb_qr_code:I

    .line 11
    .line 12
    invoke-static {}, Lcom/blankj/utilcode/util/c;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x1

    .line 17
    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object v3, v4, v0

    .line 20
    .line 21
    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lxt/c;

    .line 33
    .line 34
    iget-object p0, p0, Lxt/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    const-string v1, "5G"

    .line 42
    .line 43
    invoke-virtual {p1}, Ldu/a;->m()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x2

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    sget-object v1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->n()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    iget-wide v6, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->l:J

    .line 68
    .line 69
    sub-long/2addr v4, v6

    .line 70
    const-wide/16 v6, 0x3e8

    .line 71
    .line 72
    cmp-long p1, v4, v6

    .line 73
    .line 74
    if-lez p1, :cond_1

    .line 75
    .line 76
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    sget v4, Lcom/transsion/transfer/R$string;->transfer_wifi_connect_error_tip_no_support:I

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p1, v1}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lxt/c;

    .line 96
    .line 97
    iget-object p1, p1, Lxt/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, " --> onScanSuccess() --> \u9884\u671f\u4f7f\u75285G\u901a\u9053\uff0c\u4f46\u662f\u8bbe\u5907\u4e0d\u652f\u6301"

    .line 117
    .line 118
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {p1, v1, v0, v3, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    iput-wide v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->l:J

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {p1}, Ldu/a;->m()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v4, " --> onScanSuccess() --> \u9884\u671f\u4f7f\u7528"

    .line 154
    .line 155
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v4, "\u901a\u9053\uff0c\u4e14\u8bbe\u5907\u652f\u6301 -- \u5f00\u59cb\u8fde\u63a5...."

    .line 162
    .line 163
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-static {v1, v4, v0, v3, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lrt/c;->a:Lrt/c;

    .line 174
    .line 175
    invoke-virtual {v0}, Lrt/c;->c()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_3

    .line 180
    .line 181
    invoke-virtual {v0}, Lrt/c;->a()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_3

    .line 186
    .line 187
    new-instance v1, Lcom/transsion/transfer/wifi/ui/m;

    .line 188
    .line 189
    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/wifi/ui/m;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lrt/c;->g(Lkotlin/jvm/functions/Function0;)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->U0(Ldu/a;)V

    .line 197
    .line 198
    .line 199
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 200
    .line 201
    return-object p0
.end method

.method private static final i1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxt/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lxt/c;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/transsion/transfer/wifi/ui/o;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/wifi/ui/o;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final j1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->U0(Ldu/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final k1(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final l1(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 11
    .line 12
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final m1(Ldu/a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/transfer/wifi/ui/f;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/transsion/transfer/wifi/ui/f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;->p0(Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;->q0(Ldu/a;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->n:Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "getSupportFragmentManager(...)"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "TransferWifiConnectDialog"

    .line 29
    .line 30
    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final n1()Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 2
    .line 3
    const/16 v1, 0x7d1

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->b(I)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object v0
.end method

.method private final o1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->l:Lcom/transsion/transfer/impl/TransferStatusActivity$a;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/transsion/transfer/impl/TransferStatusActivity$a;->b(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final V0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->n:Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :goto_2
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->n:Lcom/transsion/transfer/wifi/connect/TransferWifiConnectDialog;

    .line 31
    .line 32
    return-void
.end method

.method public c1()Lxt/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxt/c;->c(Landroid/view/LayoutInflater;)Lxt/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "inflate(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public f0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogViewConfig()Lqi/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->q:Lqi/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->c1()Lxt/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxt/c;

    .line 6
    .line 7
    iget-object v0, v0, Lxt/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/transfer/wifi/ui/d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/d;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public l0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->a1()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->b1()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->o()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/transsion/transfer/wifi/ui/i;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/i;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$c;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->getStatusBarHeight(Landroid/app/Activity;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lxt/c;

    .line 34
    .line 35
    iget-object v1, v1, Lxt/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 36
    .line 37
    const-string v2, "ivClose"

    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v1, v0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->l1(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public m0()V
    .locals 0

    .line 1
    return-void
.end method

.method public n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/transfer/wifi/ui/j;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/j;-><init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->e(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lzt/h;->s:Lzt/h$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lzt/h$a;->a()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseNewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 v0, 0x80

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->transparentBar()Lcom/gyf/immersionbar/ImmersionBar;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lxt/c;

    .line 9
    .line 10
    iget-object v0, v0, Lxt/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lxt/c;

    .line 9
    .line 10
    iget-object v0, v0, Lxt/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public p0()V
    .locals 0

    .line 1
    return-void
.end method

.method public q0()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->q0()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/permission/d;->c()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/permission/d;->g(Ljava/util/List;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-class v1, Lcom/transsion/transfer/wifi/permission/PermissionsActivity;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "com.transsion.transfer.wifi.util.receive"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->p:Landroidx/activity/result/b;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public setImmersionStatusBar()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
