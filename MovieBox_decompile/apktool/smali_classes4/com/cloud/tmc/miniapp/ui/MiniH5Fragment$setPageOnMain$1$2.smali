.class public final Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$setPageOnMain$1$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->setPageOnMain(Lcom/cloud/tmc/integration/structure/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$setPageOnMain$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$setPageOnMain$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$setPageOnMain$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$hideCustomView(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Z)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$setPageOnMain$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isFullScreen()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$setPageOnMain$1$2;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 12
    .line 13
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$showCustomView(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
