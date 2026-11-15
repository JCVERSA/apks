.class public Lcom/bytedance/sdk/openadsdk/core/model/HiB;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:I

.field private Sj:I

.field private TKC:J

.field private sP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->sP:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->EjP:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->EjP:I

    return v0
.end method

.method public Sj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->EjP:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->TKC:J

    return-void
.end method

.method public TKC()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->TKC:J

    return-wide v0
.end method

.method public TKC(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->sP:I

    return-void
.end method

.method public sP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj:I

    return v0
.end method

.method public sP(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/HiB;->Sj:I

    return-void
.end method
