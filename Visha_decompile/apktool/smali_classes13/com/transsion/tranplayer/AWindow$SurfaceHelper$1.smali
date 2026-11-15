.class Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tranplayer/AWindow$SurfaceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;->this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;->this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    invoke-static {v0}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->access$300(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;->this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->access$400(Lcom/transsion/tranplayer/AWindow$SurfaceHelper;Landroid/view/Surface;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "holders are different"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "AWindow"

    const-string v0, "surfaceDestroyed called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper$1;->this$1:Lcom/transsion/tranplayer/AWindow$SurfaceHelper;

    iget-object p0, p0, Lcom/transsion/tranplayer/AWindow$SurfaceHelper;->this$0:Lcom/transsion/tranplayer/AWindow;

    invoke-static {p0}, Lcom/transsion/tranplayer/AWindow;->access$500(Lcom/transsion/tranplayer/AWindow;)V

    return-void
.end method
