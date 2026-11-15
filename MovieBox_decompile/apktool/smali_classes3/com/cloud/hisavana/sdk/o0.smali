.class public Lcom/cloud/hisavana/sdk/o0;
.super Lcom/cloud/hisavana/sdk/e4;
.source "source.java"


# instance fields
.field private e:Lcom/cloud/hisavana/sdk/common/http/a;

.field private f:Lcom/cloud/hisavana/sdk/p3;

.field private g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field h:Landroidx/collection/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/e4;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/b;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->h:Landroidx/collection/b;

    .line 10
    .line 11
    return-void
.end method

.method private A(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->s()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->u(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "start to load materials"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/o0;->t(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/o0;->D()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/cloud/hisavana/sdk/i4;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/i4;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/cloud/hisavana/sdk/o0$c;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/o0$c;-><init>(Lcom/cloud/hisavana/sdk/o0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i4;->c(Lcom/cloud/hisavana/sdk/i4$f;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 38
    .line 39
    sget-object v3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 40
    .line 41
    new-instance v4, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/p3;->e()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget v2, p0, Lcom/cloud/hisavana/sdk/e4;->d:I

    .line 57
    .line 58
    invoke-virtual {v0, p1, v1, v5, v2}, Lcom/cloud/hisavana/sdk/i4;->e(Ljava/util/List;III)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private synthetic B()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/o0;->z(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private C(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->z(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "s_ma_d_s"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private E(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "s_online_status"

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string v1, "s_online_failed_reason_v2"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/util/f0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :catchall_0
    :cond_0
    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/e4;->c:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 6
    .line 7
    new-instance v1, Lcom/cloud/hisavana/sdk/l0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/l0;-><init>(Lcom/cloud/hisavana/sdk/o0;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    .line 17
    .line 18
    new-instance v1, Lcom/cloud/hisavana/sdk/m0;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/m0;-><init>(Lcom/cloud/hisavana/sdk/o0;)V

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lcom/cloud/hisavana/sdk/e4;->c:I

    .line 24
    .line 25
    int-to-long v2, v2

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f(Ljava/lang/Runnable;J)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "s_online_status"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v1, "s_online_failed_reason_v2"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/f0;->j(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/o0;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/o0;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/o0;)Lcom/cloud/hisavana/sdk/p3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->w(Lcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private j(Landroidx/collection/b;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroidx/collection/b;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "s_online_return_filter"

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/util/f0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/o0;Landroidx/collection/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->j(Landroidx/collection/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/o0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/o0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/o0;->r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/o0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/o0;->s(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/o0;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/o0;->t(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/o0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->A(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "online ad fetch failed, error="

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/o0;->t(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->E(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4$a;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/e4$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/o0;->h:Landroidx/collection/b;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v1, p1, v0, v3, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const-string p2, "s_ma_d_fr"

    .line 22
    .line 23
    invoke-static {v0, p2, p1}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v0, p2}, Lcom/cloud/hisavana/sdk/common/util/f0;->b(Ljava/util/concurrent/ConcurrentHashMap;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    :goto_0
    const-string p2, "s_ma_d_s"

    .line 33
    .line 34
    invoke-static {v0, p2, p1}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private s(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getTestResponse()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-virtual {p1, p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setTestResponse(Ljava/lang/Boolean;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAbTest()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p5

    .line 12
    invoke-virtual {p1, p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAbTest(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getExtInfo()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    invoke-virtual {p1, p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setExtInfo(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAdSeatType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdSeatType(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getSecondPrice()Ljava/lang/Double;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAuctionSecondPrice(Ljava/lang/Double;)V

    .line 37
    .line 38
    .line 39
    sget-object p2, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 40
    .line 41
    const/4 p5, 0x0

    .line 42
    invoke-virtual {p2, p1, p5}, Lcom/cloud/hisavana/sdk/common/util/b;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setUuid(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getFullScreenFlag()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setFullScreenFlag(Ljava/lang/Integer;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getTrackingUrlBool()Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOptimizeTracking(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdRequestVer(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->F(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getScales()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setScales(Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    const/4 p2, 0x1

    .line 85
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setSource(I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private t(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    invoke-static {}, Lc7/b;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const-string p1, ", codeSeatId="

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->i()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    .line 42
    const-string p1, ", adCreativeId="

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "OnlineAdNode"

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private u(Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 5
    .line 6
    invoke-static {}, Lc7/b;->l()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "online ad fetch succeed: "

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v5, "adCreativeId: "

    .line 48
    .line 49
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, "\uff0cis_offline_ad: "

    .line 60
    .line 61
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v5, ", source:"

    .line 72
    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p0, v0, v2}, Lcom/cloud/hisavana/sdk/o0;->t(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    :catch_0
    :cond_2
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/o0;->G()V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4$a;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-interface {v0, p1, v2}, Lcom/cloud/hisavana/sdk/e4$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    return-void

    .line 114
    :cond_5
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_AD_CREATIVIES_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 115
    .line 116
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->q(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private v(Lcom/cloud/hisavana/sdk/p3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->e()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->i()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->a()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->j()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->k()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ld7/b;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ld7/b;->c()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameScene:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->l()Ld7/b;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ld7/b;->a()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->extInfo:Ljava/util/Map;

    .line 77
    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->y()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->supportEw:Z

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestTs:Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->q()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->a()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->o()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mTriggerNetState:I

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_1

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->webPageReqInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 133
    .line 134
    :cond_1
    return-object v0
.end method

.method private static w(Lcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lc7/b;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/x0;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/p3;->e()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/p3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/p3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/x0;->d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/x0;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return-object p0

    .line 41
    :catchall_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/x0;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private synthetic x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->e()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/o0;->C(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/o0;->z(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method static synthetic y(Lcom/cloud/hisavana/sdk/o0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->u(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private z(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->E(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/e4$a;->c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/cloud/hisavana/sdk/e4;->b:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->v(Lcom/cloud/hisavana/sdk/p3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/o0;->g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 11
    .line 12
    invoke-static {}, Lc7/b;->l()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget v3, Lcom/cloud/sdk/commonutil/R$string;->ssp_log_msg3:I

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, v0}, Lcom/cloud/sdk/commonutil/util/q;->b(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string v0, "start load online ad."

    .line 33
    .line 34
    invoke-direct {p0, v0, v2}, Lcom/cloud/hisavana/sdk/o0;->t(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0;->f:Lcom/cloud/hisavana/sdk/p3;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v3, "2"

    .line 48
    .line 49
    invoke-virtual {v1, v0, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/o0;->F()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o0;->v(Lcom/cloud/hisavana/sdk/p3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->e()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->i()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v4, "fetch from server, impBean="

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {p0, v3, v2}, Lcom/cloud/hisavana/sdk/o0;->t(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/cloud/hisavana/sdk/common/http/a;

    .line 92
    .line 93
    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/common/http/a;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v3, Lcom/cloud/hisavana/sdk/o0$b;

    .line 97
    .line 98
    const/4 v6, 0x1

    .line 99
    move-object v4, v3

    .line 100
    move-object v5, p0

    .line 101
    move-object v7, v1

    .line 102
    move-object v10, v0

    .line 103
    invoke-direct/range {v4 .. v10}, Lcom/cloud/hisavana/sdk/o0$b;-><init>(Lcom/cloud/hisavana/sdk/o0;ZLjava/lang/String;ILcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/http/a;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Lcom/cloud/hisavana/sdk/o0$a;

    .line 111
    .line 112
    invoke-direct {v3, p0, p1, v0}, Lcom/cloud/hisavana/sdk/o0$a;-><init>(Lcom/cloud/hisavana/sdk/o0;Lcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/http/a;->o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {}, Lc7/b;->l()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/http/a;->k(Z)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/g1;->q()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/http/a;->q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/http/a;->n(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/http/a;->j(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Lcom/cloud/hisavana/sdk/common/http/a;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o0;->e:Lcom/cloud/hisavana/sdk/common/http/a;

    .line 148
    .line 149
    if-eqz p1, :cond_2

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/http/d;->b()V

    .line 152
    .line 153
    .line 154
    :cond_2
    return-void
.end method
