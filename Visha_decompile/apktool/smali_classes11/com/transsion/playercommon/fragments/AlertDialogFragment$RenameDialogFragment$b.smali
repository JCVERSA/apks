.class public Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/dialog/InputDialog$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$b;->a:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$b;->a:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    invoke-static {v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->G(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$b;->a:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    invoke-static {p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->G(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
