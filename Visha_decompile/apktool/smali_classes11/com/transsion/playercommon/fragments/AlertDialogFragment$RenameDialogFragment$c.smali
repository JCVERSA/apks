.class public Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$c;->b:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$c;->b:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->H(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$c;->b:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->I(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
