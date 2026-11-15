.class public final Lprb$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final g:Lprb$e;


# instance fields
.field public volatile b:J

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/HandlerThread;

.field public e:Landroid/view/Choreographer;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lprb$e;

    invoke-direct {v0}, Lprb$e;-><init>()V

    sput-object v0, Lprb$e;->g:Lprb$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lprb$e;->b:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:FrameReleaseChoreographer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lprb$e;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lblb;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lprb$e;->c:Landroid/os/Handler;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static d()Lprb$e;
    .locals 1

    sget-object v0, Lprb$e;->g:Lprb$e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object p0, p0, Lprb$e;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lprb$e;->e:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget v1, p0, Lprb$e;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lprb$e;->f:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lprb$e;->e:Landroid/view/Choreographer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "VideoFrameReleaseHelper"

    const-string v1, "Vsync sampling disabled due to platform error"

    invoke-static {v0, v1, p0}, Lop5;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public doFrame(J)V
    .locals 2

    iput-wide p1, p0, Lprb$e;->b:J

    iget-object p1, p0, Lprb$e;->e:Landroid/view/Choreographer;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object p0, p0, Lprb$e;->c:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lprb$e;->e:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget v1, p0, Lprb$e;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lprb$e;->f:I

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lprb$e;->b:J

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lprb$e;->f()V

    return v0

    :cond_1
    invoke-virtual {p0}, Lprb$e;->b()V

    return v0

    :cond_2
    invoke-virtual {p0}, Lprb$e;->c()V

    return v0
.end method
