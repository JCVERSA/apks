.class public Lcom/bytedance/sdk/openadsdk/component/reward/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lw5/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;
    }
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

.field private EjP:Z

.field private HiB:Z

.field private final Jcg:Lb6/a;

.field private final Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

.field private TKC:J

.field private sP:Z

.field private final vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->sP:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TKC:J

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->EjP:Z

    .line 13
    .line 14
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$1;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/TKC;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lb6/a;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-wide/16 v3, 0xa

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, La6/b;->K()D

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    double-to-long v5, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-wide v5, v3

    .line 38
    :goto_0
    cmp-long v0, v5, v0

    .line 39
    .line 40
    if-gtz v0, :cond_1

    .line 41
    .line 42
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, La6/b;->n(D)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-wide v3, v5

    .line 49
    :goto_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    .line 50
    .line 51
    const-wide/16 v0, 0x3e8

    .line 52
    .line 53
    mul-long/2addr v3, v0

    .line 54
    invoke-direct {p1, v3, v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;-><init>(JLb6/a;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public Dq()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sef()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public EjP()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TKC()V

    return-void
.end method

.method public EjP(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public Fmk()Lw5/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public HiB()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Zq()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public Jcg()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public Sj()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->TEQ()V

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lb6/a;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 9
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(J)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(J)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    return-void
.end method

.method public Sj(Lw5/b$a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(Lw5/b$b;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(Lw5/b$b;)V

    return-void
.end method

.method public Sj(Lw5/b$d;)V
    .locals 0

    .line 18
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->sP:Z

    return-void
.end method

.method public Sj(ZI)V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TKC()V

    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->EjP:Z

    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
    .locals 4

    .line 11
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Dq()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->EjP:Z

    .line 12
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(J)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lb6/a;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lb6/a;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->uA()V

    const/4 p1, 0x1

    return p1
.end method

.method public TEQ()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->sP(Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v0, v1, v2, v3}, Le6/a;->a(JJ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public TKC()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->Ym()V

    return-void
.end method

.method public TKC(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public TKC(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public TzV()Lb6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lb6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ym()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public Zq()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB:Z

    .line 2
    .line 3
    return v0
.end method

.method public aa()Lv5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    .line 2
    .line 3
    return-object v0
.end method

.method public dNu()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public sP()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC$Sj;->uA()V

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Jcg:Lb6/a;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj$Sj;->Sj(I)V

    :cond_0
    return-void
.end method

.method public sP(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->TKC:J

    return-void
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 0

    .line 1
    return-void
.end method

.method public sP(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB:Z

    return-void
.end method

.method public sef()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->EjP:Z

    .line 2
    .line 3
    return v0
.end method

.method public uA()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/TKC;->HiB()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public uvD()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public vS()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method
