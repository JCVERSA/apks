.class public final Lcom/google/common/util/concurrent/g;
.super Lcom/google/common/util/concurrent/AbstractFuture$h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;-><init>()V

    return-void
.end method

.method public static o()Lcom/google/common/util/concurrent/g;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/g;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/g;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public setFuture(Lim5;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lim5;)Z

    move-result p0

    return p0
.end method
