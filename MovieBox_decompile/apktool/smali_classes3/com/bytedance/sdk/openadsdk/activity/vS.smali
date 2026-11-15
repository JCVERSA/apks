.class public abstract Lcom/bytedance/sdk/openadsdk/activity/vS;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected final Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

.field public TEQ:Z

.field protected Ym:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field protected aa:Lcom/bytedance/sdk/openadsdk/aa/vS;

.field public uA:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/vS$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/vS;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->aa:Lcom/bytedance/sdk/openadsdk/aa/vS;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 14
    .line 15
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    .line 16
    .line 17
    return-void
.end method

.method private Sj(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 9
    new-instance v9, Lcom/bytedance/sdk/openadsdk/activity/vS$2;

    const-string v2, "Reward_executeMultiProcessCallback"

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/vS;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v9, v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method private sP(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/vS$3;

    const-string v1, "FullScreen_executeMultiProcessCallback"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/vS;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method


# virtual methods
.method protected final EjP(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Ym:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj(I)Landroid/os/IBinder;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Ym:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Ym:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object p1
.end method

.method public EjP(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public HiB(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final LD()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "onAdVideoBarClick"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->aa()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public LqL()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "onAdClose"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Fmk()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public abstract RiZ()Z
.end method

.method public abstract Sj()Landroid/view/View;
.end method

.method public Sj(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    return-void
.end method

.method public Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 0

    .line 3
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/vS;Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;)V
    .locals 0

    .line 4
    return-void
.end method

.method protected Sj(Ljava/lang/String;)V
    .locals 8

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    .line 7
    const-string v7, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->sP(Ljava/lang/String;)V

    return-void
.end method

.method protected final Sj(ZILjava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Zq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-string v1, "onRewardVerify"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, p1, p6}, Lcom/bytedance/sdk/openadsdk/component/reward/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZI)V

    return-void
.end method

.method protected Sj(ZZZI)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZZZI)V

    return-void
.end method

.method public TKC(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected Yf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->dNu()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "onAdShow"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sef()V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->TzV()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public Zq()V
    .locals 0

    .line 1
    return-void
.end method

.method protected abstract a_()Z
.end method

.method public abstract b_()Ljava/lang/String;
.end method

.method public dNu()V
    .locals 0

    .line 1
    return-void
.end method

.method public kF()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method protected ley()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "videoForceBreak"

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->sP(Lcom/bytedance/sdk/openadsdk/activity/vS;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public sP(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract sP(Z)V
.end method

.method protected abstract sU()Ljava/lang/String;
.end method

.method public sef()V
    .locals 0

    .line 1
    return-void
.end method

.method public uP()Lcom/bytedance/sdk/openadsdk/activity/sP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    return-object v0
.end method

.method public wE()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/vS;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public abstract zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
.end method
