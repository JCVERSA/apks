.class Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranWindow$SurfaceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/liblan/TranWindow$SurfaceHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranWindow$SurfaceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;->this$1:Lcom/transsion/liblan/TranWindow$SurfaceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "=====surfaceChanged========"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AWindow"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;->this$1:Lcom/transsion/liblan/TranWindow$SurfaceHelper;

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    invoke-virtual {p0, p3, p4}, Lcom/transsion/liblan/TranWindow;->setWindowSize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;->this$1:Lcom/transsion/liblan/TranWindow$SurfaceHelper;

    invoke-static {v0}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->b(Lcom/transsion/liblan/TranWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;->this$1:Lcom/transsion/liblan/TranWindow$SurfaceHelper;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->c(Lcom/transsion/liblan/TranWindow$SurfaceHelper;Landroid/view/Surface;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "holders are different"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper$1;->this$1:Lcom/transsion/liblan/TranWindow$SurfaceHelper;

    iget-object p0, p0, Lcom/transsion/liblan/TranWindow$SurfaceHelper;->this$0:Lcom/transsion/liblan/TranWindow;

    invoke-static {p0}, Lcom/transsion/liblan/TranWindow;->d(Lcom/transsion/liblan/TranWindow;)V

    return-void
.end method
