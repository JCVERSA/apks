.class public Lcom/bytedance/sdk/openadsdk/core/kF;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static Sj:Lcom/bytedance/sdk/openadsdk/core/kF;


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

.field private HiB:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field private vS:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/core/kF;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj:Lcom/bytedance/sdk/openadsdk/core/kF;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kF;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/kF;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj:Lcom/bytedance/sdk/openadsdk/core/kF;

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj:Lcom/bytedance/sdk/openadsdk/core/kF;

    return-object v0
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->HiB:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->vS:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    .line 2
    .line 3
    return-object v0
.end method

.method public Jcg()Lcom/bytedance/sdk/openadsdk/core/model/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->vS:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->HiB:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-void
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object v0
.end method

.method public vS()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->HiB:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kF;->vS:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    .line 11
    .line 12
    return-void
.end method
