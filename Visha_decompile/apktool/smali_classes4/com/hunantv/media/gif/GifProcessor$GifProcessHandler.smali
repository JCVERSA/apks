.class Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/gif/GifProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifProcessHandler"
.end annotation


# static fields
.field public static final MSG_GIF_PROCESS:I = 0x64


# instance fields
.field private mWeakProcessor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/gif/GifProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hunantv/media/gif/GifProcessor;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->mWeakProcessor:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private callbackFail(ILcom/hunantv/media/gif/GifProcessor$Task;)V
    .locals 1

    const v0, 0x6ad78f

    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->reportErr(II)V

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->mWeakProcessor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/gif/GifProcessor;

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/hunantv/media/gif/GifProcessor;->access$300(Lcom/hunantv/media/gif/GifProcessor;ILcom/hunantv/media/gif/GifProcessor$Task;)V

    :cond_0
    return-void
.end method

.method private callbackSuc(Lcom/hunantv/media/gif/GifProcessor$Task;)V
    .locals 1

    invoke-direct {p0}, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->reportVV()V

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->mWeakProcessor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/gif/GifProcessor;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/hunantv/media/gif/GifProcessor$Task;->access$100(Lcom/hunantv/media/gif/GifProcessor$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/gif/GifProcessor;->access$400(Lcom/hunantv/media/gif/GifProcessor;Ljava/lang/String;Lcom/hunantv/media/gif/GifProcessor$Task;)V

    :cond_0
    return-void
.end method

.method private processGif(Landroid/os/Message;)V
    .locals 9

    invoke-direct {p0}, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->reportPV()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/16 p1, -0xc8

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->callbackFail(ILcom/hunantv/media/gif/GifProcessor$Task;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/hunantv/media/gif/GifProcessor$Task;

    invoke-static {}, Lcom/hunantv/media/gif/GifProcessor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processGif in. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/16 p1, -0xc9

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gif_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->targetDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/gif/GifProcessor$Task;->access$102(Lcom/hunantv/media/gif/GifProcessor$Task;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/gif/GifProcessor;->access$200()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->url:Ljava/lang/String;

    iget v3, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->startS:I

    iget v4, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->durationS:I

    iget v5, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->w:I

    iget v6, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->h:I

    iget v7, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->fps:I

    invoke-static {p1}, Lcom/hunantv/media/gif/GifProcessor$Task;->access$100(Lcom/hunantv/media/gif/GifProcessor$Task;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/hunantv/media/player/e/a;->a(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/hunantv/media/gif/GifProcessor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processGif out. ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->callbackSuc(Lcom/hunantv/media/gif/GifProcessor$Task;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->callbackFail(ILcom/hunantv/media/gif/GifProcessor$Task;)V

    :goto_1
    return-void
.end method

.method private reportErr(II)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->mWeakProcessor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/gif/GifProcessor;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/gif/GifProcessor;->access$500(Lcom/hunantv/media/gif/GifProcessor;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/gif/GifProcessor;->access$500(Lcom/hunantv/media/gif/GifProcessor;)Lcom/hunantv/media/report/a;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/hunantv/media/report/a;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportPV()V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->mWeakProcessor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/gif/GifProcessor;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/gif/GifProcessor;->access$500(Lcom/hunantv/media/gif/GifProcessor;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/gif/GifProcessor;->access$500(Lcom/hunantv/media/gif/GifProcessor;)Lcom/hunantv/media/report/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/report/a;->a()V

    :cond_0
    return-void
.end method

.method private reportVV()V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->mWeakProcessor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/gif/GifProcessor;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/gif/GifProcessor;->access$500(Lcom/hunantv/media/gif/GifProcessor;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/gif/GifProcessor;->access$500(Lcom/hunantv/media/gif/GifProcessor;)Lcom/hunantv/media/report/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/report/a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;->processGif(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
