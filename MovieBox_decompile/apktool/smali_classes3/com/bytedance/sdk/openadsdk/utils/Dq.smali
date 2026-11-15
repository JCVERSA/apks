.class public Lcom/bytedance/sdk/openadsdk/utils/Dq;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/Fmk;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;
    }
.end annotation


# instance fields
.field private Dq:Z

.field private EjP:J

.field private HiB:J

.field private final Jcg:Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;

.field private Sj:Landroid/view/View;

.field private final TKC:Landroid/os/Handler;

.field private final sP:Landroid/app/Activity;

.field private final uA:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private vS:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ILcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->uA:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP:Landroid/app/Activity;

    .line 15
    .line 16
    new-instance p1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->TKC:Landroid/os/Handler;

    .line 26
    .line 27
    int-to-long p1, p2

    .line 28
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 35
    .line 36
    return-void
.end method

.method private EjP()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;->Sj()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method private HiB()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Dq:Z

    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB:J

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->TKC:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private Jcg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    if-eq v1, v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)Lcom/bytedance/sdk/openadsdk/utils/Fmk;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->liH()I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    new-instance p0, Lcom/bytedance/sdk/openadsdk/utils/Dq$1;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq$1;-><init>()V

    return-object p0

    :cond_0
    const/16 v1, 0x32

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/Dq;

    invoke-direct {v1, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/Dq;-><init>(Landroid/app/Activity;ILcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)V

    return-object v1
.end method

.method private Sj(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private sP(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    if-eqz v1, :cond_2

    float-to-double v1, p1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpl-double p1, v1, v3

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private vS()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP:Landroid/app/Activity;

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP:Landroid/app/Activity;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v0, :cond_6

    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP(Landroid/view/View;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 52
    .line 53
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    check-cast v0, Landroid/view/ViewGroup;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-lez v0, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj:Landroid/view/View;

    .line 66
    .line 67
    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->sP(Landroid/view/View;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;->sP()V

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Jcg()V

    .line 93
    .line 94
    .line 95
    :cond_6
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    .line 97
    .line 98
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    .line 8
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Dq:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(J)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->uA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB()V

    return-void
.end method

.method public TKC()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->TKC:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public sP()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Dq:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->HiB:J

    sub-long/2addr v0, v4

    .line 4
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Dq:Z

    .line 6
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->EjP:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->vS()V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Dq;->TKC:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 9
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
