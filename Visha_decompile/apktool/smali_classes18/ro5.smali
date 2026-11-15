.class public final Lro5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lro5$a;,
        Lro5$b;
    }
.end annotation


# static fields
.field public static final e:Lro5$a;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final h:Ly7a;


# instance fields
.field private volatile synthetic _next$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:J

.field public final a:I

.field public final b:Z

.field public final c:I

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lro5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lro5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lro5;->e:Lro5$a;

    const-class v0, Ljava/lang/Object;

    const-string v1, "_next$volatile"

    const-class v2, Lro5;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lro5;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_state$volatile"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lro5;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    new-instance v0, Ly7a;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lro5;->h:Ly7a;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lro5;->a:I

    iput-boolean p2, p0, Lro5;->b:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lro5;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lro5;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const p0, 0x3fffffff    # 1.9999999f

    const-string v0, "Check failed."

    if-gt p2, p0, :cond_1

    and-int p0, p1, p2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lro5;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lro5;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 12

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/high16 v1, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v1, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1

    sget-object p0, Lro5;->e:Lro5$a;

    invoke-virtual {p0, v3, v4}, Lro5$a;->a(J)I

    move-result p0

    return p0

    :cond_1
    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v5, v3

    const/16 v2, 0x1e

    shr-long/2addr v5, v2

    long-to-int v9, v5

    iget v10, p0, Lro5;->c:I

    add-int/lit8 v2, v9, 0x2

    and-int/2addr v2, v10

    and-int v5, v1, v10

    const/4 v6, 0x1

    if-ne v2, v5, :cond_2

    return v6

    :cond_2
    iget-boolean v2, p0, Lro5;->b:Z

    const v5, 0x3fffffff    # 1.9999999f

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    and-int v11, v9, v10

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, p0, Lro5;->a:I

    const/16 v3, 0x400

    if-lt v2, v3, :cond_3

    sub-int/2addr v9, v1

    and-int v1, v9, v5

    shr-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    :cond_3
    return v6

    :cond_4
    add-int/lit8 v1, v9, 0x1

    and-int/2addr v1, v5

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sget-object v5, Lro5;->e:Lro5$a;

    invoke-virtual {v5, v3, v4, v1}, Lro5$a;->c(JI)J

    move-result-wide v5

    move-object v1, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    and-int v1, v9, v10

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_5
    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v7

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lro5;->l()Lro5;

    move-result-object p0

    invoke-virtual {p0, v9, p1}, Lro5;->e(ILjava/lang/Object;)Lro5;

    move-result-object p0

    if-nez p0, :cond_5

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final b(J)Lro5;
    .locals 6

    new-instance v0, Lro5;

    iget v1, p0, Lro5;->a:I

    mul-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lro5;->b:Z

    invoke-direct {v0, v1, v2}, Lro5;-><init>(IZ)V

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, p1

    long-to-int v1, v1

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v2, p1

    const/16 v4, 0x1e

    shr-long/2addr v2, v4

    long-to-int v2, v2

    :goto_0
    iget v3, p0, Lro5;->c:I

    and-int v4, v1, v3

    and-int/2addr v3, v2

    if-eq v4, v3, :cond_1

    invoke-virtual {p0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    iget v4, p0, Lro5;->c:I

    and-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lro5$b;

    invoke-direct {v3, v1}, Lro5$b;-><init>(I)V

    :cond_0
    invoke-virtual {v0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v4

    iget v5, v0, Lro5;->c:I

    and-int/2addr v5, v1

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p0

    sget-object v1, Lro5;->e:Lro5$a;

    const-wide/high16 v2, 0x1000000000000000L

    invoke-virtual {v1, p1, p2, v2, v3}, Lro5$a;->d(JJ)J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    return-object v0
.end method

.method public final c(J)Lro5;
    .locals 4

    invoke-static {}, Lro5;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lro5;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lro5;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lro5;->b(J)Lro5;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lu3;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final d()Z
    .locals 10

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    const/4 v9, 0x1

    if-eqz v4, :cond_1

    return v9

    :cond_1
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    or-long v4, v2, v0

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v9
.end method

.method public final e(ILjava/lang/Object;)Lro5;
    .locals 2

    invoke-virtual {p0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget v1, p0, Lro5;->c:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lro5$b;

    if-eqz v1, :cond_0

    check-cast v0, Lro5$b;

    iget v0, v0, Lro5$b;->a:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget v1, p0, Lro5;->c:I

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic f()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    iget-object p0, p0, Lro5;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public final g()I
    .locals 4

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    long-to-int p0, v2

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p0

    const p0, 0x3fffffff    # 1.9999999f

    and-int/2addr p0, v0

    return p0
.end method

.method public final j()Z
    .locals 4

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    long-to-int p0, v2

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()J
    .locals 9

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v6

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1

    return-wide v2

    :cond_1
    or-long v7, v2, v0

    move-object v0, v6

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v7
.end method

.method public final l()Lro5;
    .locals 2

    invoke-virtual {p0}, Lro5;->k()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lro5;->c(J)Lro5;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/high16 v1, 0x1000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    sget-object p0, Lro5;->h:Ly7a;

    return-object p0

    :cond_1
    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, v3

    long-to-int v7, v1

    const-wide v1, 0xfffffffc0000000L

    and-long/2addr v1, v3

    const/16 v5, 0x1e

    shr-long/2addr v1, v5

    long-to-int v1, v1

    iget v2, p0, Lro5;->c:I

    and-int/2addr v1, v2

    and-int/2addr v2, v7

    const/4 v8, 0x0

    if-ne v1, v2, :cond_2

    return-object v8

    :cond_2
    invoke-virtual {p0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    iget v2, p0, Lro5;->c:I

    and-int/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    iget-boolean v1, p0, Lro5;->b:Z

    if-eqz v1, :cond_0

    return-object v8

    :cond_3
    instance-of v1, v9, Lro5$b;

    if-eqz v1, :cond_4

    return-object v8

    :cond_4
    add-int/lit8 v1, v7, 0x1

    const v2, 0x3fffffff    # 1.9999999f

    and-int v10, v1, v2

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sget-object v2, Lro5;->e:Lro5$a;

    invoke-virtual {v2, v3, v4, v10}, Lro5$a;->b(JI)J

    move-result-wide v5

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget p0, p0, Lro5;->c:I

    and-int/2addr p0, v7

    invoke-virtual {v0, p0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v9

    :cond_5
    iget-boolean v1, p0, Lro5;->b:Z

    if-eqz v1, :cond_0

    :cond_6
    invoke-virtual {p0, v7, v10}, Lro5;->n(II)Lro5;

    move-result-object p0

    if-nez p0, :cond_6

    return-object v9
.end method

.method public final n(II)Lro5;
    .locals 7

    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    long-to-int v6, v0

    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lro5;->l()Lro5;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lro5;->i()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sget-object v1, Lro5;->e:Lro5$a;

    invoke-virtual {v1, v2, v3, p2}, Lro5$a;->b(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lro5;->f()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    iget p0, p0, Lro5;->c:I

    and-int/2addr p0, v6

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p2
.end method
