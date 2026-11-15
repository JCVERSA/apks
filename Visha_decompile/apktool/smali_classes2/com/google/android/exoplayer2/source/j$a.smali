.class public Lcom/google/android/exoplayer2/source/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/j$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/i$b;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/j$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/i$b;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/i$b;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/source/j$a;->a:I

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/j$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    .line 6
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/j$a;->d:J

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/j$a;->n(Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/j$a;->m(Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/j$a;->k(Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/j$a;->j(Lcom/google/android/exoplayer2/source/j;Lih6;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/j$a;->l(Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/j;)V
    .locals 1

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/google/android/exoplayer2/source/j$a$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/j$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/j;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(J)J
    .locals 3

    invoke-static {p1, p2}, Lblb;->P0(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/j$a;->d:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method public h(ILcom/google/android/exoplayer2/k;ILjava/lang/Object;J)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lih6;

    move-wide/from16 v1, p5

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lih6;-><init>(IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/j$a;->i(Lih6;)V

    return-void
.end method

.method public i(Lih6;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/j$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/j$a$a;->b:Lcom/google/android/exoplayer2/source/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/j$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lsl6;

    invoke-direct {v3, p0, v2, p1}, Lsl6;-><init>(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lih6;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic j(Lcom/google/android/exoplayer2/source/j;Lih6;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/j$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/j$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/exoplayer2/source/j;->g(ILcom/google/android/exoplayer2/source/i$b;Lih6;)V

    return-void
.end method

.method public final synthetic k(Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/j$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/j$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0, p2, p3}, Lcom/google/android/exoplayer2/source/j;->p(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V

    return-void
.end method

.method public final synthetic l(Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/j$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/j$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0, p2, p3}, Lcom/google/android/exoplayer2/source/j;->i(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V

    return-void
.end method

.method public final synthetic m(Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 7

    iget v1, p0, Lcom/google/android/exoplayer2/source/j$a;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/j$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/j;->t(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final synthetic n(Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/j$a;->a:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/j$a;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, v0, p0, p2, p3}, Lcom/google/android/exoplayer2/source/j;->s(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V

    return-void
.end method

.method public o(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lih6;

    move-wide/from16 v1, p7

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lih6;-><init>(IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    move-object v1, p1

    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/j$a;->p(Lin5;Lih6;)V

    return-void
.end method

.method public p(Lin5;Lih6;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/j$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/j$a$a;->b:Lcom/google/android/exoplayer2/source/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/j$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lol6;

    invoke-direct {v3, p0, v2, p1, p2}, Lol6;-><init>(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lih6;

    move-wide/from16 v1, p7

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lih6;-><init>(IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    move-object v1, p1

    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/j$a;->r(Lin5;Lih6;)V

    return-void
.end method

.method public r(Lin5;Lih6;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/j$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/j$a$a;->b:Lcom/google/android/exoplayer2/source/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/j$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lkl6;

    invoke-direct {v3, p0, v2, p1, p2}, Lkl6;-><init>(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lih6;

    move-wide/from16 v1, p7

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lih6;-><init>(IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/google/android/exoplayer2/source/j$a;->t(Lin5;Lih6;Ljava/io/IOException;Z)V

    return-void
.end method

.method public t(Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/j$a$a;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/j$a$a;->b:Lcom/google/android/exoplayer2/source/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/j$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lml6;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lml6;-><init>(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lih6;

    move-wide/from16 v1, p7

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/j$a;->g(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lih6;-><init>(IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    move-object v1, p1

    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/j$a;->v(Lin5;Lih6;)V

    return-void
.end method

.method public v(Lin5;Lih6;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/j$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/j$a$a;->b:Lcom/google/android/exoplayer2/source/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/j$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lql6;

    invoke-direct {v3, p0, v2, p1, p2}, Lql6;-><init>(Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/j;Lin5;Lih6;)V

    invoke-static {v1, v3}, Lblb;->z0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w(Lcom/google/android/exoplayer2/source/j;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/j$a$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/j$a$a;->b:Lcom/google/android/exoplayer2/source/j;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x(ILcom/google/android/exoplayer2/source/i$b;J)Lcom/google/android/exoplayer2/source/j$a;
    .locals 7

    new-instance v6, Lcom/google/android/exoplayer2/source/j$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/j$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/j$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/i$b;J)V

    return-object v6
.end method
