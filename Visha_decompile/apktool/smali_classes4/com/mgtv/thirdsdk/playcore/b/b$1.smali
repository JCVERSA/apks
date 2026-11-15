.class Lcom/mgtv/thirdsdk/playcore/b/b$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/playcore/b/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/thirdsdk/playcore/b/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/b/b$1;->a:Lcom/mgtv/thirdsdk/playcore/b/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/b/b$1;->a:Lcom/mgtv/thirdsdk/playcore/b/b;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/b/b;->a(Lcom/mgtv/thirdsdk/playcore/b/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/b/b$1;->a:Lcom/mgtv/thirdsdk/playcore/b/b;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/b/b;->b(Lcom/mgtv/thirdsdk/playcore/b/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/b/b$1;->a:Lcom/mgtv/thirdsdk/playcore/b/b;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->b(Lcom/mgtv/thirdsdk/playcore/b/b;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
