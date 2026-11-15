.class public final Lcom/google/android/exoplayer2/util/r;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/r$c;,
        Lcom/google/android/exoplayer2/util/r$b;,
        Lcom/google/android/exoplayer2/util/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/e;

.field private final b:Lcom/google/android/exoplayer2/util/o;

.field private final c:Lcom/google/android/exoplayer2/util/r$b;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final e:Ljava/util/ArrayDeque;

.field private final f:Ljava/util/ArrayDeque;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/r;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/util/r;->a:Lcom/google/android/exoplayer2/util/e;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/util/r;->c:Lcom/google/android/exoplayer2/util/r$b;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/q;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/util/q;-><init>(Lcom/google/android/exoplayer2/util/r;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplayer2/util/e;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r;->b:Lcom/google/android/exoplayer2/util/o;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/r;->h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/util/r;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/r;->g(Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private g(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/exoplayer2/util/r$c;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->c:Lcom/google/android/exoplayer2/util/r$b;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/r$c;->b(Lcom/google/android/exoplayer2/util/r$b;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Lcom/google/android/exoplayer2/util/o;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method private static synthetic h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/exoplayer2/util/r$c;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/r$c;->a(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/exoplayer2/util/r$c;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/r$c;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)Lcom/google/android/exoplayer2/util/r;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/r;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/r;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public e(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/r$b;)Lcom/google/android/exoplayer2/util/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->a:Lcom/google/android/exoplayer2/util/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/util/r;->d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)Lcom/google/android/exoplayer2/util/r;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Lcom/google/android/exoplayer2/util/o;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->a(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->b:Lcom/google/android/exoplayer2/util/o;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->obtainMessage(I)Lcom/google/android/exoplayer2/util/o$a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->b(Lcom/google/android/exoplayer2/util/o$a;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 44
    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Runnable;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->e:Ljava/util/ArrayDeque;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r;->f:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    new-instance v2, Lcom/google/android/exoplayer2/util/p;

    .line 11
    .line 12
    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/util/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/exoplayer2/util/r$c;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/r;->c:Lcom/google/android/exoplayer2/util/r$b;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/r$c;->c(Lcom/google/android/exoplayer2/util/r$b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/r;->g:Z

    .line 32
    .line 33
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/exoplayer2/util/r$c;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/r;->c:Lcom/google/android/exoplayer2/util/r$b;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/r$c;->c(Lcom/google/android/exoplayer2/util/r$b;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/r;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/r;->i(ILcom/google/android/exoplayer2/util/r$a;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/r;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
