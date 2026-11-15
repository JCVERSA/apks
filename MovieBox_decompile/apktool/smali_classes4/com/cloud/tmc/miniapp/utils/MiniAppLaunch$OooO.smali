.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/o0OoOo0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->showUpdateFwZipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/dialog/o000oOoO;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO00o:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO00o:Landroid/content/Context;

    .line 7
    .line 8
    instance-of v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->killActivity()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public OooO0O0(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO00o:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooO;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$showProgressDialog(Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
