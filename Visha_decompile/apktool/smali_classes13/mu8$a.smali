.class public Lmu8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmu8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lpd7;


# direct methods
.method public constructor <init>(Lpd7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmu8$a;->b:Lpd7;

    return-void
.end method


# virtual methods
.method public a(Lgu8;)V
    .locals 0

    iget-object p0, p0, Lmu8$a;->b:Lpd7;

    invoke-static {p1}, Lku8;->b(Lgu8;)Lku8;

    move-result-object p1

    invoke-interface {p0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lmu8$a;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmu8$a;->b:Lpd7;

    invoke-static {p1}, Lku8;->a(Ljava/lang/Throwable;)Lku8;

    move-result-object p1

    invoke-interface {v0, p1}, Lpd7;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lmu8$a;->b:Lpd7;

    invoke-interface {p0}, Lpd7;->onComplete()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    iget-object p0, p0, Lmu8$a;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, p0}, [Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Lyw8;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lgu8;

    invoke-virtual {p0, p1}, Lmu8$a;->a(Lgu8;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    iget-object p0, p0, Lmu8$a;->b:Lpd7;

    invoke-interface {p0, p1}, Lpd7;->onSubscribe(Lrc2;)V

    return-void
.end method
