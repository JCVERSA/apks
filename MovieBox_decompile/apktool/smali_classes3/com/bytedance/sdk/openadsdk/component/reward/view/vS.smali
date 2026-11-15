.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

.field private HiB:Z

.field private final Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private TKC:Z

.field private sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->sP()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public HiB()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->TKC()Z

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

.method public Sj()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->TKC:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->TKC:Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->eMB:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->init(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    :cond_2
    return-void
.end method

.method public Sj(I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setShownAdCount(I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;)V

    const-string v2, "TTBaseVideoActivity#mFLEndCardBackupContainer"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/HiB;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Z
    .locals 3

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->HiB:Z

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 13
    :cond_0
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return v0

    :cond_1
    return v2
.end method

.method public TKC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/RiZ;->Sj()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sP()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->HiB:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public vS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/vS;->HiB:Z

    .line 2
    .line 3
    return v0
.end method
