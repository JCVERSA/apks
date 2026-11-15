.class public Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;
.super Lcom/bytedance/sdk/openadsdk/kF/sP/sP;
.source "source.java"


# instance fields
.field private EjP:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
    .locals 6

    .line 1
    const/16 v4, 0x7d0

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->EjP:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Sj()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->EjP:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected TKC()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/vS;->Sj(Landroid/view/View;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->EjP:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public aa()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->EjP:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v3

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    move v0, v2

    .line 14
    :goto_1
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->TKC:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    :cond_2
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->aa()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_3
    return v3

    .line 31
    :cond_4
    :goto_2
    return v2
.end method

.method protected sP(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->uA()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x6

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->EjP:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq()V

    .line 18
    .line 19
    .line 20
    :cond_2
    const/4 v0, 0x3

    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    if-ne p1, v1, :cond_4

    .line 25
    .line 26
    :cond_3
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->EjP:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Dq()V

    .line 29
    .line 30
    .line 31
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->EjP:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq v0, v1, :cond_5

    .line 35
    .line 36
    if-nez p1, :cond_5

    .line 37
    .line 38
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->EjP:I

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/Dq;->Sj()V

    .line 41
    .line 42
    .line 43
    :cond_5
    return-void
.end method

.method public vS()I
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 2
    .line 3
    return v0
.end method
