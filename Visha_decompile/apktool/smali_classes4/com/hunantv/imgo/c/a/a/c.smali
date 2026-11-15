.class Lcom/hunantv/imgo/c/a/a/c;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Lcom/hunantv/imgo/c/a/a/a;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/hunantv/imgo/c/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x2710

    iput p1, p0, Lcom/hunantv/imgo/c/a/a/c;->c:I

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/hunantv/imgo/c/a/a/a;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/hunantv/imgo/c/a/a/a;-><init>(Landroid/os/Looper;Lcom/hunantv/imgo/c/a;)V

    iput-object p1, p0, Lcom/hunantv/imgo/c/a/a/c;->b:Lcom/hunantv/imgo/c/a/a/a;

    iput-boolean p4, p0, Lcom/hunantv/imgo/c/a/a/c;->a:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/hunantv/imgo/c/a/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/c/a/a/c;->b:Lcom/hunantv/imgo/c/a/a/a;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/imgo/c/a/a/c;->c:I

    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/imgo/c/a/a/c;->a:Z

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/c/a/a/c;->c:I

    return p0
.end method

.method public d()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
