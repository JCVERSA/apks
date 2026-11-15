.class public Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:I

.field private EjP:Z

.field private HiB:I

.field private Jcg:I

.field private Sj:J

.field private TEQ:Z

.field private TKC:J

.field private Ym:La6/a;

.field private sP:J

.field private uA:I

.field private vS:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ:Z

    .line 16
    .line 17
    return-void
.end method

.method private Fmk()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    .line 10
    .line 11
    cmp-long v6, v4, v0

    .line 12
    .line 13
    if-lez v6, :cond_0

    .line 14
    .line 15
    rem-long/2addr v4, v0

    .line 16
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    .line 17
    .line 18
    cmp-long v2, v4, v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public Dq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Dq:I

    .line 2
    .line 3
    return v0
.end method

.method public EjP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->HiB:I

    return v0
.end method

.method public EjP(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->uA:I

    return-void
.end method

.method public HiB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS:I

    .line 2
    .line 3
    return v0
.end method

.method public Jcg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Jcg:I

    .line 2
    .line 3
    return v0
.end method

.method public Sj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    return-wide v0
.end method

.method public Sj(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->HiB:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Fmk()V

    return-void
.end method

.method public Sj(La6/a;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Ym:La6/a;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP:Z

    return-void
.end method

.method public TEQ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ:Z

    .line 2
    .line 3
    return v0
.end method

.method public TKC()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    return-wide v0
.end method

.method public TKC(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Jcg:I

    return-void
.end method

.method public TKC(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Fmk()V

    return-void
.end method

.method public Ym()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP:Z

    .line 2
    .line 3
    return v0
.end method

.method public aa()La6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Ym:La6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP:J

    return-wide v0
.end method

.method public sP(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS:I

    return-void
.end method

.method public sP(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP:J

    return-void
.end method

.method public uA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->uA:I

    .line 2
    .line 3
    return v0
.end method

.method public vS()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj:J

    .line 12
    .line 13
    const-wide/16 v4, 0x64

    .line 14
    .line 15
    mul-long/2addr v2, v4

    .line 16
    div-long/2addr v2, v0

    .line 17
    long-to-int v0, v2

    .line 18
    const/16 v1, 0x64

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method
