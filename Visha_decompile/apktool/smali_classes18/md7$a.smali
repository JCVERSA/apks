.class public final Lmd7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lpd7;

.field public c:Z

.field public d:Lrc2;

.field public e:J


# direct methods
.method public constructor <init>(Lpd7;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd7$a;->b:Lpd7;

    iput-wide p2, p0, Lmd7$a;->e:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Lmd7$a;->d:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lmd7$a;->d:Lrc2;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lmd7$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmd7$a;->c:Z

    iget-object v0, p0, Lmd7$a;->d:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    iget-object p0, p0, Lmd7$a;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lmd7$a;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmd7$a;->c:Z

    iget-object v0, p0, Lmd7$a;->d:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    iget-object p0, p0, Lmd7$a;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lmd7$a;->c:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lmd7$a;->e:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lmd7$a;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmd7$a;->b:Lpd7;

    invoke-interface {v1, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmd7$a;->onComplete()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 4

    iget-object v0, p0, Lmd7$a;->d:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lmd7$a;->d:Lrc2;

    iget-wide v0, p0, Lmd7$a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmd7$a;->c:Z

    invoke-interface {p1}, Lrc2;->dispose()V

    iget-object p0, p0, Lmd7$a;->b:Lpd7;

    invoke-static {p0}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lpd7;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmd7$a;->b:Lpd7;

    invoke-interface {p1, p0}, Lpd7;->onSubscribe(Lrc2;)V

    :cond_1
    :goto_0
    return-void
.end method
