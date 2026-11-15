.class public abstract Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;

.field private static final b:Lcom/google/common/util/concurrent/q;

.field private static final c:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMaker;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->l()Lcom/google/common/collect/MapMaker;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->i()Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 15
    .line 16
    new-instance v0, Lcom/google/common/util/concurrent/q;

    .line 17
    .line 18
    const-class v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Lcom/google/common/util/concurrent/q;

    .line 24
    .line 25
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->c:Ljava/lang/ThreadLocal;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic a()Lcom/google/common/util/concurrent/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Lcom/google/common/util/concurrent/q;

    .line 2
    .line 3
    return-object v0
.end method
