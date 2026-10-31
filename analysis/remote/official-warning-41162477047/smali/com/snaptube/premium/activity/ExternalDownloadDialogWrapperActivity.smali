.class public final Lcom/snaptube/premium/activity/ExternalDownloadDialogWrapperActivity;
.super Lcom/snaptube/premium/activity/DownloadDialogWrapperActivity;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u0016\u0010\u000c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/snaptube/premium/activity/ExternalDownloadDialogWrapperActivity;",
        "Lcom/snaptube/premium/activity/DownloadDialogWrapperActivity;",
        "<init>",
        "()V",
        "",
        "enableTransparentStatusBar",
        "()Z",
        "Lo/mg8;",
        "onResume",
        "Q0",
        "l",
        "Z",
        "isSet",
        "snaptube_classicNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/activity/DownloadDialogWrapperActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q0()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    invoke-static {}, Lo/io6;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snaptube/premium/activity/ExternalDownloadDialogWrapperActivity;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", peekDecorView:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorView"

    invoke-static {v1, v0}, Lo/u81;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/activity/ExternalDownloadDialogWrapperActivity;->l:Z

    :cond_1
    return-void
.end method

.method public enableTransparentStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/snaptube/premium/activity/BaseSwipeBackActivity;->onResume()V

    invoke-virtual {p0}, Lcom/snaptube/premium/activity/ExternalDownloadDialogWrapperActivity;->Q0()V

    return-void
.end method
