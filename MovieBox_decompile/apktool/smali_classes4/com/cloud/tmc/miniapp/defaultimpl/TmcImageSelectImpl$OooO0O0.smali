.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl;->imageSelect(Landroid/content/Context;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:I


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0O0:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0OO:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onAuthorized(Z)V

    .line 5
    .line 6
    .line 7
    const-class v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0O0:Landroid/content/Context;

    .line 16
    .line 17
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO00o;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO00o;-><init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-interface {v0, v1, v3, v2}, Lcom/cloud/tmc/integration/proxy/DialogProxy;->showStoragePermissionDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onGranted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onAuthorized(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0O0:Landroid/content/Context;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;

    .line 14
    .line 15
    check-cast v0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    .line 16
    .line 17
    iget v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO0OO:I

    .line 18
    .line 19
    new-instance v3, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO0O0;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO0O0;-><init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2, v3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
