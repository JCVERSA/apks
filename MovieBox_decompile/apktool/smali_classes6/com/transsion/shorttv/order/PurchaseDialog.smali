.class public final Lcom/transsion/shorttv/order/PurchaseDialog;
.super Lcom/transsion/shorttv/order/BasePayLoadingDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/shorttv/order/PurchaseDialog;",
        "Lcom/transsion/shorttv/order/BasePayLoadingDialog;",
        "<init>",
        "()V",
        "Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;",
        "it",
        "",
        "D0",
        "(Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)V",
        "x0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;",
        "orderReq",
        "F0",
        "(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)Lcom/transsion/shorttv/order/PurchaseDialog;",
        "d",
        "Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;",
        "Lcom/transsion/shorttv/order/PayLoadingVM;",
        "e",
        "Lkotlin/Lazy;",
        "w0",
        "()Lcom/transsion/shorttv/order/PayLoadingVM;",
        "payVM",
        "shortTvLib_release"
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
.field private d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

.field private final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/shorttv/order/l;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/shorttv/order/l;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->e:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method private static final A0(Lcom/transsion/shorttv/order/PurchaseDialog;ILjava/lang/String;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    new-instance p1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->D0(Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final B0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;->getTradingOrderId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->getProjectName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    .line 23
    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;->isDebug()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    :goto_1
    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/shorttv/order/PayLoadingVM;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method private static final C0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->o0()Lcom/transsion/shorttv/order/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/transsion/shorttv/order/b;->b(Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 17
    .line 18
    .line 19
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private final D0(Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/shorttv/order/c;->a:Lcom/transsion/shorttv/order/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " --> initVM() --> code = "

    .line 24
    .line 25
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " -- message = "

    .line 32
    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/c;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->o0()Lcom/transsion/shorttv/order/b;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v0, v1, p1}, Lcom/transsion/shorttv/order/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method private static final E0()Lcom/transsion/shorttv/order/PayLoadingVM;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic q0()Lcom/transsion/shorttv/order/PayLoadingVM;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/order/PurchaseDialog;->E0()Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic r0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->z0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->y0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lcom/transsion/shorttv/order/PurchaseDialog;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/order/PurchaseDialog;->A0(Lcom/transsion/shorttv/order/PurchaseDialog;ILjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->B0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->C0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/GetPaynicornOrderStatusRespEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final w0()Lcom/transsion/shorttv/order/PayLoadingVM;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 8
    .line 9
    return-object v0
.end method

.method private final x0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->n()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/shorttv/order/i;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/order/i;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/shorttv/order/PurchaseDialog$a;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/shorttv/order/PurchaseDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->l()Landroidx/lifecycle/b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/transsion/shorttv/order/j;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/order/j;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/transsion/shorttv/order/PurchaseDialog$a;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lcom/transsion/shorttv/order/PurchaseDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/transsion/shorttv/order/PayLoadingVM;->m()Landroidx/lifecycle/b0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/transsion/shorttv/order/k;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/order/k;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/transsion/shorttv/order/PurchaseDialog$a;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lcom/transsion/shorttv/order/PurchaseDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private static final y0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/order/PurchaseDialog;->D0(Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final z0(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/shorttv/order/c;->a:Lcom/transsion/shorttv/order/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->getClassTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;->getTradingOrderId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " --> initVM() --> \u521b\u5efa\u652f\u4ed8\u8ba2\u5355\u6210\u529f --> tradingOrderId = "

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/c;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/transsion/shorttv/order/d;->a:Lcom/transsion/shorttv/order/d;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/transsion/shorttv/order/m;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/transsion/shorttv/order/m;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/transsion/shorttv/order/n;

    .line 50
    .line 51
    invoke-direct {v3, p0, p1}, Lcom/transsion/shorttv/order/n;-><init>(Lcom/transsion/shorttv/order/PurchaseDialog;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/shorttv/order/d;->c(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CenterCreateTradingOrderRespEntity;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method


# virtual methods
.method public final F0(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)Lcom/transsion/shorttv/order/PurchaseDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->x0()V

    .line 5
    .line 6
    .line 7
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
    invoke-super {p0, p1, p2}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/order/BasePayLoadingDialog;->n0(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/shorttv/order/PurchaseDialog;->w0()Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/transsion/shorttv/order/PurchaseDialog;->d:Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/order/PayLoadingVM;->j(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
