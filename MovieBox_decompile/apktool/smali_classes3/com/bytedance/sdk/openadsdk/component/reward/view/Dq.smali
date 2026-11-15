.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final Dq:Ljava/lang/String;

.field EjP:Z

.field HiB:Z

.field private final Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field private final TEQ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field TKC:Z

.field private Ym:Z

.field sP:Landroid/os/Handler;

.field private uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

.field private final vS:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->TKC:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->EjP:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->HiB:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->TEQ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->vS:Landroid/app/Activity;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 2

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->vS:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public EjP()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->EjP:Z

    .line 2
    .line 3
    return v0
.end method

.method public HiB()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->sP:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->sP:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->sP:Landroid/os/Handler;

    .line 17
    .line 18
    return-object v0
.end method

.method public Jcg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    return-object v0
.end method

.method public Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->TEQ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(IZ)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(IZZ)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->HiB:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->HiB:Z

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->TEQ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->setExpressVideoListenerProxy(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->TKC:Z

    return-void
.end method

.method public TEQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public TKC()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->TKC:Z

    .line 2
    .line 3
    return v0
.end method

.method public Ym()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public aa()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/high16 v1, 0x42b40000    # 90.0f

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->getBackupContainerBackgroundView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :catchall_0
    :cond_0
    return-void
.end method

.method public sP()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->aa()V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public sP(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->EjP:Z

    return-void
.end method

.method public uA()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public vS()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Ym:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Ym:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA:Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->sP:Landroid/os/Handler;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method
