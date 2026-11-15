.class Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/utils/ExTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalHandler"
.end annotation


# instance fields
.field wrObj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/player/utils/ExTicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/hunantv/media/player/utils/ExTicker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;->wrObj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/media/player/utils/ExTicker;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;->wrObj:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;->wrObj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/player/utils/ExTicker$InternalHandler;->wrObj:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/utils/ExTicker;

    iget p1, p1, Landroid/os/Message;->what:I

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$000(Lcom/hunantv/media/player/utils/ExTicker;)Lcom/hunantv/media/player/utils/ExTicker$Status;

    move-result-object p1

    sget-object v1, Lcom/hunantv/media/player/utils/ExTicker$Status;->STATE_START:Lcom/hunantv/media/player/utils/ExTicker$Status;

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$108(Lcom/hunantv/media/player/utils/ExTicker;)I

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$208(Lcom/hunantv/media/player/utils/ExTicker;)I

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$300(Lcom/hunantv/media/player/utils/ExTicker;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExTicker count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$100(Lcom/hunantv/media/player/utils/ExTicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$200(Lcom/hunantv/media/player/utils/ExTicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$500(Lcom/hunantv/media/player/utils/ExTicker;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$400(Lcom/hunantv/media/player/utils/ExTicker;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$600(Lcom/hunantv/media/player/utils/ExTicker;)Lcom/hunantv/media/player/utils/ExTicker$onTickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$600(Lcom/hunantv/media/player/utils/ExTicker;)Lcom/hunantv/media/player/utils/ExTicker$onTickListener;

    move-result-object p1

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$100(Lcom/hunantv/media/player/utils/ExTicker;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/hunantv/media/player/utils/ExTicker$onTickListener;->onTick(I)V

    :cond_1
    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$700(Lcom/hunantv/media/player/utils/ExTicker;)Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$700(Lcom/hunantv/media/player/utils/ExTicker;)Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;

    move-result-object p1

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$100(Lcom/hunantv/media/player/utils/ExTicker;)I

    move-result v0

    invoke-static {p0}, Lcom/hunantv/media/player/utils/ExTicker;->access$200(Lcom/hunantv/media/player/utils/ExTicker;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;->onTick(II)V

    :cond_2
    :goto_0
    return-void
.end method
