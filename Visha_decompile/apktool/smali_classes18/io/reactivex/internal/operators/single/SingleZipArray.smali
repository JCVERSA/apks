.class public final Lio/reactivex/internal/operators/single/SingleZipArray;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleZipArray$a;,
        Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;,
        Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;
    }
.end annotation


# instance fields
.field public final a:[Lmn9;

.field public final b:Lt74;


# direct methods
.method public constructor <init>([Lmn9;Lt74;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->a:[Lmn9;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->b:Lt74;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->a:[Lmn9;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    new-instance v1, Lio/reactivex/internal/operators/single/a$a;

    new-instance v2, Lio/reactivex/internal/operators/single/SingleZipArray$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/single/SingleZipArray$a;-><init>(Lio/reactivex/internal/operators/single/SingleZipArray;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/a$a;-><init>(Lin9;Lt74;)V

    invoke-interface {v0, v1}, Lmn9;->a(Lin9;)V

    return-void

    :cond_0
    new-instance v2, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleZipArray;->b:Lt74;

    invoke-direct {v2, p1, v1, p0}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;-><init>(Lin9;ILt74;)V

    invoke-interface {p1, v2}, Lin9;->onSubscribe(Lrc2;)V

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    aget-object p0, v0, v3

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "One of the sources is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->innerError(Ljava/lang/Throwable;I)V

    return-void

    :cond_2
    iget-object p1, v2, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Lmn9;->a(Lin9;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
