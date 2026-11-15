.class public Landroidx/work/impl/background/greedy/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/work/impl/s;
.implements Lg4/c;
.implements Landroidx/work/impl/e;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/work/impl/d0;

.field private final c:Lg4/d;

.field private final d:Ljava/util/Set;

.field private e:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

.field private f:Z

.field private final g:Ljava/lang/Object;

.field private final h:Landroidx/work/impl/v;

.field i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "GreedyScheduler"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/a;Li4/n;Landroidx/work/impl/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->d:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Landroidx/work/impl/v;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/work/impl/v;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/work/impl/background/greedy/a;->a:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p4, p0, Landroidx/work/impl/background/greedy/a;->b:Landroidx/work/impl/d0;

    .line 21
    .line 22
    new-instance p1, Lg4/e;

    .line 23
    .line 24
    invoke-direct {p1, p3, p0}, Lg4/e;-><init>(Li4/n;Lg4/c;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/work/impl/background/greedy/a;->c:Lg4/d;

    .line 28
    .line 29
    new-instance p1, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroidx/work/a;->k()Landroidx/work/o;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p0, p2}, Landroidx/work/impl/background/greedy/DelayedWorkTracker;-><init>(Landroidx/work/impl/background/greedy/a;Landroidx/work/o;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/work/impl/background/greedy/a;->e:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/work/impl/background/greedy/a;->g:Ljava/lang/Object;

    .line 46
    .line 47
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->b:Landroidx/work/impl/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroidx/work/impl/utils/p;->b(Landroid/content/Context;Landroidx/work/a;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/work/impl/background/greedy/a;->i:Ljava/lang/Boolean;

    .line 18
    .line 19
    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/background/greedy/a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->b:Landroidx/work/impl/d0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/d0;->q()Landroidx/work/impl/Processor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->g(Landroidx/work/impl/e;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/work/impl/background/greedy/a;->f:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private i(Lj4/m;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->d:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lj4/u;

    .line 21
    .line 22
    invoke-static {v2}, Lj4/x;->a(Lj4/u;)Lj4/m;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, p1}, Lj4/m;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v3, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v5, "Stopping tracking for "

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, v3, p1}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Landroidx/work/impl/background/greedy/a;->d:Ljava/util/Set;

    .line 59
    .line 60
    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Landroidx/work/impl/background/greedy/a;->c:Lg4/d;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->d:Ljava/util/Set;

    .line 66
    .line 67
    invoke-interface {p1, v1}, Lg4/d;->a(Ljava/lang/Iterable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lj4/u;

    .line 16
    .line 17
    invoke-static {v0}, Lj4/x;->a(Lj4/u;)Lj4/m;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "Constraints not met: Cancelling work ID "

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v2, v3}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroidx/work/impl/v;->b(Lj4/m;)Landroidx/work/impl/u;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->b:Landroidx/work/impl/d0;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/work/impl/d0;->C(Landroidx/work/impl/u;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/work/impl/background/greedy/a;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->i:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "Ignoring schedule request in non-main process"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/work/j;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/greedy/a;->h()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "Cancelling work ID "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->e:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroidx/work/impl/v;->c(Ljava/lang/String;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/work/impl/u;

    .line 85
    .line 86
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->b:Landroidx/work/impl/d0;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Landroidx/work/impl/d0;->C(Landroidx/work/impl/u;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    return-void
.end method

.method public varargs c([Lj4/u;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/work/impl/background/greedy/a;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->i:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "Ignoring schedule request in a secondary process"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroidx/work/j;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-direct {p0}, Landroidx/work/impl/background/greedy/a;->h()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    array-length v2, p1

    .line 42
    const/4 v3, 0x0

    .line 43
    :goto_0
    if-ge v3, v2, :cond_8

    .line 44
    .line 45
    aget-object v4, p1, v3

    .line 46
    .line 47
    invoke-static {v4}, Lj4/x;->a(Lj4/u;)Lj4/m;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v6, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 52
    .line 53
    invoke-virtual {v6, v5}, Landroidx/work/impl/v;->a(Lj4/m;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_2
    invoke-virtual {v4}, Lj4/u;->c()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    iget-object v9, v4, Lj4/u;->b:Landroidx/work/WorkInfo$State;

    .line 70
    .line 71
    sget-object v10, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 72
    .line 73
    if-ne v9, v10, :cond_7

    .line 74
    .line 75
    cmp-long v5, v7, v5

    .line 76
    .line 77
    if-gez v5, :cond_3

    .line 78
    .line 79
    iget-object v5, p0, Landroidx/work/impl/background/greedy/a;->e:Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    .line 80
    .line 81
    if-eqz v5, :cond_7

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->a(Lj4/u;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_3
    invoke-virtual {v4}, Lj4/u;->h()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    .line 96
    iget-object v6, v4, Lj4/u;->j:Landroidx/work/b;

    .line 97
    .line 98
    invoke-virtual {v6}, Landroidx/work/b;->h()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_4

    .line 103
    .line 104
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    sget-object v6, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v8, "Ignoring "

    .line 116
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, ". Requires device idle."

    .line 124
    .line 125
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v5, v6, v4}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    const/16 v6, 0x18

    .line 137
    .line 138
    if-lt v5, v6, :cond_5

    .line 139
    .line 140
    iget-object v5, v4, Lj4/u;->j:Landroidx/work/b;

    .line 141
    .line 142
    invoke-virtual {v5}, Landroidx/work/b;->e()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_5

    .line 147
    .line 148
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    sget-object v6, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 153
    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v8, "Ignoring "

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v4, ". Requires ContentUri triggers."

    .line 168
    .line 169
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v5, v6, v4}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    iget-object v4, v4, Lj4/u;->a:Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_6
    iget-object v5, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 190
    .line 191
    invoke-static {v4}, Lj4/x;->a(Lj4/u;)Lj4/m;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v5, v6}, Landroidx/work/impl/v;->a(Lj4/m;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-nez v5, :cond_7

    .line 200
    .line 201
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    sget-object v6, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 206
    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v8, "Starting work for "

    .line 213
    .line 214
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object v8, v4, Lj4/u;->a:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v5, v6, v7}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v5, p0, Landroidx/work/impl/background/greedy/a;->b:Landroidx/work/impl/d0;

    .line 230
    .line 231
    iget-object v6, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 232
    .line 233
    invoke-virtual {v6, v4}, Landroidx/work/impl/v;->e(Lj4/u;)Landroidx/work/impl/u;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v5, v4}, Landroidx/work/impl/d0;->z(Landroidx/work/impl/u;)V

    .line 238
    .line 239
    .line 240
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_8
    iget-object p1, p0, Landroidx/work/impl/background/greedy/a;->g:Ljava/lang/Object;

    .line 245
    .line 246
    monitor-enter p1

    .line 247
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_9

    .line 252
    .line 253
    const-string v2, ","

    .line 254
    .line 255
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    sget-object v3, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 264
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v5, "Starting tracking for "

    .line 271
    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v2, v3, v1}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->d:Ljava/util/Set;

    .line 286
    .line 287
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 288
    .line 289
    .line 290
    iget-object v0, p0, Landroidx/work/impl/background/greedy/a;->c:Lg4/d;

    .line 291
    .line 292
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->d:Ljava/util/Set;

    .line 293
    .line 294
    invoke-interface {v0, v1}, Lg4/d;->a(Ljava/lang/Iterable;)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :catchall_0
    move-exception v0

    .line 299
    goto :goto_3

    .line 300
    :cond_9
    :goto_2
    monitor-exit p1

    .line 301
    return-void

    .line 302
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    throw v0
.end method

.method public d(Lj4/m;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroidx/work/impl/v;->b(Lj4/m;)Landroidx/work/impl/u;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/work/impl/background/greedy/a;->i(Lj4/m;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public f(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lj4/u;

    .line 16
    .line 17
    invoke-static {v0}, Lj4/x;->a(Lj4/u;)Lj4/m;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroidx/work/impl/v;->a(Lj4/m;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v2, Landroidx/work/impl/background/greedy/a;->j:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "Constraints met: Scheduling work ID "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v2, v3}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroidx/work/impl/background/greedy/a;->b:Landroidx/work/impl/d0;

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/work/impl/background/greedy/a;->h:Landroidx/work/impl/v;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroidx/work/impl/v;->d(Lj4/m;)Landroidx/work/impl/u;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Landroidx/work/impl/d0;->z(Landroidx/work/impl/u;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method
