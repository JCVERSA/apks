.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl;->imagePreview(Landroid/content/Context;Ljava/util/ArrayList;ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0OO:Z

.field public final synthetic OooO0Oo:I

.field public final synthetic OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO00o:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0O0:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0OO:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0Oo:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "errMsg"

    .line 10
    .line 11
    const-string v3, "Failed preview image, no permission : PI002"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-class v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "get(DialogProxy::class.java)"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v2, v0

    .line 36
    check-cast v2, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO00o:Landroid/content/Context;

    .line 39
    .line 40
    const/4 v6, 0x6

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/integration/proxy/DialogProxy$DefaultImpls;->showStoragePermissionDialog$default(Lcom/cloud/tmc/integration/proxy/DialogProxy;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onGranted()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO00o:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

    .line 8
    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Lcom/cloud/tmc/miniapp/base/BaseActivity;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0O0:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0OO:Z

    .line 15
    .line 16
    iget v7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO00o;->OooO0Oo:I

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILjava/util/ArrayList;ZI)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
