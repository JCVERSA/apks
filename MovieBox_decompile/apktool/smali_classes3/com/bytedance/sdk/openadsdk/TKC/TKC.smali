.class public Lcom/bytedance/sdk/openadsdk/TKC/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/uP;


# instance fields
.field private EjP:Z

.field private HiB:Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

.field public Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

.field private TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

.field private final sP:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private EjP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    check-cast v0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->show()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/TKC/EjP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    return-object p0
.end method

.method private Sj(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    .line 3
    new-instance p2, Lcom/bytedance/sdk/openadsdk/TKC/aa;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getDislikeManager()Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    .line 4
    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TKC/TKC$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)Lcom/bytedance/sdk/openadsdk/core/uP$Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->EjP()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->sP:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->show()V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/uP$Sj;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/uP$Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->EjP:Z

    return-void
.end method

.method public TKC()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->EjP:Z

    return v0
.end method

.method public sP()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->destroy()V

    :cond_0
    return-void
.end method
