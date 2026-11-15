.class public Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;
.super Lcom/transsion/playercommon/fragments/AlertDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/fragments/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoiceDialogFragment"
.end annotation


# instance fields
.field public s:I

.field public t:I

.field public u:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;->u:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;->u:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const-string v0, "ChoiceDialogFragment"

    const-string v1, "Show alertSortDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->w(Landroid/os/Bundle;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "defaultChoice"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;->t:I

    const-string v1, "arrayId"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;->s:I

    :cond_1
    iget p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;->s:I

    iget v1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;->t:I

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;->y(IILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-object p0
.end method

.method public setItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;->u:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
