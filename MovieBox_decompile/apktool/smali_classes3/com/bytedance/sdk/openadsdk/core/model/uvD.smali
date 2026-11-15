.class public Lcom/bytedance/sdk/openadsdk/core/model/uvD;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:D

.field private HiB:Z

.field private Sj:Ljava/lang/String;

.field private TKC:I

.field private sP:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public EjP()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->EjP:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public HiB()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC:I

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->vS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP:I

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj:Ljava/lang/String;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->HiB:Z

    return-void
.end method

.method public TKC()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC:I

    .line 2
    .line 3
    return v0
.end method

.method public sP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP:I

    return v0
.end method

.method public sP(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC:I

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->vS:Ljava/lang/String;

    return-void
.end method

.method public vS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->HiB:Z

    .line 2
    .line 3
    return v0
.end method
