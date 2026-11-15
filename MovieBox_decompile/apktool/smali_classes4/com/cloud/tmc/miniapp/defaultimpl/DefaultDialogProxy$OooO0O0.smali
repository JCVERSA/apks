.class public final Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->showAddHomeConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->getAddHomeDialog()Lcom/cloud/tmc/miniapp/dialog/OooO00o;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/OooO00o;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    .line 12
    .line 13
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->setAddHomeDialog(Lcom/cloud/tmc/miniapp/dialog/OooO00o;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
