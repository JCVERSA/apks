.class public abstract Lcom/google/common/util/concurrent/ClosingFuture;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ClosingFuture$b;,
        Lcom/google/common/util/concurrent/ClosingFuture$State;,
        Lcom/google/common/util/concurrent/ClosingFuture$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/util/concurrent/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/q;

    .line 2
    .line 3
    const-class v1, Lcom/google/common/util/concurrent/ClosingFuture;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->a:Lcom/google/common/util/concurrent/q;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;->d(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static d(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$a;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/ClosingFuture$b;->a(Lcom/google/common/util/concurrent/ClosingFuture$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
