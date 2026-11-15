.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private volatile Dq:J

.field private final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private final HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile Jcg:J

.field final Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private TKC:Landroid/widget/FrameLayout;

.field private Ym:J

.field private Zq:Ljava/lang/String;

.field private aa:J

.field private dNu:Z

.field private final sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private uA:Ljava/lang/String;

.field private uvD:Z

.field private volatile vS:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 4

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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Ym:J

    .line 29
    .line 30
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->aa:J

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Zq:Ljava/lang/String;

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uvD:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->vS:J

    return-wide v0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg:J

    return-wide v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Ym:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Zq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uvD:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Ym:J

    return-wide v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->aa:J

    return-wide p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg:J

    return-wide p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    return-object p0
.end method

.method private sef()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->efv()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    if-nez v4, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$3;

    .line 24
    .line 25
    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    .line 26
    .line 27
    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$4;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->aa:J

    return-wide v0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef()V

    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Mts()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sef:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->FPG()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public EjP()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uvD:Z

    return v0
.end method

.method public Fmk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public HiB()V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->vS:J

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method

.method public Jcg()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TEQ()V

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Mts()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Fmk:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->FPG()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public Sj()V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->dNu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->dNu:Z

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP()V

    return-void
.end method

.method public Sj(I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public TEQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public TKC()V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cF()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;)V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->efv()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;)V

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj()V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Landroid/view/View;)V

    return-void
.end method

.method public Ym()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public aa()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method sP()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Zq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC:Landroid/widget/FrameLayout;

    return-void
.end method

.method public uA()V
    .locals 5

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Jcg:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->uA:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Zq:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public vS()V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq:J

    return-void
.end method
