.class Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$2;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$2;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setScreenOrientationAutoMode()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$2;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$2;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->access$000(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;)Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$InnerContentObserver;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
