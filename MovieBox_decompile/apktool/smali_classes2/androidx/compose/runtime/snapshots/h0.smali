.class public final Landroidx/compose/runtime/snapshots/h0;
.super Landroidx/compose/runtime/snapshots/j;
.source "source.java"


# instance fields
.field private final g:Landroidx/compose/runtime/snapshots/j;

.field private final h:Z

.field private final i:Z

.field private j:Lkotlin/jvm/functions/Function1;

.field private final k:Lkotlin/jvm/functions/Function1;

.field private final l:J

.field private final m:Landroidx/compose/runtime/snapshots/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;ZZ)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->e:Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$a;->a()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/runtime/snapshots/j;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/h0;->g:Landroidx/compose/runtime/snapshots/j;

    .line 13
    .line 14
    iput-boolean p3, p0, Landroidx/compose/runtime/snapshots/h0;->h:Z

    .line 15
    .line 16
    iput-boolean p4, p0, Landroidx/compose/runtime/snapshots/h0;->i:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f()Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/b;->H()Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_1
    invoke-static {p2, p1, p3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->l(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/h0;->j:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    invoke-static {}, Landroidx/compose/runtime/b;->a()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/h0;->l:J

    .line 51
    .line 52
    iput-object p0, p0, Landroidx/compose/runtime/snapshots/h0;->m:Landroidx/compose/runtime/snapshots/j;

    .line 53
    .line 54
    return-void
.end method

.method private final A()Landroidx/compose/runtime/snapshots/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/h0;->g:Landroidx/compose/runtime/snapshots/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->f()Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/runtime/snapshots/j;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method


# virtual methods
.method public B()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/h0;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/h0;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public D(Landroidx/compose/runtime/snapshots/j;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->b()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 5
    .line 6
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public E(Landroidx/compose/runtime/snapshots/j;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/u;->b()Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 5
    .line 6
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p1
.end method

.method public F(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/h0;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/j;->t(Z)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/h0;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/h0;->g:Landroidx/compose/runtime/snapshots/j;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->d()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/h0;->A()Landroidx/compose/runtime/snapshots/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/h0;->A()Landroidx/compose/runtime/snapshots/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->g()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public bridge synthetic h()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/h0;->B()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/h0;->A()Landroidx/compose/runtime/snapshots/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public k()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/h0;->k:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic m(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/h0;->D(Landroidx/compose/runtime/snapshots/j;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic n(Landroidx/compose/runtime/snapshots/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/h0;->E(Landroidx/compose/runtime/snapshots/j;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/h0;->A()Landroidx/compose/runtime/snapshots/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j;->o()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p(Landroidx/compose/runtime/snapshots/c0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/h0;->A()Landroidx/compose/runtime/snapshots/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/j;->p(Landroidx/compose/runtime/snapshots/c0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/h0;->B()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->L(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/h0;->h:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/h0;->A()Landroidx/compose/runtime/snapshots/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/snapshots/j;->x(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->d(Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/j;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/h0;->A()Landroidx/compose/runtime/snapshots/j;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/j;->x(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/j;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_0
    return-object p1
.end method
