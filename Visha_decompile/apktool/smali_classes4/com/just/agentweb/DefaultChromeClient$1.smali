.class Lcom/just/agentweb/DefaultChromeClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/AgentActionFragment$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/just/agentweb/DefaultChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultChromeClient;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/DefaultChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "KEY_FROM_INTENTION"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x60

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {p2}, Lcom/just/agentweb/DefaultChromeClient;->a(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/just/agentweb/AgentWebUtils;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {p2}, Lcom/just/agentweb/DefaultChromeClient;->c(Lcom/just/agentweb/DefaultChromeClient;)Landroid/webkit/GeolocationPermissions$Callback;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {p2}, Lcom/just/agentweb/DefaultChromeClient;->c(Lcom/just/agentweb/DefaultChromeClient;)Landroid/webkit/GeolocationPermissions$Callback;

    move-result-object p2

    iget-object p3, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {p3}, Lcom/just/agentweb/DefaultChromeClient;->d(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p2, p3, p1, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    iget-object p2, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/just/agentweb/DefaultChromeClient;->e(Lcom/just/agentweb/DefaultChromeClient;Landroid/webkit/GeolocationPermissions$Callback;)V

    iget-object p2, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {p2, p3}, Lcom/just/agentweb/DefaultChromeClient;->f(Lcom/just/agentweb/DefaultChromeClient;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {p1}, Lcom/just/agentweb/DefaultChromeClient;->b(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/just/agentweb/DefaultChromeClient$1;->this$0:Lcom/just/agentweb/DefaultChromeClient;

    invoke-static {p0}, Lcom/just/agentweb/DefaultChromeClient;->b(Lcom/just/agentweb/DefaultChromeClient;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/just/agentweb/AbsAgentWebUIController;

    sget-object p1, Lcom/just/agentweb/AgentWebPermissions;->LOCATION:[Ljava/lang/String;

    const-string p2, "Location"

    invoke-virtual {p0, p1, p2, p2}, Lcom/just/agentweb/AbsAgentWebUIController;->onPermissionsDeny([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
