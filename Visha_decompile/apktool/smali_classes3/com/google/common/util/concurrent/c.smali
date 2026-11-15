.class public abstract Lcom/google/common/util/concurrent/c;
.super Lcom/google/common/util/concurrent/AbstractFuture$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/c$b;,
        Lcom/google/common/util/concurrent/c$c;,
        Lcom/google/common/util/concurrent/c$d;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/common/util/concurrent/c$b;

.field public static final e:Lkj5;


# instance fields
.field public volatile b:Ljava/util/Set;

.field public volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkj5;

    const-class v1, Lcom/google/common/util/concurrent/c;

    invoke-direct {v0, v1}, Lkj5;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/c;->e:Lkj5;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/c$c;

    const-class v3, Ljava/util/Set;

    const-string v4, "b"

    invoke-static {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v4, "c"

    invoke-static {v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/google/common/util/concurrent/c$c;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/google/common/util/concurrent/c$d;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/c$d;-><init>(Lcom/google/common/util/concurrent/c$a;)V

    move-object v0, v1

    :goto_0
    sput-object v2, Lcom/google/common/util/concurrent/c;->d:Lcom/google/common/util/concurrent/c$b;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/common/util/concurrent/c;->e:Lkj5;

    invoke-virtual {v1}, Lkj5;->a()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/c;->b:Ljava/util/Set;

    iput p1, p0, Lcom/google/common/util/concurrent/c;->c:I

    return-void
.end method

.method public static synthetic o(Lcom/google/common/util/concurrent/c;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/c;->b:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic p(Lcom/google/common/util/concurrent/c;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/c;->b:Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic q(Lcom/google/common/util/concurrent/c;)I
    .locals 1

    iget v0, p0, Lcom/google/common/util/concurrent/c;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/c;->c:I

    return v0
.end method


# virtual methods
.method public abstract r(Ljava/util/Set;)V
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/c;->b:Ljava/util/Set;

    return-void
.end method

.method public final t()I
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/c;->d:Lcom/google/common/util/concurrent/c$b;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/c$b;->b(Lcom/google/common/util/concurrent/c;)I

    move-result p0

    return p0
.end method

.method public final u()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Sets;->f()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/c;->r(Ljava/util/Set;)V

    sget-object v1, Lcom/google/common/util/concurrent/c;->d:Lcom/google/common/util/concurrent/c$b;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/c$b;->a(Lcom/google/common/util/concurrent/c;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/google/common/util/concurrent/c;->b:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    :cond_0
    return-object v0
.end method
