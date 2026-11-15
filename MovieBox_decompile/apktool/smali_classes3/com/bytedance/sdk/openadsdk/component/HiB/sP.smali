.class public Lcom/bytedance/sdk/openadsdk/component/HiB/sP;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field private HiB:I

.field private Jcg:Z

.field private Sj:I

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private sP:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj:I

    .line 8
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->sP:I

    .line 9
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB:I

    .line 10
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->vS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj:I

    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->sP:I

    .line 4
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->sP:I

    .line 2
    .line 3
    return v0
.end method

.method public HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object v0
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->vS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/model/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    return-object v0
.end method

.method public Sj(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Jcg:Z

    return-void
.end method

.method public TKC()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Sj:I

    .line 2
    .line 3
    return v0
.end method

.method public sP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->Jcg:Z

    .line 2
    .line 3
    return v0
.end method

.method public vS()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;->HiB:I

    .line 2
    .line 3
    return v0
.end method
