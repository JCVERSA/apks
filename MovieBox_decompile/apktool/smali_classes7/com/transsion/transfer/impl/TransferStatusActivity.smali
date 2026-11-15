.class public final Lcom/transsion/transfer/impl/TransferStatusActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/TransferStatusActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lxt/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005*\u00014\u0018\u0000 K2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u001f\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0018R\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010,\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010.\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010+R\u001d\u00103\u001a\u0004\u0018\u00010&8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00100\u001a\u0004\u00086\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u00100\u001a\u0004\u0008;\u0010<R\u001b\u0010B\u001a\u00020>8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u00100\u001a\u0004\u0008@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u001a\u0010J\u001a\u0008\u0012\u0004\u0012\u00020C0G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010I\u00a8\u0006L"
    }
    d2 = {
        "Lcom/transsion/transfer/impl/TransferStatusActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lxt/b;",
        "<init>",
        "()V",
        "",
        "initView",
        "n1",
        "j1",
        "K0",
        "initData",
        "X0",
        "T0",
        "",
        "connected",
        "",
        "deviceName",
        "M0",
        "(ZLjava/lang/String;)V",
        "p1",
        "S0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "R0",
        "()Lxt/b;",
        "Lcom/transsion/transfer/impl/TransferReceivedFragment;",
        "a",
        "Lcom/transsion/transfer/impl/TransferReceivedFragment;",
        "receivedFragment",
        "Lcom/transsion/transfer/impl/TransferSentFragment;",
        "b",
        "Lcom/transsion/transfer/impl/TransferSentFragment;",
        "sentFragment",
        "Lyt/a;",
        "c",
        "Lyt/a;",
        "selectFragment",
        "d",
        "Z",
        "isSelectFragmentShown",
        "e",
        "needServerAsClientFetchList",
        "f",
        "Lkotlin/Lazy;",
        "Q0",
        "()Lyt/a;",
        "transferSelectFragment",
        "com/transsion/transfer/impl/TransferStatusActivity$g",
        "g",
        "O0",
        "()Lcom/transsion/transfer/impl/TransferStatusActivity$g;",
        "serverFileHandler",
        "Lcom/transsion/transfer/impl/k;",
        "h",
        "P0",
        "()Lcom/transsion/transfer/impl/k;",
        "serverViewModel",
        "Lcom/transsion/transfer/impl/ClientViewModel;",
        "i",
        "N0",
        "()Lcom/transsion/transfer/impl/ClientViewModel;",
        "clientViewModel",
        "",
        "j",
        "I",
        "selectTabIndex",
        "",
        "k",
        "[Ljava/lang/Integer;",
        "tabs",
        "l",
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


# static fields
.field public static final l:Lcom/transsion/transfer/impl/TransferStatusActivity$a;

.field private static final m:Ljava/lang/String;

.field private static n:Z


# instance fields
.field private a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

.field private b:Lcom/transsion/transfer/impl/TransferSentFragment;

.field private c:Lyt/a;

.field private d:Z

.field private e:Z

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private j:I

.field private final k:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/TransferStatusActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->l:Lcom/transsion/transfer/impl/TransferStatusActivity$a;

    .line 8
    .line 9
    const-class v0, Lcom/transsion/transfer/impl/TransferStatusActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getName(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->m:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/impl/l0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/transfer/impl/l0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->f:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/transfer/impl/m0;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/m0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->g:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/transfer/impl/n0;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/n0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->h:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/transfer/impl/o0;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/o0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->i:Lkotlin/Lazy;

    .line 47
    .line 48
    sget v0, Lcom/transsion/transfer/R$string;->transfer_tab_received:I

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget v1, Lcom/transsion/transfer/R$string;->transfer_tab_sent:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x2

    .line 61
    new-array v2, v2, [Ljava/lang/Integer;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    aput-object v0, v2, v3

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    aput-object v1, v2, v0

    .line 68
    .line 69
    iput-object v2, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->k:[Ljava/lang/Integer;

    .line 70
    .line 71
    return-void
.end method

.method public static final synthetic A0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic B0(Lcom/transsion/transfer/impl/TransferStatusActivity;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->k:[Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->S0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic D0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic E0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->j1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lcom/transsion/transfer/impl/TransferReceivedFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic G0(Lcom/transsion/transfer/impl/TransferStatusActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic H0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lcom/transsion/transfer/impl/TransferSentFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->b:Lcom/transsion/transfer/impl/TransferSentFragment;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic I0(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic J0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->n1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final K0()V
    .locals 3

    .line 1
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setFollowTouch(Z)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/transsion/transfer/impl/TransferStatusActivity$c;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/TransferStatusActivity$c;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lxy/a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lxt/b;

    .line 23
    .line 24
    iget-object v1, v1, Lxt/b;->f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lvy/a;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lxt/b;

    .line 34
    .line 35
    iget-object v0, v0, Lxt/b;->m:Landroidx/viewpager2/widget/ViewPager2;

    .line 36
    .line 37
    new-instance v1, Lcom/transsion/transfer/impl/TransferStatusActivity$b;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/TransferStatusActivity$b;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lxt/b;

    .line 50
    .line 51
    iget-object v0, v0, Lxt/b;->m:Landroidx/viewpager2/widget/ViewPager2;

    .line 52
    .line 53
    iget v1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->j:I

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private static final L0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/ClientViewModel;
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

.method private final M0(ZLjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->c:Lyt/a;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lyt/a;->M()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lxt/b;

    .line 17
    .line 18
    iget-object p1, p1, Lxt/b;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    sget v2, Lcom/transsion/transfer/R$mipmap;->transfer_ic_link:I

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lxt/b;

    .line 30
    .line 31
    iget-object p1, p1, Lxt/b;->i:Landroid/widget/TextView;

    .line 32
    .line 33
    sget v2, Lcom/transsion/transfer/R$string;->transfer_disconnect:I

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lxt/b;

    .line 47
    .line 48
    iget-object p1, p1, Lxt/b;->j:Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    move-object p1, p2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lxt/b;

    .line 63
    .line 64
    iget-object p1, p1, Lxt/b;->j:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lxt/b;

    .line 79
    .line 80
    iget-object v2, v2, Lxt/b;->j:Landroid/widget/TextView;

    .line 81
    .line 82
    sget v3, Lcom/transsion/transfer/R$string;->transfer_state_connect_tips:I

    .line 83
    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object p1, v1, v0

    .line 87
    .line 88
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-lez p1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lxt/b;

    .line 106
    .line 107
    iget-object p1, p1, Lxt/b;->j:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->c:Lyt/a;

    .line 114
    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-interface {p1}, Lyt/a;->c()V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lxt/b;

    .line 125
    .line 126
    iget-object p1, p1, Lxt/b;->k:Landroidx/appcompat/widget/AppCompatImageView;

    .line 127
    .line 128
    sget v2, Lcom/transsion/transfer/R$mipmap;->transfer_ic_unlink:I

    .line 129
    .line 130
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lxt/b;

    .line 138
    .line 139
    iget-object p1, p1, Lxt/b;->i:Landroid/widget/TextView;

    .line 140
    .line 141
    const-string v2, ""

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lxt/b;

    .line 151
    .line 152
    iget-object p1, p1, Lxt/b;->j:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-nez p1, :cond_4

    .line 159
    .line 160
    move-object p1, p2

    .line 161
    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lxt/b;

    .line 167
    .line 168
    iget-object p1, p1, Lxt/b;->j:Landroid/widget/TextView;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Lxt/b;

    .line 183
    .line 184
    iget-object v2, v2, Lxt/b;->j:Landroid/widget/TextView;

    .line 185
    .line 186
    sget v3, Lcom/transsion/transfer/R$string;->transfer_state_disconnect_tips:I

    .line 187
    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    .line 189
    .line 190
    aput-object p1, v1, v0

    .line 191
    .line 192
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-lez p1, :cond_5

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lxt/b;

    .line 210
    .line 211
    iget-object p1, p1, Lxt/b;->j:Landroid/widget/TextView;

    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_5
    :goto_2
    return-void
.end method

.method private final N0()Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->i:Lkotlin/Lazy;

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

.method private final O0()Lcom/transsion/transfer/impl/TransferStatusActivity$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/impl/TransferStatusActivity$g;

    .line 8
    .line 9
    return-object v0
.end method

.method private final P0()Lcom/transsion/transfer/impl/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->h:Lkotlin/Lazy;

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

.method private final S0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->c:Lyt/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->d:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/w;->l()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private final T0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->x()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->p()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lxt/b;

    .line 28
    .line 29
    iget-object v0, v0, Lxt/b;->j:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/ClientViewModel;->p()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->c:Lyt/a;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/ClientViewModel;->p()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    move-object v2, v1

    .line 57
    :cond_0
    invoke-interface {v0, v2}, Lyt/a;->D(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->p()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v1, v0

    .line 72
    :goto_0
    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(ZLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    sget-boolean v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->n:Z

    .line 78
    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->p()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    move-object v1, v0

    .line 93
    :goto_1
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(ZLjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->q()Landroidx/lifecycle/LiveData;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Lcom/transsion/transfer/impl/r0;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/r0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 108
    .line 109
    .line 110
    new-instance v2, Lcom/transsion/transfer/impl/TransferStatusActivity$f;

    .line 111
    .line 112
    invoke-direct {v2, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->o()Landroidx/lifecycle/LiveData;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v1, Lcom/transsion/transfer/impl/s0;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/s0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Lcom/transsion/transfer/impl/TransferStatusActivity$f;

    .line 132
    .line 133
    invoke-direct {v2, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->n()Landroidx/lifecycle/LiveData;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v1, Lcom/transsion/transfer/impl/a0;

    .line 148
    .line 149
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/a0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 150
    .line 151
    .line 152
    new-instance v2, Lcom/transsion/transfer/impl/TransferStatusActivity$f;

    .line 153
    .line 154
    invoke-direct {v2, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method private static final U0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lxt/b;

    .line 11
    .line 12
    iget-object v0, v0, Lxt/b;->j:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->c:Lyt/a;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/ClientViewModel;->p()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    :cond_1
    invoke-interface {p1, v1}, Lyt/a;->D(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/ClientViewModel;->p()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move-object v0, p1

    .line 49
    :goto_0
    const/4 p1, 0x1

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method private static final V0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->j()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v0, v1

    .line 22
    :goto_1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/ClientViewModel;->p()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    const-string v2, ""

    .line 33
    .line 34
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/impl/ClientViewModel;->s(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget-object p0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->t0()V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0
.end method

.method private static final W0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lxt/b;

    .line 16
    .line 17
    iget-object p1, p1, Lxt/b;->m:Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 24
    .line 25
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lcu/b;->k(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->m0()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method private final X0()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->p()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v1

    .line 26
    :goto_1
    xor-int/2addr v0, v1

    .line 27
    iget-object v1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->c:Lyt/a;

    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/k;->p()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    move-object v3, v2

    .line 44
    :cond_2
    invoke-interface {v1, v3}, Lyt/a;->D(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/k;->p()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move-object v2, v1

    .line 59
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_5
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->k()Landroidx/lifecycle/LiveData;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/transsion/transfer/impl/b0;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/b0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lcom/transsion/transfer/impl/TransferStatusActivity$f;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->o()Landroidx/lifecycle/LiveData;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lcom/transsion/transfer/impl/c0;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/c0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lcom/transsion/transfer/impl/TransferStatusActivity$f;

    .line 97
    .line 98
    invoke-direct {v2, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->n()Landroidx/lifecycle/LiveData;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v1, Lcom/transsion/transfer/impl/d0;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/d0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 115
    .line 116
    .line 117
    new-instance v2, Lcom/transsion/transfer/impl/TransferStatusActivity$f;

    .line 118
    .line 119
    invoke-direct {v2, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private static final Y0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxt/b;

    .line 6
    .line 7
    iget-object v0, v0, Lxt/b;->j:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->c:Lyt/a;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, p1

    .line 22
    :goto_0
    invoke-interface {v0, v1}, Lyt/a;->D(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final Z0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/k;->p()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->e:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->e:Z

    .line 32
    .line 33
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->p1()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->j1()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->t0()V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    .line 76
    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->t0()V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p0
.end method

.method private static final a1(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v7, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->l()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v4, Lcom/transsion/transfer/impl/f0;

    .line 13
    .line 14
    invoke-direct {v4, p0}, Lcom/transsion/transfer/impl/f0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    move-object v0, v7

    .line 21
    move-object v1, p1

    .line 22
    invoke-static/range {v0 .. v6}, Lcom/transsion/transfer/impl/client/TransferClient$a;->m(Lcom/transsion/transfer/impl/client/TransferClient$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcu/b;->a:Lcu/b;

    .line 26
    .line 27
    invoke-virtual {v7}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcu/b;->t(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static synthetic b0(ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->e1(ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b1(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxt/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lxt/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/transsion/transfer/impl/h0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/h0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

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

.method public static synthetic c0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/k;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->m1(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c1(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->T0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/transsion/transfer/impl/i0;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/i0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/ClientViewModel;->k(Lkotlin/jvm/functions/Function2;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/impl/ClientViewModel;->s(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->c1(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d1(Lcom/transsion/transfer/impl/TransferStatusActivity;ZLjava/lang/String;)Lkotlin/Unit;
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
    const-string v0, "initServerVM: getClientOpenServerEventSource connect res:"

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
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p1, Lcom/transsion/transfer/impl/j0;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/transsion/transfer/impl/j0;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/impl/ClientViewModel;->k(Lkotlin/jvm/functions/Function2;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method public static synthetic e0(Lcom/transsion/transfer/impl/TransferStatusActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->i1(Lcom/transsion/transfer/impl/TransferStatusActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e1(ZLjava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "autoError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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
    const-string v1, "initServerVM: getClientOpenServerEventSource auto retry connect res:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, ", autoError:"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static synthetic f0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->a1(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f1(Lcom/transsion/transfer/impl/TransferStatusActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/transsion/transfer/impl/TransferStatusActivity;->n:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->j()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->t()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcu/b;->u(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->p1()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->j1()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/ClientViewModel;->x()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->j1()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->y()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->A()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->m()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance v0, Lcom/transsion/transfer/impl/p0;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/p0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/impl/ClientViewModel;->z(Lkotlin/jvm/functions/Function1;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->p1()V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->L0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g1(Lcom/transsion/transfer/impl/TransferStatusActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcu/b;->l(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->m()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->e:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lxt/b;

    .line 35
    .line 36
    invoke-virtual {p1}, Lxt/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Lcom/transsion/transfer/impl/g0;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/g0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static synthetic h0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->U0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h1(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->p1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/transfer/impl/TransferStatusActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->o1(Lcom/transsion/transfer/impl/TransferStatusActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final i1(Lcom/transsion/transfer/impl/TransferStatusActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->n1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initData()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->X0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->T0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lxt/b;

    .line 12
    .line 13
    iget-object v0, v0, Lxt/b;->m:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    sget-boolean v1, Lcom/transsion/transfer/impl/TransferStatusActivity;->n:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->n:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->l()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "initData: clientIps:"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->m()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "initData: clientNames:"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method private final initView()V
    .locals 2

    .line 4
    new-instance v0, Lcom/transsion/transfer/impl/TransferStatusActivity$d;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/TransferStatusActivity$d;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 5
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    move-result-object v1

    check-cast v1, Lxt/b;

    iget-object v1, v1, Lxt/b;->m:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->K0()V

    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    move-result-object v0

    check-cast v0, Lxt/b;

    iget-object v0, v0, Lxt/b;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/transfer/impl/z;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/z;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    move-result-object v0

    check-cast v0, Lxt/b;

    iget-object v0, v0, Lxt/b;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/transfer/impl/k0;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/k0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/transfer/impl/TransferStatusActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->f1(Lcom/transsion/transfer/impl/TransferStatusActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j1()V
    .locals 2

    .line 1
    sget-object v0, Leu/b;->a:Leu/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Leu/b;->b()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Leu/a;->a:Leu/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Leu/a;->b()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->C()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lzt/h;->s:Lzt/h$a;

    .line 19
    .line 20
    invoke-virtual {v0}, Lzt/h$a;->a()V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lrt/c;->a:Lrt/c;

    .line 24
    .line 25
    invoke-virtual {v0}, Lrt/c;->j()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lrt/c;->i()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/transsion/transfer/impl/q0;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/transsion/transfer/impl/q0;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/ClientViewModel;->B(Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->h1(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final k1()Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->a:Lcom/transsion/transfer/wifi/create/WifiCreateManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/create/WifiCreateManager;->j()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lrt/c;->a:Lrt/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lrt/c;->f()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->a:Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/connect/WifiConnectionManager;->s()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lrt/c;->e()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object v0
.end method

.method public static synthetic l0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferStatusActivity$g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->l1(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferStatusActivity$g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final l1(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferStatusActivity$g;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/TransferStatusActivity$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/TransferStatusActivity$g;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic m0()Lyt/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/TransferStatusActivity;->q1()Lyt/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final m1(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/k;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/transsion/transfer/impl/k;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsion/transfer/impl/k;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->O0()Lcom/transsion/transfer/impl/TransferStatusActivity$g;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Lcom/transsion/transfer/impl/k;->B(Lcom/transsion/transfer/impl/g;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    invoke-virtual {v0, p0}, Lcom/transsion/transfer/impl/k;->z(I)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->Y0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/wifi/ui/TransferDisconnectTipsDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/ui/TransferDisconnectTipsDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsion/transfer/impl/e0;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/e0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/ui/TransferDisconnectTipsDialog;->r0(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "transfer_disconnect_tips_dialog"

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->b1(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final o1(Lcom/transsion/transfer/impl/TransferStatusActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-boolean p1, Lcom/transsion/transfer/impl/TransferStatusActivity;->n:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/k;->t()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcu/b;->p(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lcu/b;->a:Lcu/b;

    .line 22
    .line 23
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcu/b;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->j1()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 36
    .line 37
    .line 38
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->W0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/Integer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final p1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TransferSelectFragment"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->Q0()Lyt/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v2, Lcom/transsion/transfer/impl/TransferStatusActivity$h;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/transsion/transfer/impl/TransferStatusActivity$h;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2}, Lyt/a;->h(Lyt/b;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v2, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    :cond_1
    move-object v2, v0

    .line 35
    check-cast v2, Lyt/a;

    .line 36
    .line 37
    iput-object v2, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->c:Lyt/a;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/transsion/transfer/impl/ClientViewModel;->w()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/transsion/transfer/impl/k;->w()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    add-int/2addr v3, v4

    .line 58
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/transsion/transfer/impl/ClientViewModel;->r()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lcom/transsion/transfer/impl/k;->s()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    add-int/2addr v4, v5

    .line 75
    invoke-interface {v2, v3, v4}, Lyt/a;->O(II)V

    .line 76
    .line 77
    .line 78
    :cond_2
    const/4 v2, 0x1

    .line 79
    iput-boolean v2, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->d:Z

    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v0}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroidx/fragment/app/w;->l()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    sget v3, Lcom/transsion/transfer/R$id;->fl_select_page_container:I

    .line 112
    .line 113
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroidx/fragment/app/w;->l()V

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void
.end method

.method public static synthetic q0(Lcom/transsion/transfer/impl/TransferStatusActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->g1(Lcom/transsion/transfer/impl/TransferStatusActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final q1()Lyt/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lck/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lck/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lck/a;->a()Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    const-string v1, "null cannot be cast to non-null type com.transsion.transfer.impl.listener.ITransferSelectView"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v0, Lyt/a;

    .line 26
    .line 27
    return-object v0
.end method

.method public static synthetic r0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->Z0(Lcom/transsion/transfer/impl/TransferStatusActivity;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/transfer/impl/TransferStatusActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/impl/TransferStatusActivity;->d1(Lcom/transsion/transfer/impl/TransferStatusActivity;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->V0(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/TransferStatusActivity;->k1()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic v0(Lcom/transsion/transfer/impl/TransferStatusActivity;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/transfer/impl/TransferStatusActivity;->M0(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()Lcom/transsion/transfer/impl/ClientViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferReceivedFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->a:Lcom/transsion/transfer/impl/TransferReceivedFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferSentFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->b:Lcom/transsion/transfer/impl/TransferSentFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic z0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/k;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->P0()Lcom/transsion/transfer/impl/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Q0()Lyt/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lyt/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public R0()Lxt/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxt/b;->c(Landroid/view/LayoutInflater;)Lxt/b;

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

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->R0()Lxt/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->initView(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->initView()V

    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferStatusActivity;->initData()V

    return-void
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->l()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "onCreate: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lxt/b;

    .line 28
    .line 29
    iget-object p1, p1, Lxt/b;->l:Landroid/widget/ImageView;

    .line 30
    .line 31
    const-string v0, "vTopBg"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Luf/c;->e(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/16 v0, 0x80

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lcom/transsion/transfer/impl/TransferStatusActivity$e;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/TransferStatusActivity$e;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
