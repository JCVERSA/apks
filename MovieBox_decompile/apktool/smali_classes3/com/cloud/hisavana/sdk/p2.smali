.class public final Lcom/cloud/hisavana/sdk/p2;
.super Lcom/cloud/hisavana/sdk/F;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/p2$a;
    }
.end annotation


# instance fields
.field i:Lcom/cloud/hisavana/sdk/t;

.field private volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field k:Lcom/cloud/hisavana/sdk/p2$a;

.field private l:Landroid/view/ViewGroup;

.field private m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private n:Z

.field private o:Ljava/lang/ref/WeakReference;

.field public p:J

.field public q:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/F;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->o:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/p2;->p:J

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->q:Ljava/lang/Integer;

    .line 26
    .line 27
    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TranBanner"

    .line 6
    .line 7
    const-string v2, "postDelayRefresh"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->S()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselCount()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->q:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :catchall_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->k:Lcom/cloud/hisavana/sdk/p2$a;

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    new-instance v0, Lcom/cloud/hisavana/sdk/p2$a;

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/p2;->q:Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-direct {v0, p0, v1, v2}, Lcom/cloud/hisavana/sdk/p2$a;-><init>(Lcom/cloud/hisavana/sdk/p2;Landroid/os/Looper;I)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->k:Lcom/cloud/hisavana/sdk/p2$a;

    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselTime()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    int-to-long v0, v0

    .line 71
    const-wide/16 v2, 0x3e8

    .line 72
    .line 73
    mul-long/2addr v0, v2

    .line 74
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/p2;->p:J

    .line 75
    .line 76
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/p2;->k:Lcom/cloud/hisavana/sdk/p2$a;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method private G()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/t;-><init>(Lcom/cloud/hisavana/sdk/p2;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->i:Lcom/cloud/hisavana/sdk/t;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic I(Lcom/cloud/hisavana/sdk/p2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/hisavana/sdk/t3;->a:Lcom/cloud/hisavana/sdk/t3;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/t3;->j(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    instance-of v2, v1, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->n(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private R()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->i:Lcom/cloud/hisavana/sdk/t;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/p3;->w()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/p3;->t()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/t;->g(Landroid/view/ViewGroup;ZZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "TranBanner"

    .line 43
    .line 44
    const-string v2, "no ad show, set visible gone"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/16 v1, 0x8

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method private S()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselTime()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCarouselCount()Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-le v0, v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    return v1
.end method

.method private T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->k:Lcom/cloud/hisavana/sdk/p2$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p2$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "loadNextAD"

    .line 13
    .line 14
    const-string v2, "TranBanner"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 20
    .line 21
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->o:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v3, "loadNextAD loadAdFromAutoRefresh true"

    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->loadAdFromAutoRefresh(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "loadNextAD weakTBannerView is null ,not show"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public H(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->setCloseTypeUsedForTrack(Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->Q()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public J(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->o:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method public K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method

.method public L(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->u(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method

.method public M(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->G()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 10
    .line 11
    const-string v0, "TranBanner"

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->r()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->z()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->R()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "ad not condition to use"

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/p2;->K(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v1, "bannerView or mAdBean = null"

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public N(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/p2;->n:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->E()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->setCloseTypeUsedForTrack(Ljava/lang/Integer;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->Q()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method V()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->f()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->F()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/F;->k(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->s()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/p2;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->o:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/p2;->F()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->x(Lcom/cloud/hisavana/sdk/F;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/p2;->n:Z

    .line 23
    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/F;->f:Ljava/util/List;

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p2;->o:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    const-string p2, "TranBanner"

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/F;->k(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/p2;->M(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/p2;->O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "tBannerView is null ,not show"

    .line 66
    .line 67
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "weakTBannerView is null ,not show"

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_FETCHED_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/p2;->b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/F;->d(Ljava/util/List;Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/F;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->i:Lcom/cloud/hisavana/sdk/t;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/t;->c()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->l:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/p2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->k:Lcom/cloud/hisavana/sdk/p2$a;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/p2;->k:Lcom/cloud/hisavana/sdk/p2$a;

    .line 37
    .line 38
    :cond_2
    return-void
.end method
