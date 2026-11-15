.class public abstract Lsf0;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# instance fields
.field public b:Lrc2;

.field public volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsf0;->c:Z

    iget-object p0, p0, Lsf0;->b:Lrc2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrc2;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lsf0;->c:Z

    return p0
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onSubscribe(Lrc2;)V
    .locals 0

    iput-object p1, p0, Lsf0;->b:Lrc2;

    iget-boolean p0, p0, Lsf0;->c:Z

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lrc2;->dispose()V

    :cond_0
    return-void
.end method
