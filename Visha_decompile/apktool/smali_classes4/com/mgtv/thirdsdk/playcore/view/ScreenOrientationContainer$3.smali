.class Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->access$100(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, p1, -0x5a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x2d

    if-lt v0, v4, :cond_4

    add-int/lit16 v0, p1, -0x10e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-lt p1, v4, :cond_1

    const/16 v0, 0x13b

    if-le p1, v0, :cond_7

    :cond_1
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->access$200(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/h;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/hunantv/imgo/util/h;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/h;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3$2;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3$2;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-static {p1, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->access$102(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Z)Z

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->access$200(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/h;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/hunantv/imgo/util/h;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/imgo/util/h;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3$1;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3$1;-><init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-static {p1, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->access$102(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Z)Z

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_7
    :goto_1
    return-void
.end method
