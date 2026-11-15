.class public final Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/commercialization/task/wheel/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;->a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/commercialization/task/wheel/e$a;->c(Lcom/transsion/commercialization/task/wheel/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/e$a;->e(Lcom/transsion/commercialization/task/wheel/e;Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;->u0(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)Lcom/transsion/commercialization/task/wheel/TreasureWheelStateDialog;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "TreasureWheelStateDialog"

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;->a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/commercialization/task/wheel/e$a;->d(Lcom/transsion/commercialization/task/wheel/e;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;->a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->u0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog$a;->a:Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;

    .line 10
    .line 11
    const-string v1, "spin_now"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;->q0(Lcom/transsion/commercialization/task/wheel/TreasureWheelDialog;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/commercialization/task/wheel/e$a;->b(Lcom/transsion/commercialization/task/wheel/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/transsion/commercialization/task/wheel/e$a;->a(Lcom/transsion/commercialization/task/wheel/e;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
