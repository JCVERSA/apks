.class public abstract Lcom/google/common/util/concurrent/ClosingFuture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ClosingFuture$b;,
        Lcom/google/common/util/concurrent/ClosingFuture$State;,
        Lcom/google/common/util/concurrent/ClosingFuture$a;
    }
.end annotation


# static fields
.field public static final a:Lkj5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkj5;

    const-class v1, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {v0, v1}, Lkj5;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->a:Lkj5;

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic c(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;->d(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V

    return-void
.end method

.method public static d(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$a;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$a;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;)V

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/ClosingFuture$b;->a(Lcom/google/common/util/concurrent/ClosingFuture$a;)V

    return-void
.end method
