.class public Lcom/mbridge/msdk/out/MBBannerView;
.super Landroid/widget/RelativeLayout;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/out/BaseExtraInterfaceForHandler;


# instance fields
.field private bidToken:Ljava/lang/String;

.field private controller:Lcom/mbridge/msdk/mbbanner/controll/a;

.field private hadAttached:Z

.field private isVisible:Z

.field private mBannerAdListener:Lcom/mbridge/msdk/out/BannerAdListener;

.field private mBridgeIds:Lcom/mbridge/msdk/out/MBridgeIds;

.field private unitId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/out/MBBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/out/MBBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    .line 5
    iput-boolean p2, p0, Lcom/mbridge/msdk/out/MBBannerView;->isVisible:Z

    .line 6
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/out/MBBannerView;)Lcom/mbridge/msdk/mbbanner/controll/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private callbackAndReportFail(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/error/b;->g()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Z)V

    .line 17
    .line 18
    .line 19
    const-string p2, "2000047"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p2, p1, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "BannerView"

    .line 31
    .line 32
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lcom/mbridge/msdk/out/BannerAdListener;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Lcom/mbridge/msdk/out/MBBannerView;->mBridgeIds:Lcom/mbridge/msdk/out/MBridgeIds;

    .line 40
    .line 41
    invoke-interface {p1, p2, v0}, Lcom/mbridge/msdk/out/BannerAdListener;->onLoadFailed(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private delayedNotify()V
    .locals 3

    .line 1
    new-instance v0, Lcom/mbridge/msdk/out/MBBannerView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/out/MBBannerView$1;-><init>(Lcom/mbridge/msdk/out/MBBannerView;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xc8

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private updateAttachedState(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public getCreativeIdWithUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->d()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->e()Ljava/lang/String;

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

.method public init(Lcom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lcom/mbridge/msdk/out/MBBannerView;->unitId:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, p2

    .line 15
    :goto_0
    invoke-direct {v0, v1, p3}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->mBridgeIds:Lcom/mbridge/msdk/out/MBridgeIds;

    .line 19
    .line 20
    invoke-static {p3}, Lcom/mbridge/msdk/foundation/tools/t0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-static {p3, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mbridge/msdk/mbbanner/controll/a;-><init>(Lcom/mbridge/msdk/out/MBBannerView;Lcom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/mbridge/msdk/out/MBBannerView;->isVisible:Z

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->c(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 46
    .line 47
    iget-boolean p2, p0, Lcom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public load()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->bidToken:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->unitId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "0"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 28
    .line 29
    const-string v2, ""

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v2, Lcom/mbridge/msdk/foundation/error/b;

    .line 36
    .line 37
    const v3, 0xd6daa

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v1, v2}, Lcom/mbridge/msdk/out/MBBannerView;->callbackAndReportFail(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/out/MBBannerView;->bidToken:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->unitId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "1"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/mbridge/msdk/out/MBBannerView;->hadAttached:Z

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 42
    .line 43
    invoke-virtual {v1, p1, v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    .line 48
    .line 49
    const v2, 0xd6da3

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v2}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v1, p1}, Lcom/mbridge/msdk/out/MBBannerView;->callbackAndReportFail(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    .line 63
    .line 64
    const v2, 0xd6daa

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, v2}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v1, p1}, Lcom/mbridge/msdk/out/MBBannerView;->callbackAndReportFail(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/out/MBBannerView;->updateAttachedState(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/out/MBBannerView;->updateAttachedState(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->bidToken:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->g()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->bidToken:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->h()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, p1

    .line 10
    :goto_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->isVisible:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBannerView;->delayedNotify()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->c(Z)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    iput-boolean v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->isVisible:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/mbridge/msdk/out/MBBannerView;->delayedNotify()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    sget-boolean p1, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->c(Z)V

    .line 30
    .line 31
    .line 32
    :cond_3
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lcom/mbridge/msdk/out/BannerAdListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lcom/mbridge/msdk/out/BannerAdListener;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/out/BannerAdListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/controll/a;->i()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setAllowShowCloseBtn(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setBannerAdListener(Lcom/mbridge/msdk/out/BannerAdListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/out/MBBannerView;->mBannerAdListener:Lcom/mbridge/msdk/out/BannerAdListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/out/BannerAdListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
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
    iget-object v1, p0, Lcom/mbridge/msdk/out/MBBannerView;->unitId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setRefreshTime(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->b(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public updateBannerSize(Lcom/mbridge/msdk/out/BannerSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBBannerView;->controller:Lcom/mbridge/msdk/mbbanner/controll/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/out/BannerSize;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
