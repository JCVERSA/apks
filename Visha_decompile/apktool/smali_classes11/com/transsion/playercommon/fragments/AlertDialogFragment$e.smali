.class public Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;
.super Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/fragments/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/transsion/playercommon/fragments/AlertDialogFragment;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;->e()Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->v(Z)V

    new-instance v0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    invoke-direct {v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a:Landroid/os/Bundle;

    const-string v1, "default_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a:Landroid/os/Bundle;

    const-string v0, "default_hint"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
