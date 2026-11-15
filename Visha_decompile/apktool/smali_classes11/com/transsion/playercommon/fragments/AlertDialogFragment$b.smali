.class public Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/fragments/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Lcom/transsion/playercommon/fragments/AlertDialogFragment;
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;

    invoke-direct {v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public b(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a:Landroid/os/Bundle;

    const-string v1, "positiveTitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public c(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a:Landroid/os/Bundle;

    const-string v1, "layout"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public d(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
