.class Lcom/just/agentweb/DefaultUIController$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/AgentActionFragment$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultUIController;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultUIController;

.field final synthetic val$denyPermission:Ljava/util/List;

.field final synthetic val$request:Landroid/webkit/PermissionRequest;

.field final synthetic val$resources:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/DefaultUIController;Ljava/util/List;Landroid/webkit/PermissionRequest;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$15;->this$0:Lcom/just/agentweb/DefaultUIController;

    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController$15;->val$denyPermission:Ljava/util/List;

    iput-object p3, p0, Lcom/just/agentweb/DefaultUIController$15;->val$request:Landroid/webkit/PermissionRequest;

    iput-object p4, p0, Lcom/just/agentweb/DefaultUIController$15;->val$resources:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController$15;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {p1}, Lcom/just/agentweb/DefaultUIController;->a(Lcom/just/agentweb/DefaultUIController;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/just/agentweb/DefaultUIController$15;->val$denyPermission:Ljava/util/List;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/just/agentweb/AgentWebUtils;->getDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController$15;->val$request:Landroid/webkit/PermissionRequest;

    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController$15;->val$resources:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController$15;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->deny()V

    :goto_0
    return-void
.end method
