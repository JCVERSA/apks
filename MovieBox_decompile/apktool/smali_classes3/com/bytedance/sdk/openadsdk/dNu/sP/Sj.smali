.class public Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:I

.field private Fmk:Ljava/lang/String;

.field private HiB:I

.field private Jcg:Ljava/lang/String;

.field private Sj:J

.field private TEQ:J

.field private TKC:Ljava/lang/String;

.field private Ym:Ljava/lang/String;

.field private aa:I

.field private sP:Ljava/lang/String;

.field private uA:Ljava/lang/String;

.field private vS:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj:J

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TEQ:J

    .line 25
    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa:I

    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public Dq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public EjP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP:I

    return v0
.end method

.method public EjP(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa:I

    return-void
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq:Ljava/lang/String;

    return-void
.end method

.method public Fmk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB:I

    return v0
.end method

.method public HiB(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA:Ljava/lang/String;

    return-void
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk:Ljava/lang/String;

    return-void
.end method

.method public Sj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj:J

    return-wide v0
.end method

.method public Sj(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP:I

    return-void
.end method

.method public Sj(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP:Ljava/lang/String;

    return-void
.end method

.method public TEQ()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TEQ:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public TKC(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS:I

    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg:Ljava/lang/String;

    return-void
.end method

.method public Ym()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public aa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa:I

    .line 2
    .line 3
    return v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB:I

    return-void
.end method

.method public sP(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TEQ:J

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC:Ljava/lang/String;

    return-void
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public vS()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS:I

    return v0
.end method

.method public vS(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym:Ljava/lang/String;

    return-void
.end method
