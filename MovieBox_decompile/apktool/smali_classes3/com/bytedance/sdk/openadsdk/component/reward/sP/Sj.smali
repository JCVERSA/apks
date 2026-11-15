.class public Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected final Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

.field protected EjP:I

.field protected final HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

.field protected final Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

.field protected Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field protected TEQ:Lcom/bytedance/sdk/component/utils/LqL;

.field protected TKC:I

.field protected sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field protected uA:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field protected final vS:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->IOh:I

    .line 11
    .line 12
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TKC:I

    .line 13
    .line 14
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->pfr:I

    .line 15
    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->EjP:I

    .line 17
    .line 18
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/component/utils/LqL;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->uA:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 2
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->TEQ:Lcom/bytedance/sdk/component/utils/LqL;

    return-void
.end method

.method public Sj(Z)V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Z)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->sP(I)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TKC(I)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Z)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->HiB(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RrR()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Z)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj()Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Dq;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB()V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->HiB(I)V

    goto :goto_1

    .line 20
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    :goto_1
    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->MuB:F

    sget v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->Sj:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 22
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->sP(I)V

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TKC(I)V

    return-void

    .line 24
    :cond_7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->sP(I)V

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TKC(I)V

    return-void

    .line 26
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->sP(I)V

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TKC(I)V

    return-void
.end method

.method public Sj()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected TKC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Jcg()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->sP(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public sP()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->vS()Landroid/widget/FrameLayout;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v2, 0x4

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    return v0

    .line 70
    :cond_1
    return v1
.end method
