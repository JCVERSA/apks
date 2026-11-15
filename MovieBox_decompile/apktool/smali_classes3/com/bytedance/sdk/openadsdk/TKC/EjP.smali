.class public Lcom/bytedance/sdk/openadsdk/TKC/EjP;
.super Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

.field private HiB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "tt_dislikeDialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->vS(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p1, v0, p4}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->Sj:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->sP:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    return-object p0
.end method

.method private Sj()V
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    return-void
.end method

.method private sP()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/EjP$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/EjP$2;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP$2;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public Sj(I)V
    .locals 2

    .line 4
    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC:I

    if-ne v0, p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 6
    :cond_0
    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->HiB:I

    if-ne v0, p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;->Sj()V

    return-void

    .line 9
    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP:I

    if-ne v0, p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP()Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;->Sj(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->HiB:Ljava/lang/String;

    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x78

    .line 10
    .line 11
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    const/4 v2, -0x2

    .line 14
    invoke-direct {v1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public getLayoutView()Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/uA;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->sP:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TKC/uA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->Sj()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->sP()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->Sj:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->sP:Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Ljava/lang/String;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-void
.end method
