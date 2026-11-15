.class public final Lcom/transsion/upgradesdk/page/d;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/upgradesdk/page/f;


# direct methods
.method public constructor <init>(Lcom/transsion/upgradesdk/page/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/upgradesdk/page/d;->a:Lcom/transsion/upgradesdk/page/f;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/d;->a:Lcom/transsion/upgradesdk/page/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/upgradesdk/page/f;->h:Lcom/transsion/upgradesdk/bean/UpgradeData;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "upgradeData"

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/upgradesdk/page/d;->a:Lcom/transsion/upgradesdk/page/f;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 22
    .line 23
    .line 24
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object v0
.end method
