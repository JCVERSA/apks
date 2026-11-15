.class public final Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;
.super Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u001f\u0010\u000f\u001a\u00020\u00042\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J!\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0003J)\u0010\'\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010\u001d2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010/\u001a\u00020\u00042\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100R\u0018\u00103\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0018\u00106\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u00109\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u001b\u0010D\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010<\u001a\u0004\u0008B\u0010CR\u0016\u0010G\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0016\u0010M\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010J\u00a8\u0006N"
    }
    d2 = {
        "Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;",
        "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;",
        "<init>",
        "()V",
        "",
        "O0",
        "Lcom/transsion/payment/lib/bean/CreateOrderRes;",
        "createOrderRes",
        "L0",
        "(Lcom/transsion/payment/lib/bean/CreateOrderRes;)V",
        "observe",
        "H0",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "Lcom/transsion/payment/lib/bean/CheckPaymentBean;",
        "orderCheckResult",
        "J0",
        "(Lcom/tn/lib/net/bean/BaseDto;)V",
        "",
        "errorCode",
        "",
        "msg",
        "I0",
        "(ILjava/lang/String;)V",
        "P0",
        "(Ljava/lang/String;I)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroy",
        "viewBg",
        "Landroid/widget/ProgressBar;",
        "viewLoad",
        "Landroid/widget/TextView;",
        "tvLoading",
        "o0",
        "(Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V",
        "Lcom/transsion/payment/lib/b;",
        "callback",
        "R0",
        "(Lcom/transsion/payment/lib/b;)V",
        "Lcom/transsion/payment/lib/bean/CreateOrderReq;",
        "orderRequest",
        "S0",
        "(Lcom/transsion/payment/lib/bean/CreateOrderReq;)V",
        "c",
        "Lcom/transsion/payment/lib/bean/CreateOrderRes;",
        "mCreateOrderRes",
        "d",
        "Lcom/transsion/payment/lib/bean/CreateOrderReq;",
        "mCreateOrderReq",
        "e",
        "Lcom/transsion/payment/lib/b;",
        "mCallback",
        "Lcom/transsion/payment/lib/PaymentService;",
        "f",
        "Lkotlin/Lazy;",
        "E0",
        "()Lcom/transsion/payment/lib/PaymentService;",
        "paymentService",
        "Lcom/transsion/payment/lib/dialog/a;",
        "g",
        "F0",
        "()Lcom/transsion/payment/lib/dialog/a;",
        "viewModel",
        "h",
        "I",
        "retryCount",
        "",
        "i",
        "J",
        "initialDelayMillis",
        "j",
        "currentDelay",
        "LibPayment_psRelease"
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
.field private c:Lcom/transsion/payment/lib/bean/CreateOrderRes;

.field private d:Lcom/transsion/payment/lib/bean/CreateOrderReq;

.field private e:Lcom/transsion/payment/lib/b;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private h:I

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/payment/lib/dialog/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/payment/lib/dialog/b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->f:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    const-class v1, Lcom/transsion/payment/lib/dialog/a;

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$2;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$3;

    .line 32
    .line 33
    invoke-direct {v3, v0, p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->g:Lkotlin/Lazy;

    .line 41
    .line 42
    const-wide/16 v0, 0xbb8

    .line 43
    .line 44
    iput-wide v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->i:J

    .line 45
    .line 46
    iput-wide v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->j:J

    .line 47
    .line 48
    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->J0(Lcom/tn/lib/net/bean/BaseDto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lcom/transsion/payment/lib/bean/CreateOrderRes;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->L0(Lcom/transsion/payment/lib/bean/CreateOrderRes;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->P0(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic D0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->j:J

    .line 2
    .line 3
    return-void
.end method

.method private final E0()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/payment/lib/PaymentService;

    .line 8
    .line 9
    return-object v0
.end method

.method private final F0()Lcom/transsion/payment/lib/dialog/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/payment/lib/dialog/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final G0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lhx/e;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lhx/e;->a()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x3ea

    .line 13
    .line 14
    const-string v0, "observe() --> \u53d6\u6d88\u652f\u4ed8"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->I0(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " --> observe() --> paynicorn result --> \u8f6e\u8be2Paynicorn\u652f\u4ed8\u7ed3\u679c ...."

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->H0()V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method private final H0()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$orderCheck4Paynicorn$1;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final I0(ILjava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

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
    const-string v1, " --> payFail() --> msg = "

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->F0()Lcom/transsion/payment/lib/dialog/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/transsion/payment/lib/dialog/a;->b()Lcom/transsion/payment/lib/b;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/16 v7, 0x8

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-static/range {v2 .. v8}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method private final J0(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

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
    const-string v1, " --> orderCheck4Paynicorn() --> paynicorn \u53d1\u8d27\u6210\u529f"

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
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->F0()Lcom/transsion/payment/lib/dialog/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/transsion/payment/lib/dialog/a;->b()Lcom/transsion/payment/lib/b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/transsion/payment/lib/bean/CheckPaymentBean;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/transsion/payment/lib/bean/CheckPaymentBean;->getAddCoin()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/transsion/payment/lib/bean/CheckPaymentBean;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/transsion/payment/lib/bean/CheckPaymentBean;->getBalanceCoin()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    :cond_1
    const-string p1, ""

    .line 72
    .line 73
    :cond_2
    iget-object v2, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->c:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/transsion/payment/lib/bean/CreateOrderRes;->getTradingOrderId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v2, 0x0

    .line 83
    :goto_1
    invoke-interface {v0, v1, p1, v2}, Lcom/transsion/payment/lib/b;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 93
    .line 94
    .line 95
    :cond_5
    return-void
.end method

.method private static final K0()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/payment/lib/PaymentService;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final L0(Lcom/transsion/payment/lib/bean/CreateOrderRes;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

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
    const-string v1, " --> requestPay() --> \u8bf7\u6c42\u5230\u6570\u636e --> realPay() --> \u6253\u5f00\u7aef\u5185WebView --> \u5c55\u793a\u6536\u94f6\u53f0"

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
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->c:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 28
    .line 29
    sget-object v0, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    instance-of v2, v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    new-instance v2, Lcom/transsion/payment/lib/dialog/d;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/transsion/payment/lib/dialog/d;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Lcom/transsion/payment/lib/dialog/e;

    .line 49
    .line 50
    invoke-direct {v3, p0}, Lcom/transsion/payment/lib/dialog/e;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/payment/lib/PaymentClientHelper;->e(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private static final M0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;ILjava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->I0(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final N0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->H0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final O0()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

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
    const-string v1, " --> requestPay() --> \u8bf7\u6c42\u63a5\u53e3\u521b\u5efa\u8ba2\u5355...."

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
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v5, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$requestPay$1;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {v5, p0, v0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$requestPay$1;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final P0(Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->h:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->I0(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->h:I

    .line 13
    .line 14
    sget-object p2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->h:I

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " --> retry() --> msg = "

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " --> retryCount = "

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p2, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v3, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-direct {v3, p0, p1, p2, v1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;JLkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    const/4 v4, 0x3

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method static synthetic Q0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/16 p2, 0x3ef

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->P0(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final observe()V
    .locals 7

    .line 1
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    .line 3
    new-instance v6, Lcom/transsion/payment/lib/dialog/c;

    .line 4
    .line 5
    invoke-direct {v6, p0}, Lcom/transsion/payment/lib/dialog/c;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 17
    .line 18
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 25
    .line 26
    const-class v1, Lhx/e;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v1, "getName(...)"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lhx/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->G0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;Lhx/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->N0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->K0()Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->M0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;ILjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic u0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic v0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lcom/transsion/payment/lib/bean/CreateOrderReq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->d:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lcom/transsion/payment/lib/bean/CreateOrderRes;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->c:Lcom/transsion/payment/lib/bean/CreateOrderRes;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)Lcom/transsion/payment/lib/PaymentService;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->E0()Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->I0(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final R0(Lcom/transsion/payment/lib/b;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->e:Lcom/transsion/payment/lib/b;

    .line 7
    .line 8
    return-void
.end method

.method public final S0(Lcom/transsion/payment/lib/bean/CreateOrderReq;)V
    .locals 1

    .line 1
    const-string v0, "orderRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->d:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 7
    .line 8
    return-void
.end method

.method public o0(Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const-string v0, "viewLoad"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tvLoading"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;->o0(Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    sget v0, Lcom/transsion/wrapperad/R$drawable;->ad_shape_dp_8:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget v0, Lcom/tn/lib/widget/R$color;->color_d6101114:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget p3, Lcom/tn/lib/widget/R$color;->base_color_999999:I

    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " --> onCreate()"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->e:Lcom/transsion/payment/lib/b;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->d:Lcom/transsion/payment/lib/bean/CreateOrderReq;

    .line 8
    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->F0()Lcom/transsion/payment/lib/dialog/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/transsion/payment/lib/dialog/a;->b()Lcom/transsion/payment/lib/b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->F0()Lcom/transsion/payment/lib/dialog/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->e:Lcom/transsion/payment/lib/b;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/dialog/a;->c(Lcom/transsion/payment/lib/b;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->observe()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->O0()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
