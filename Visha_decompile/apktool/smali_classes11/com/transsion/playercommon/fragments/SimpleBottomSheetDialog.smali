.class public Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;
.super Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;
    }
.end annotation


# instance fields
.field public n:Landroid/view/View;

.field public o:Landroid/widget/FrameLayout;

.field public p:Landroid/widget/FrameLayout;

.field public q:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->G()V

    return-void
.end method

.method private F()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "height_mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->r:I

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;->m:I

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;->l:I

    :cond_0
    return-void
.end method

.method public static H(IIII)Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->I(IIIII)Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method public static I(IIIII)Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "previous"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "next"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "height"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "type"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "height_mode"

    invoke-virtual {v0, p0, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public final E(Landroid/view/View;)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Ls53;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v3, v4, v1, v5, v0}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$b;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$b;-><init>(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final synthetic G()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->o:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method public J(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->o:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->E(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->M(Landroid/view/View;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->p:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public K()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->o:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->M(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->E(Landroid/view/View;)V

    return-void
.end method

.method public L(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->q:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;

    return-void
.end method

.method public final M(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Ls53;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3f28f5c3    # 0.66f

    invoke-direct {v3, v4, v0, v5, v1}, Ls53;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$a;-><init>(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->F()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/transsion/playercommon/R$layout;->layout_base_bottom_sheet_fragment:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->n:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->n:Landroid/view/View;

    return-object p0

    :cond_0
    iget p1, p0, Lcom/transsion/playercommon/fragments/BaseBottomSheetDialog;->l:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->n:Landroid/view/View;

    sget p3, Lcom/transsion/playercommon/R$id;->handler:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->n:Landroid/view/View;

    sget p3, Lcom/transsion/playercommon/R$id;->handler:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->n:Landroid/view/View;

    sget p3, Lcom/transsion/playercommon/R$id;->previous:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->o:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "previous"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x0

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->q:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$c;->a(Landroid/view/View;)V

    :cond_2
    iget p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->r:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->o:Landroid/widget/FrameLayout;

    new-instance p2, Lvl9;

    invoke-direct {p2, p0}, Lvl9;-><init>(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->n:Landroid/view/View;

    sget p2, Lcom/transsion/playercommon/R$id;->next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "next"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->K()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->n:Landroid/view/View;

    return-object p0
.end method
