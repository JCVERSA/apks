.class Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3$2;->this$1:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3$2;->this$1:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$3;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->access$300(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/content/Context;I)V

    return-void
.end method
