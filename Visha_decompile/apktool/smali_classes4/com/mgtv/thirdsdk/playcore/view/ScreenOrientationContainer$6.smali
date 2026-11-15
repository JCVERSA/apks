.class Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$6;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$6;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged 11 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$6;->val$newConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigurationChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$6;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$6;->val$newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->postOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
