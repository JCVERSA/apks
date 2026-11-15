.class Lcom/mgtv/a/c/h$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/h;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/h$9;->a:Lcom/mgtv/a/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    const-string p0, "VideoPlayerCore"

    const-string p1, "onViewAttachedToWindow"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string p1, "VideoPlayerCore"

    const-string v0, "onViewDetachedFromWindow"

    invoke-static {p1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgtv/a/c/h$9;->a:Lcom/mgtv/a/c/h;

    iget-object p1, p1, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->stop()V

    iget-object p0, p0, Lcom/mgtv/a/c/h$9;->a:Lcom/mgtv/a/c/h;

    iget-object p0, p0, Lcom/mgtv/a/c/h;->s:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
