.class public Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Dq:I

.field private EjP:I

.field private HiB:Z

.field private Jcg:I

.field private Sj:Ljava/lang/String;

.field private TKC:Ljava/lang/String;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private uA:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Dq:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->uA:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public Dq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Dq:I

    .line 2
    .line 3
    return v0
.end method

.method public EjP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->EjP:I

    return v0
.end method

.method public EjP(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->uA:I

    return-void
.end method

.method public HiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->HiB:Z

    .line 2
    .line 3
    return v0
.end method

.method public Jcg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Jcg:I

    .line 2
    .line 3
    return v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->EjP:I

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj:Ljava/lang/String;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->HiB:Z

    return-void
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public TKC(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Dq:I

    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->vS:Ljava/lang/String;

    return-void
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Jcg:I

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC:Ljava/lang/String;

    return-void
.end method

.method public uA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->uA:I

    .line 2
    .line 3
    return v0
.end method

.method public vS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->vS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
