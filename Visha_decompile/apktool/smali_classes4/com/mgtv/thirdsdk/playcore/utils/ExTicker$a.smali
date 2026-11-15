.class Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;

    iget p1, p1, Landroid/os/Message;->what:I

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->a(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->b(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExTicker count:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->c(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExTicker"

    invoke-static {v1, p1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->a(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;

    move-result-object p1

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->c(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;->onTick(I)V

    :cond_1
    :goto_0
    return-void
.end method
