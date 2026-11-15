.class public Landroidx/work/impl/background/greedy/DelayedWorkTracker;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final d:Ljava/lang/String;


# instance fields
.field final a:Landroidx/work/impl/background/greedy/a;

.field private final b:Landroidx/work/o;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DelayedWorkTracker"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/background/greedy/a;Landroidx/work/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->a:Landroidx/work/impl/background/greedy/a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b:Landroidx/work/o;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->c:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Lj4/u;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->c:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p1, Lj4/u;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Runnable;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b:Landroidx/work/o;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/work/o;->a(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;-><init>(Landroidx/work/impl/background/greedy/DelayedWorkTracker;Lj4/u;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->c:Ljava/util/Map;

    .line 24
    .line 25
    iget-object v2, p1, Lj4/u;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p1}, Lj4/u;->c()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    sub-long/2addr v3, v1

    .line 39
    iget-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b:Landroidx/work/o;

    .line 40
    .line 41
    invoke-interface {p1, v3, v4, v0}, Landroidx/work/o;->b(JLjava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->b:Landroidx/work/o;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/work/o;->a(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
