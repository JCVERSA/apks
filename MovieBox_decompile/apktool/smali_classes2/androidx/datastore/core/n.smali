.class public abstract Landroidx/datastore/core/n;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Ljava/lang/String;)Landroidx/datastore/core/m;
    .locals 1

    .line 1
    const-string v0, "filePath"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/datastore/core/SingleProcessCoordinator;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/datastore/core/SingleProcessCoordinator;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
