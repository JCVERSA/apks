.class public Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/out/BaseExtraInterfaceForHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MBBidRewardVideoHandler"


# instance fields
.field private cancelText:Ljava/lang/String;

.field private confirmContent:Ljava/lang/String;

.field private confirmText:Ljava/lang/String;

.field private confirmTitle:Ljava/lang/String;

.field private controller:Lcom/mbridge/msdk/reward/controller/a;

.field private isConfigAlertDialogTextController:Z

.field private isRewardPlusOpen:Z

.field private isSetListenerController:Z

.field private isSilent:I

.field private listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

.field private placementId:Ljava/lang/String;

.field private unitId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSilent:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isRewardPlusOpen:Z

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSetListenerController:Z

    .line 6
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isConfigAlertDialogTextController:Z

    .line 7
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/a;->b(Landroid/content/Context;)V

    .line 9
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->initData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSilent:I

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isRewardPlusOpen:Z

    .line 14
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSetListenerController:Z

    .line 15
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isConfigAlertDialogTextController:Z

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->initData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkAndCreateController()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->placementId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->initMBBidRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->configController()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private configController()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSetListenerController:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 18
    .line 19
    new-instance v2, Lcom/mbridge/msdk/video/bt/module/orglistener/a;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v2, v3, v4, v5}, Lcom/mbridge/msdk/video/bt/module/orglistener/a;-><init>(Lcom/mbridge/msdk/video/bt/module/orglistener/g;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 34
    .line 35
    new-instance v2, Lcom/mbridge/msdk/video/bt/module/orglistener/a;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

    .line 38
    .line 39
    invoke-direct {v2, v3}, Lcom/mbridge/msdk/video/bt/module/orglistener/a;-><init>(Lcom/mbridge/msdk/video/bt/module/orglistener/g;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSetListenerController:Z

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isRewardPlusOpen:Z

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/reward/controller/a;->f(Z)V

    .line 52
    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isConfigAlertDialogTextController:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->confirmTitle:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->confirmContent:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->confirmText:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v5, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->cancelText:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-boolean v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isConfigAlertDialogTextController:Z

    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method private initData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->placementId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->checkAndCreateController()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private initMBBidRewardVideoHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/mbridge/msdk/reward/controller/a;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/mbridge/msdk/reward/controller/a;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->d(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->e(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/reward/controller/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string v0, "MBBidRewardVideoHandler"

    .line 34
    .line 35
    invoke-static {v0, p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public clearVideoCache()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public getCreativeIdWithUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/reward/controller/a;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public isBidReady()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->checkAndCreateController()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->c(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->checkAndCreateController()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v4, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x2

    .line 16
    const/4 v2, 0x1

    .line 17
    const/16 v3, 0x5e

    .line 18
    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 24
    .line 25
    invoke-virtual {v1, v2, p1, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(ZLjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public playVideoMute(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSilent:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/reward/controller/a;->a(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->confirmTitle:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->confirmContent:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->confirmText:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->cancelText:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isConfigAlertDialogTextController:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/newreward/function/common/MBridgeGlobalCommon;->setAlertDialogText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setExtraInfo(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setRewardPlus(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isRewardPlusOpen:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/reward/controller/a;->f(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setRewardVideoListener(Lcom/mbridge/msdk/video/bt/module/orglistener/g;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->listener:Lcom/mbridge/msdk/video/bt/module/orglistener/g;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSetListenerController:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/controller/a;->u()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 23
    .line 24
    new-instance v2, Lcom/mbridge/msdk/video/bt/module/orglistener/a;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v2, p1, v3, v0}, Lcom/mbridge/msdk/video/bt/module/orglistener/a;-><init>(Lcom/mbridge/msdk/video/bt/module/orglistener/g;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    .line 36
    .line 37
    new-instance v1, Lcom/mbridge/msdk/video/bt/module/orglistener/a;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lcom/mbridge/msdk/video/bt/module/orglistener/a;-><init>(Lcom/mbridge/msdk/video/bt/module/orglistener/g;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->isSetListenerController:Z

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public showFromBid()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->checkAndCreateController()V

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x5e

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method

.method public showFromBid(Ljava/lang/String;)V
    .locals 7

    .line 5
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->checkAndCreateController()V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x5e

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method

.method public showFromBid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->checkAndCreateController()V

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    iget-object v4, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->unitId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x5e

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;->controller:Lcom/mbridge/msdk/reward/controller/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_0
    return-void
.end method
