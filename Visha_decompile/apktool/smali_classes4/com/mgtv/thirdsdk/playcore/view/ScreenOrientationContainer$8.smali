.class Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->postOnConfigurationChanged(Landroid/content/res/Configuration;)V
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

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$8;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$8;->this$0:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->refreshLayoutForOrientation()V

    return-void
.end method
