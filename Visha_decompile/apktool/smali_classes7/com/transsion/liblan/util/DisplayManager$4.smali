.class Lcom/transsion/liblan/util/DisplayManager$4;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/util/DisplayManager;->setMediaRouterCallback()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/util/DisplayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/util/DisplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/util/DisplayManager$4;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object p2, p0, Lcom/transsion/liblan/util/DisplayManager$4;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {p2}, Lcom/transsion/liblan/util/DisplayManager;->c(Lcom/transsion/liblan/util/DisplayManager;)I

    move-result p2

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/transsion/liblan/util/DisplayManager$4;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {p2, p1}, Lcom/transsion/liblan/util/DisplayManager;->f(Lcom/transsion/liblan/util/DisplayManager;I)V

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$4;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {p0}, Lcom/transsion/liblan/util/DisplayManager;->h(Lcom/transsion/liblan/util/DisplayManager;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/liblan/util/DisplayManager$4;->this$0:Lcom/transsion/liblan/util/DisplayManager;

    invoke-static {p0}, Lcom/transsion/liblan/util/DisplayManager;->i(Lcom/transsion/liblan/util/DisplayManager;)V

    :goto_1
    return-void
.end method
