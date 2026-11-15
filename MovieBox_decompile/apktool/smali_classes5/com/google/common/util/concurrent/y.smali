.class public final Lcom/google/common/util/concurrent/y;
.super Lcom/google/common/util/concurrent/AbstractFuture$h;
.source "source.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static s()Lcom/google/common/util/concurrent/y;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/y;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/util/concurrent/y;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setFuture(Lcom/google/common/util/concurrent/r;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/r;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
