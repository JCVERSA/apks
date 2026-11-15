.class public Lcom/bytedance/sdk/openadsdk/component/Jcg;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;


# instance fields
.field private Dq:I

.field private final EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private HiB:I

.field private Jcg:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

.field private final Sj:Landroid/content/Context;

.field private final TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

.field private final TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

.field private Ym:Z

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/RiZ<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uA:I

.field private vS:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->HiB:I

    .line 13
    .line 14
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->uA:I

    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/ley;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ley;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj:Landroid/content/Context;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj:Landroid/content/Context;

    .line 37
    .line 38
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 43
    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 51
    .line 52
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->uA:I

    return p1
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/Jcg;
    .locals 1

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Jcg;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/ley;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    return-object p0
.end method

.method private Sj()V
    .locals 2

    .line 21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;

    const-string v1, "tryGetAppOpenAdFromCache"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/Jcg;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V
    .locals 10

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->TKC()I

    move-result v0

    .line 28
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->EjP()I

    move-result v1

    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v0, v4, :cond_0

    if-ne v1, v3, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->HiB:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/vS;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;)V

    .line 33
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Ym:Z

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    invoke-static {p1, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/core/model/ley;)V

    :cond_0
    return-void

    :cond_1
    if-ne v0, v4, :cond_6

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Jcg:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    const/4 v2, 0x0

    const/16 v5, 0x65

    if-eqz v0, :cond_3

    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/EjP;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v7

    if-ne v1, v5, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_0
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/component/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 37
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Jcg:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    invoke-interface {v6, v0}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-ne v1, v5, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;J)V

    return-void

    :cond_4
    if-ne v1, v3, :cond_9

    .line 40
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/core/model/ley;)V

    .line 41
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Ym:Z

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 43
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ODI()Z

    move-result v0

    if-nez v0, :cond_5

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->HiB:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;)V

    return-void

    :cond_6
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_9

    .line 49
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Jcg:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    if-eqz v1, :cond_8

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->vS()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Jcg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    .line 51
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-ne v0, v2, :cond_9

    .line 52
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->uA:I

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Dq:I

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(II)V

    :cond_9
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Z)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/Jcg$3;

    invoke-direct {v2, p0, p3, p1, p4}, Lcom/bytedance/sdk/openadsdk/component/Jcg$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$TKC;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/Jcg$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/Jcg;ZLcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$sP;)V

    return-void
.end method

.method private Sj(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->HiB:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg(I)V

    .line 23
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :cond_1
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->HiB:I

    return p0
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/AdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->uA:I

    .line 4
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ib;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    .line 6
    iput v1, v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->EjP:I

    const/4 v1, 0x2

    .line 7
    iput v1, v2, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V

    const/4 v0, 0x3

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)I
    .locals 0
    .param p1    # Lcom/bytedance/sdk/openadsdk/AdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 4

    .line 54
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    const/16 v0, 0x66

    const/16 v1, 0x2712

    .line 57
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p1, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IIILjava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/vS;I)V
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/AdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-gtz p3, :cond_1

    const/16 p3, 0xdac

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    iput-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    .line 10
    instance-of p1, p2, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    if-eqz p1, :cond_2

    .line 11
    check-cast p2, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Jcg:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->HiB:I

    .line 13
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Dq:I

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    if-nez p1, :cond_3

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->vS:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj:Z

    if-nez p1, :cond_5

    .line 19
    new-instance p1, Lcom/bytedance/sdk/component/utils/LqL;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    int-to-long p2, p3

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj()V

    :cond_5
    return-void
.end method
