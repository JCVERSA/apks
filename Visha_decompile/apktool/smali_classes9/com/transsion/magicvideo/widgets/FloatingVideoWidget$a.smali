.class public Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "FloatingVideoWidget"

    const-string v1, "surfaceCreated "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->g(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S1(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "FloatingVideoWidget"

    const-string v1, "surfaceDestroyed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->h(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget$a;->b:Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;->f(Lcom/transsion/magicvideo/widgets/FloatingVideoWidget;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S1(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method
