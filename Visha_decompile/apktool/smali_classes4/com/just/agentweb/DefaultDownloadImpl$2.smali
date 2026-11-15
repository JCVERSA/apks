.class Lcom/just/agentweb/DefaultDownloadImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/just/agentweb/AgentActionFragment$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultDownloadImpl;->getPermissionListener(Ljava/lang/String;)Lcom/just/agentweb/AgentActionFragment$PermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultDownloadImpl;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/DefaultDownloadImpl;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    iput-object p2, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->val$url:Ljava/lang/String;

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

    iget-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    invoke-virtual {p1}, Lcom/just/agentweb/DefaultDownloadImpl;->checkNeedPermission()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    iget-object p0, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/just/agentweb/DefaultDownloadImpl;->preDownload(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    iget-object p1, p1, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    iget-object p1, p1, Lcom/just/agentweb/DefaultDownloadImpl;->mAgentWebUIController:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/just/agentweb/AbsAgentWebUIController;

    iget-object p0, p0, Lcom/just/agentweb/DefaultDownloadImpl$2;->this$0:Lcom/just/agentweb/DefaultDownloadImpl;

    invoke-virtual {p0}, Lcom/just/agentweb/DefaultDownloadImpl;->checkNeedPermission()Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const-string p2, "Storage"

    const-string p3, "Download"

    invoke-virtual {p1, p0, p2, p3}, Lcom/just/agentweb/AbsAgentWebUIController;->onPermissionsDeny([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/just/agentweb/DefaultDownloadImpl;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u50a8\u5b58\u6743\u9650\u83b7\u53d6\u5931\u8d25~"

    invoke-static {p0, p1}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
