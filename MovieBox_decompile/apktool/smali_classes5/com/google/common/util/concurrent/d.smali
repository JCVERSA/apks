.class abstract Lcom/google/common/util/concurrent/d;
.super Lcom/google/common/util/concurrent/AbstractFuture$h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/d$b;,
        Lcom/google/common/util/concurrent/d$c;,
        Lcom/google/common/util/concurrent/d$d;
    }
.end annotation


# static fields
.field private static final c:Lcom/google/common/util/concurrent/d$b;

.field private static final d:Lcom/google/common/util/concurrent/q;


# instance fields
.field private volatile a:Ljava/util/Set;

.field private volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/q;

    .line 2
    .line 3
    const-class v1, Lcom/google/common/util/concurrent/d;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/common/util/concurrent/d;->d:Lcom/google/common/util/concurrent/q;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/d$c;

    .line 12
    .line 13
    const-class v3, Ljava/util/Set;

    .line 14
    .line 15
    const-string v4, "a"

    .line 16
    .line 17
    invoke-static {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "b"

    .line 22
    .line 23
    invoke-static {v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v2, v3, v1}, Lcom/google/common/util/concurrent/d$c;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    new-instance v2, Lcom/google/common/util/concurrent/d$d;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/d$d;-><init>(Lcom/google/common/util/concurrent/d$a;)V

    .line 35
    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :goto_0
    sput-object v2, Lcom/google/common/util/concurrent/d;->c:Lcom/google/common/util/concurrent/d$b;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    sget-object v1, Lcom/google/common/util/concurrent/d;->d:Lcom/google/common/util/concurrent/q;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/q;->a()Ljava/util/logging/Logger;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 49
    .line 50
    const-string v3, "SafeAtomicHelper is broken!"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
