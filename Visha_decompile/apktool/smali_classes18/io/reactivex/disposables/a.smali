.class public abstract Lio/reactivex/disposables/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lrc2;
    .locals 1

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object v0
.end method

.method public static b()Lrc2;
    .locals 1

    sget-object v0, Lio/reactivex/internal/functions/Functions;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lio/reactivex/disposables/a;->d(Ljava/lang/Runnable;)Lrc2;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ld5;)Lrc2;
    .locals 1

    const-string v0, "run is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/disposables/ActionDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/ActionDisposable;-><init>(Ld5;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Runnable;)Lrc2;
    .locals 1

    const-string v0, "run is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/disposables/RunnableDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/disposables/RunnableDisposable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
