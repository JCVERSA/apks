.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static Sj:I = 0x0

.field public static TKC:I = 0x2

.field public static sP:I = 0x1


# instance fields
.field private final EjP:Z

.field private HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->pR()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP()V

    :cond_0
    return-void
.end method

.method public Dq(I)Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->sP:I

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->TEQ()Z

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Dq()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public EjP()Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TzV()Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public EjP(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->EjP(Z)V

    :cond_0
    return-void
.end method

.method public EjP(I)Z
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uA()Z

    move-result p1

    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->uA()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TEQ()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public Fmk()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->EjP()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Ym()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public HiB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->vS()V

    :cond_0
    return-void
.end method

.method public HiB(I)V
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    int-to-long v1, p1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj(J)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    int-to-long v1, p1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(J)V

    :cond_1
    return-void
.end method

.method public HiB(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->HiB(Z)V

    :cond_0
    return-void
.end method

.method public Jcg(I)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->TKC:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->vS()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    sget v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->sP:I

    if-eq p1, v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC()V

    :cond_1
    return-void
.end method

.method public Jcg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Zq()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Sj(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;Z)V

    :cond_0
    return-void
.end method

.method public Sj(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Landroid/webkit/DownloadListener;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Z)V
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->sP(Z)V

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Z)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V

    :cond_1
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(Z)V

    :cond_0
    return-void
.end method

.method public Sj(ZLjava/lang/String;I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public Sj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->dNu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public TEQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->HiB()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public TKC(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(I)V

    :cond_0
    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public TKC(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj(Z)V

    :cond_0
    return-void
.end method

.method public TKC()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->uvD()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public TzV()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->TKC()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Ym()Lcom/bytedance/sdk/openadsdk/aa/HiB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sef()Lcom/bytedance/sdk/openadsdk/aa/HiB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public Zq()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Sj()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public aa()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->EjP()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dNu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sP()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TEQ()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sP(I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->TKC(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sP(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->sP(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sP(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->vS(Z)V

    :cond_0
    return-void
.end method

.method public sef()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Dq()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Fmk()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public uA()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->uA()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0
.end method

.method public uvD()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->HiB()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->aa()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public vS()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->Jcg()V

    :cond_0
    return-void
.end method

.method public vS(I)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj(I)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uA;->HiB(I)V

    :cond_1
    return-void
.end method

.method public vS(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->TKC(Z)V

    :cond_0
    return-void
.end method
