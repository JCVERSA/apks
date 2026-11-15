.class public abstract Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# instance fields
.field public l:Landroid/view/View;

.field public m:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method private u()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->m:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->l:Landroid/view/View;

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->u()V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->l:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->v(Landroid/view/View;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->l:Landroid/view/View;

    return-object p0
.end method

.method public abstract v(Landroid/view/View;)V
.end method
