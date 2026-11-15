.class public final Lqc7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lin9;

.field public final c:J

.field public final d:Ljava/lang/Object;

.field public e:Lrc2;

.field public f:J

.field public g:Z


# direct methods
.method public constructor <init>(Lin9;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc7$a;->b:Lin9;

    iput-wide p2, p0, Lqc7$a;->c:J

    iput-object p4, p0, Lqc7$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Lqc7$a;->e:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lqc7$a;->e:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lqc7$a;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqc7$a;->g:Z

    iget-object v0, p0, Lqc7$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lqc7$a;->b:Lin9;

    invoke-interface {p0, v0}, Lin9;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lqc7$a;->b:Lin9;

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {p0, v0}, Lin9;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lqc7$a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqc7$a;->g:Z

    iget-object p0, p0, Lqc7$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lqc7$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lqc7$a;->f:J

    iget-wide v2, p0, Lqc7$a;->c:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqc7$a;->g:Z

    iget-object v0, p0, Lqc7$a;->e:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    iget-object p0, p0, Lqc7$a;->b:Lin9;

    invoke-interface {p0, p1}, Lin9;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lqc7$a;->f:J

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lqc7$a;->e:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lqc7$a;->e:Lrc2;

    iget-object p1, p0, Lqc7$a;->b:Lin9;

    invoke-interface {p1, p0}, Lin9;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method
