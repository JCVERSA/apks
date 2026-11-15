.class public abstract Landroidx/datastore/core/StorageConnectionKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/datastore/core/x;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/core/StorageConnectionKt$readData$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/core/StorageConnectionKt$readData$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0, p1}, Landroidx/datastore/core/x;->d(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
