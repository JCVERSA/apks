.class public final Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;
.super Lcom/transsion/baseui/activity/BaseNewActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseNewActivity<",
        "Lxt/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001dJ\u000f\u0010 \u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008&\u0010\u0004J\u000f\u0010\'\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0004R\u0018\u0010*\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001b\u00100\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u0016\u00103\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u001c\u00108\u001a\u0008\u0012\u0004\u0012\u000205048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010:\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u00102R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010@\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u00102R\u001a\u0010F\u001a\u00020A8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010E\u00a8\u0006G"
    }
    d2 = {
        "Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Lxt/d;",
        "<init>",
        "()V",
        "",
        "Q0",
        "Ldu/a;",
        "wifiInfoModel",
        "",
        "duration",
        "P0",
        "(Ldu/a;J)V",
        "",
        "code",
        "O0",
        "(IJ)V",
        "c1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "S0",
        "()Lxt/d;",
        "",
        "f0",
        "()Ljava/lang/String;",
        "",
        "n0",
        "()Z",
        "isTranslucent",
        "isStatusDark",
        "l0",
        "m0",
        "k0",
        "p0",
        "q0",
        "retryLoadData",
        "onDestroy",
        "finish",
        "i",
        "Ldu/a;",
        "mWifiInfoModel",
        "Lcom/transsion/transfer/impl/k;",
        "j",
        "Lkotlin/Lazy;",
        "R0",
        "()Lcom/transsion/transfer/impl/k;",
        "serverViewModel",
        "k",
        "Z",
        "p2pInUseTag",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "l",
        "Landroidx/activity/result/b;",
        "permissionResult",
        "m",
        "isCanceled",
        "Lfu/c;",
        "n",
        "Lfu/c;",
        "shareManager",
        "o",
        "is5GChannel",
        "Lqi/b;",
        "p",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private i:Ldu/a;

.field private final j:Lkotlin/Lazy;

.field private k:Z

.field private l:Landroidx/activity/result/b;

.field private m:Z

.field private final n:Lfu/c;

.field private o:Z

.field private final p:Lqi/b;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, Lcom/transsion/transfer/impl/k;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$special$$inlined$viewModels$default$2;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$special$$inlined$viewModels$default$3;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, v5, p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->j:Lkotlin/Lazy;

    .line 32
    .line 33
    new-instance v0, Lf/j;

    .line 34
    .line 35
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/transsion/transfer/wifi/ui/w;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/w;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->l:Landroidx/activity/result/b;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->m:Z

    .line 51
    .line 52
    new-instance v0, Lfu/c;

    .line 53
    .line 54
    invoke-direct {v0}, Lfu/c;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->n:Lfu/c;

    .line 58
    .line 59
    new-instance v0, Lqi/b;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x2

    .line 63
    const-string v3, "wifi_create_page"

    .line 64
    .line 65
    invoke-direct {v0, v3, v1, v2, v5}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->p:Lqi/b;

    .line 69
    .line 70
    return-void
.end method

.method public static synthetic C0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->V0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->Y0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->Z0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic F0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->U0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->T0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->a1(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->W0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Lcom/tn/lib/view/SwitchButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->X0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->b1(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->O0(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Ldu/a;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->P0(Ldu/a;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method private final O0(IJ)V
    .locals 3

    .line 1
    sget-object p2, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p3, " --> createWifi() --> \u70ed\u70b9\u521b\u5efa \u5931\u8d25 --> code = "

    .line 16
    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    const/4 v0, 0x2

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {p2, p3, v2, v0, v1}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lxt/d;

    .line 38
    .line 39
    iget-object p2, p2, Lxt/d;->h:Landroid/widget/ProgressBar;

    .line 40
    .line 41
    const/16 p3, 0x8

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lxt/d;

    .line 51
    .line 52
    iget-object p2, p2, Lxt/d;->c:Landroidx/constraintlayout/widget/Group;

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lxt/d;

    .line 62
    .line 63
    iget-object p2, p2, Lxt/d;->b:Landroidx/constraintlayout/widget/Group;

    .line 64
    .line 65
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->m:Z

    .line 69
    .line 70
    sget-object p2, Lcu/c;->a:Lcu/c;

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Lcu/c;->i(I)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private final P0(Ldu/a;J)V
    .locals 12

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
    const-string v1, " --> createWifi() --> successFun() --> Wi-Fi\u521b\u5efa\u6210\u529f -- \u5237\u65b0UI --> \u5c55\u793a\u4e8c\u7ef4\u7801\u7b49\u4fe1\u606f"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->i:Ldu/a;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->R0()Lcom/transsion/transfer/impl/k;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->A()V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    new-instance v0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;

    .line 44
    .line 45
    const/4 v11, 0x0

    .line 46
    move-object v6, v0

    .line 47
    move-object v7, p1

    .line 48
    move-object v8, p0

    .line 49
    move-wide v9, p2

    .line 50
    invoke-direct/range {v6 .. v11}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$createSuccess$1;-><init>(Ldu/a;Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;JLkotlin/coroutines/Continuation;)V

    .line 51
    .line 52
    .line 53
    const/4 v9, 0x3

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    move-object v8, v0

    .line 58
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lxt/d;

    .line 66
    .line 67
    iget-object p2, p2, Lxt/d;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    invoke-virtual {p1}, Ldu/a;->p()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final Q0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/l;->a:Lcom/transsion/transfer/impl/l;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->o:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "5g"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "2.4g"

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/l;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->a:Lcom/transsion/transfer/wifi/create/WifiCreateManager;

    .line 16
    .line 17
    sget-object v1, Ldu/a;->r:Ldu/a$a;

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->o:Z

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ldu/a$a;->c(Z)Ldu/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    new-instance v3, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$a;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->g(Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/create/a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private final R0()Lcom/transsion/transfer/impl/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/impl/k;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final T0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->i:Ldu/a;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/wifi/ui/ShareMbApkDialog;->r0(Ldu/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "getSupportFragmentManager(...)"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "ShareMbApkDialog"

    .line 21
    .line 22
    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final U0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->n:Lfu/c;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lfu/c;->i(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final V0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "location"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "null cannot be cast to non-null type android.location.LocationManager"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p1, Landroid/location/LocationManager;

    .line 13
    .line 14
    const-string v0, "gps"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget v0, Lcom/transsion/transfer/R$string;->transfer_wifi_positioning_tip:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->q0()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static final W0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->o:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->q0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final X0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxt/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lxt/d;->b()Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/transsion/transfer/wifi/ui/x;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/x;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

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

.method private static final Y0(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->Q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final Z0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final a1(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->R0()Lcom/transsion/transfer/impl/k;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->t()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcu/b;->o(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->c1()V

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final b1(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;Landroidx/activity/result/ActivityResult;)V
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
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->q0()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->finish()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private final c1()V
    .locals 6

    .line 1
    sget-object v0, Leu/b;->a:Leu/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Leu/b;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, " -->startServerSendData  \u6ca1\u6709\u6570\u636e\uff0c\u8fde\u63a5\u6210\u529f\u5173\u95ed\u9875\u9762"

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v0, v4, v3, v2, v1}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " -->startServerSendData  \u6709\u6570\u636e\uff0c\u53d1\u9001\u6570\u636e"

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v0, v4, v3, v2, v1}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->k:Z

    .line 67
    .line 68
    sget-object v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->l:Lcom/transsion/transfer/impl/TransferStatusActivity$a;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lcom/transsion/transfer/impl/TransferStatusActivity$a;->c(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->finish()V

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public S0()Lxt/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxt/d;->c(Landroid/view/LayoutInflater;)Lxt/d;

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

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->k:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->a:Lcom/transsion/transfer/wifi/create/WifiCreateManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->j()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public getLogViewConfig()Lqi/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->p:Lqi/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->S0()Lxt/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    sget-object v0, Lij/y;->a:Lij/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
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
    check-cast v0, Lxt/d;

    .line 6
    .line 7
    iget-object v0, v0, Lxt/d;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/transfer/wifi/ui/q;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/q;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lxt/d;

    .line 22
    .line 23
    iget-object v0, v0, Lxt/d;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/transfer/wifi/ui/r;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/r;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lxt/d;

    .line 38
    .line 39
    iget-object v0, v0, Lxt/d;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    new-instance v1, Lcom/transsion/transfer/wifi/ui/s;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/s;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lxt/d;

    .line 54
    .line 55
    iget-object v0, v0, Lxt/d;->i:Lcom/tn/lib/view/SwitchButton;

    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->o:Z

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lxt/d;

    .line 67
    .line 68
    iget-object v0, v0, Lxt/d;->i:Lcom/tn/lib/view/SwitchButton;

    .line 69
    .line 70
    new-instance v1, Lcom/transsion/transfer/wifi/ui/t;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/t;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->n()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lxt/d;

    .line 91
    .line 92
    iget-object v0, v0, Lxt/d;->i:Lcom/tn/lib/view/SwitchButton;

    .line 93
    .line 94
    const/16 v1, 0x8

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void
.end method

.method public l0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxt/d;

    .line 6
    .line 7
    iget-object v0, v0, Lxt/d;->j:Lcom/tn/lib/view/TitleLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lcom/transsion/transfer/R$string;->transfer_wifi_create_connect_device:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "getString(...)"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->n:Lfu/c;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lfu/c;->g(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 30
    .line 31
    .line 32
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
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/transfer/wifi/ui/u;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/transfer/wifi/ui/u;-><init>()V

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
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->R0()Lcom/transsion/transfer/impl/k;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->R0()Lcom/transsion/transfer/impl/k;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->r()Lkotlin/jvm/functions/Function4;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "loadDefaultData: serverViewModel.getConnectEventSource().observe:"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ","

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->R0()Lcom/transsion/transfer/impl/k;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->x()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->R0()Lcom/transsion/transfer/impl/k;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->o()Landroidx/lifecycle/LiveData;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Lcom/transsion/transfer/wifi/ui/v;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/ui/v;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$b;

    .line 82
    .line 83
    invoke-direct {v1, v0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->m:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/permission/d;->e()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/permission/d;->g(Ljava/util/List;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcu/c;->a:Lcu/c;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcu/c;->h()V

    .line 23
    .line 24
    .line 25
    :cond_0
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
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/permission/d;->e()Ljava/util/List;

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
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->R0()Lcom/transsion/transfer/impl/k;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->y()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->R0()Lcom/transsion/transfer/impl/k;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->j()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->c1()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lrt/c;->a:Lrt/c;

    .line 41
    .line 42
    invoke-virtual {v0}, Lrt/c;->d()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lrt/c;->b()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    new-instance v1, Lcom/transsion/transfer/wifi/ui/p;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/ui/p;-><init>(Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lrt/c;->h(Lkotlin/jvm/functions/Function0;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->Q0()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 68
    .line 69
    const-class v1, Lcom/transsion/transfer/wifi/permission/PermissionsActivity;

    .line 70
    .line 71
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "com.transsion.transfer.wifi.util.send"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiCreateActivity;->l:Landroidx/activity/result/b;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method
