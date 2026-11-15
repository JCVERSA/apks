.class public Lcom/bytedance/sdk/openadsdk/core/model/RiZ;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:J

.field private HiB:Ljava/lang/String;

.field private Sj:J

.field private TKC:J

.field private sP:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x2710

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP:J

    .line 9
    .line 10
    const-wide/16 v0, 0xa

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC:J

    .line 13
    .line 14
    const-wide/16 v0, 0x14

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP:J

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->HiB:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public EjP()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP:J

    return-wide v0
.end method

.method public EjP(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x14

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP:J

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP:J

    return-void
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->HiB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj:J

    return-wide v0
.end method

.method public Sj(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj:J

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->HiB:Ljava/lang/String;

    return-void
.end method

.method public TKC()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC:J

    return-wide v0
.end method

.method public TKC(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC:J

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC:J

    return-void
.end method

.method public sP()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP:J

    return-wide v0
.end method

.method public sP(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x14

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP:J

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP:J

    return-void
.end method
