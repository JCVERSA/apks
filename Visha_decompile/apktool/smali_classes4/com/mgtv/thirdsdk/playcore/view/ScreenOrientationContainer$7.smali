.class Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->onConfigurationChangedCompat(Landroid/content/res/Configuration;)V
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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$7;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$7;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$7;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$7;->val$newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->postOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
