.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;
.super Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field EjP:I

.field HiB:I

.field private final RiZ:Landroid/os/Handler;

.field Sj:Z

.field TKC:I

.field sP:J

.field vS:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->RiZ:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->Sj:Z

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->sP:J

    .line 17
    .line 18
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->TKC:I

    .line 19
    .line 20
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->EjP:I

    .line 21
    .line 22
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->HiB:I

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->vS:Z

    .line 25
    .line 26
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->aa()V

    return-void
.end method

.method private aa()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 6
    .line 7
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->vS:I

    .line 18
    .line 19
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->TKC:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->EjP:I

    .line 23
    .line 24
    int-to-float v2, v2

    .line 25
    div-float/2addr v1, v2

    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    sub-float/2addr v2, v1

    .line 29
    const/high16 v1, 0x42c80000    # 100.0f

    .line 30
    .line 31
    mul-float/2addr v2, v1

    .line 32
    int-to-float v0, v0

    .line 33
    cmpl-float v0, v2, v0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-ltz v0, :cond_0

    .line 38
    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v2

    .line 42
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 47
    .line 48
    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->dNu:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->vS()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v3, v2

    .line 70
    :goto_1
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->sef:Z

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    move v3, v1

    .line 75
    :cond_2
    if-eqz v0, :cond_4

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    move v2, v1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    if-ne v3, v1, :cond_4

    .line 82
    .line 83
    move v2, v0

    .line 84
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 89
    .line 90
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Sj(Z)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Fmk:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->RiZ:Landroid/os/Handler;

    .line 7
    .line 8
    const/16 v1, 0x384

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->RiZ:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v1, 0x258

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public EjP()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Fmk:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->EjP()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Jcg()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 17
    .line 18
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->sP(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->TKC(Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->Jcg()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_4

    .line 55
    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->Sj(J)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public HiB()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Fmk:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->HiB()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 22
    .line 23
    const/16 v1, 0x258

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->RiZ:Landroid/os/Handler;

    .line 29
    .line 30
    const/16 v1, 0x384

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public Jcg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->TKC:I

    .line 2
    .line 3
    return v0
.end method

.method public Sj()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Fmk:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->aa:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj()V

    return-void
.end method

.method public Sj(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->TKC:I

    return-void
.end method

.method public Sj(J)V
    .locals 2

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Fmk:Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Jcg:Z

    if-nez v0, :cond_1

    return-void

    .line 14
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x384

    .line 15
    iput v1, v0, Landroid/os/Message;->what:I

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->Jcg()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->RiZ:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected Sj(Z)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uvD:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uvD:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->sP()Lcom/bytedance/sdk/openadsdk/aa/vS;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/aa/vS;)Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->dNu:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    const-string v0, "RVIVPlayableNewManager"

    const-string v1, "PreRender injection exception"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->dNu:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Sj(Z)V

    :cond_0
    return-void
.end method

.method public TKC()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Fmk:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Jcg:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->dNu:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->vS()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->oWa()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->EjP:I

    .line 36
    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 42
    .line 43
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Sj(Ljava/lang/String;Z)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->HiB:I

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->sP:J

    .line 66
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->RiZ:Landroid/os/Handler;

    .line 68
    .line 69
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->EjP:I

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    const/16 v3, 0x384

    .line 73
    .line 74
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 84
    .line 85
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Ym()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->tz:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->EjP:I

    .line 95
    .line 96
    int-to-long v1, v1

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj(J)V

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x384

    .line 6
    .line 7
    if-ne v1, v3, :cond_9

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Jcg:Z

    .line 10
    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->TzV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 34
    .line 35
    if-lez p1, :cond_4

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->HiB:I

    .line 45
    .line 46
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->EjP:I

    .line 47
    .line 48
    sub-int/2addr v4, p1

    .line 49
    sub-int/2addr v1, v4

    .line 50
    if-ne v1, p1, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    if-lez v1, :cond_2

    .line 66
    .line 67
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 68
    .line 69
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 76
    .line 77
    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 78
    .line 79
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, "tt_skip_ad_time_text"

    .line 84
    .line 85
    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-array v7, v2, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v1, v7, v0

    .line 96
    .line 97
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->Sj(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->vS:Z

    .line 106
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC()V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB(Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq()V

    .line 144
    .line 145
    .line 146
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput v3, v0, Landroid/os/Message;->what:I

    .line 151
    .line 152
    sub-int/2addr p1, v2

    .line 153
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 154
    .line 155
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->RiZ:Landroid/os/Handler;

    .line 156
    .line 157
    const-wide/16 v3, 0x3e8

    .line 158
    .line 159
    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    .line 161
    .line 162
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->TKC:I

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->vS:Z

    .line 166
    .line 167
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->uA:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 176
    .line 177
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->ib(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_5

    .line 182
    .line 183
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->dNu:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_6

    .line 190
    .line 191
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 192
    .line 193
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC()V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 201
    .line 202
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->HiB(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 207
    .line 208
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    .line 217
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Ym:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 221
    .line 222
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq()V

    .line 225
    .line 226
    .line 227
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->dNu:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    .line 228
    .line 229
    if-eqz p1, :cond_7

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->HiB()Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_8

    .line 236
    .line 237
    :cond_7
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->sef:Z

    .line 238
    .line 239
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->aa()V

    .line 240
    .line 241
    .line 242
    nop

    .line 243
    :cond_9
    :goto_3
    return v2
.end method

.method protected sP()Lcom/bytedance/sdk/openadsdk/aa/vS;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public uA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->vS:Z

    .line 2
    .line 3
    return v0
.end method

.method public vS()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Fmk:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->Zq:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TEQ;->vS()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Jcg;->RiZ:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
