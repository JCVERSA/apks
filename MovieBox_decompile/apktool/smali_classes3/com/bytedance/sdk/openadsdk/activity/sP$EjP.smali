.class Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;
.super Lcom/bytedance/sdk/openadsdk/activity/sP$sP;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EjP"
.end annotation


# instance fields
.field private Dq:I

.field private final Jcg:I

.field private uA:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;-><init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x64

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LqL()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-ltz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LqL()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->vS:I

    .line 42
    .line 43
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method protected Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uWH()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    const/16 p1, 0x1e

    .line 9
    .line 10
    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->uA:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 7
    .line 8
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Dq:I

    .line 9
    .line 10
    if-gt v0, v2, :cond_1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->uA:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->ib()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->kF()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TEQ()Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/HiB;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/HiB;->ib()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->handleMessage(Landroid/os/Message;)Z

    .line 64
    .line 65
    .line 66
    return v1
.end method

.method public sP(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->sP(I)V

    .line 12
    .line 13
    .line 14
    const/high16 p1, 0x42c80000    # 100.0f

    .line 15
    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Dq:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    div-float/2addr v0, p1

    .line 32
    sub-float/2addr v3, v0

    .line 33
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC:F

    .line 34
    .line 35
    mul-float/2addr v3, p1

    .line 36
    float-to-int p1, v3

    .line 37
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Dq:I

    .line 38
    .line 39
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 46
    .line 47
    int-to-long v0, v0

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC:F

    .line 53
    .line 54
    int-to-float v1, v2

    .line 55
    cmpg-float v0, v0, v1

    .line 56
    .line 57
    if-gez v0, :cond_3

    .line 58
    .line 59
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Jcg:I

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    div-float/2addr v0, p1

    .line 63
    sub-float/2addr v3, v0

    .line 64
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 65
    .line 66
    int-to-float p1, p1

    .line 67
    mul-float/2addr v3, p1

    .line 68
    float-to-int p1, v3

    .line 69
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$EjP;->Dq:I

    .line 70
    .line 71
    :cond_3
    return-void
.end method
