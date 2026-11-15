.class public final Lcd7;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcd7$a;
    }
.end annotation


# instance fields
.field public final c:Lt74;

.field public final d:Z


# direct methods
.method public constructor <init>(Lld7;Lt74;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Lcd7;->c:Lt74;

    iput-boolean p3, p0, Lcd7;->d:Z

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 3

    new-instance v0, Lcd7$a;

    iget-object v1, p0, Lcd7;->c:Lt74;

    iget-boolean v2, p0, Lcd7;->d:Z

    invoke-direct {v0, p1, v1, v2}, Lcd7$a;-><init>(Lpd7;Lt74;Z)V

    iget-object v1, v0, Lcd7$a;->e:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v1}, Lpd7;->onSubscribe(Lrc2;)V

    iget-object p0, p0, Ln3;->b:Lld7;

    invoke-interface {p0, v0}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
