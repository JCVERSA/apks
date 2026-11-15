.class public Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;->a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceChanged "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoEditorShareFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditorShareFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;->a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->Y(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;->a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p1}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->S(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Lcom/transsion/playercommon/player/b;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;->a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {v0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->W(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/transsion/playercommon/player/b;->O(Landroid/view/SurfaceHolder;Z)V

    invoke-static {}, Lpp3;->w()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;->a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->R(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEditorShareFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;->a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->Y(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;Landroid/view/SurfaceHolder;)V

    invoke-static {}, Lpp3;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;->a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->S(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Lcom/transsion/playercommon/player/b;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/transsion/playercommon/player/b;->O(Landroid/view/SurfaceHolder;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment$e;->a:Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;

    invoke-static {p0}, Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;->S(Lcom/transsion/magicvideo/edit/VideoEditorShareFragment;)Lcom/transsion/playercommon/player/b;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, v1}, Lcom/transsion/playercommon/player/b;->O(Landroid/view/SurfaceHolder;Z)V

    :goto_0
    return-void
.end method
