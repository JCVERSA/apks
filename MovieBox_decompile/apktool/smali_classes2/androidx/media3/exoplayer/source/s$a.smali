.class public Landroidx/media3/exoplayer/source/s$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/s$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/exoplayer/source/r$b;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/source/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    .line 5
    iput-object p3, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/s$a;->l(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/source/s$a;Lf2/i;Lf2/j;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/source/s$a;->p(Lf2/i;Lf2/j;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/source/s$a;Lf2/i;Lf2/j;ILandroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/s$a;->q(Lf2/i;Lf2/j;ILandroidx/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/source/r$b;Lf2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/s$a;->r(Landroidx/media3/exoplayer/source/r$b;Lf2/j;Landroidx/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/source/s$a;Lf2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/s$a;->m(Lf2/j;Landroidx/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/source/s$a;Lf2/i;Lf2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/s$a;->o(Lf2/i;Lf2/j;Landroidx/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/source/s$a;Lf2/i;Lf2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/s$a;->n(Lf2/i;Lf2/j;Landroidx/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic l(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic m(Lf2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p2, v0, v1, p1}, Landroidx/media3/exoplayer/source/s;->r(ILandroidx/media3/exoplayer/source/r$b;Lf2/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic n(Lf2/i;Lf2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/s;->H(ILandroidx/media3/exoplayer/source/r$b;Lf2/i;Lf2/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic o(Lf2/i;Lf2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p3, v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/s;->B(ILandroidx/media3/exoplayer/source/r$b;Lf2/i;Lf2/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic p(Lf2/i;Lf2/j;Ljava/io/IOException;ZLandroidx/media3/exoplayer/source/s;)V
    .locals 7

    .line 1
    iget v1, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    move v6, p4

    .line 10
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/source/s;->l(ILandroidx/media3/exoplayer/source/r$b;Lf2/i;Lf2/j;Ljava/io/IOException;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic q(Lf2/i;Lf2/j;ILandroidx/media3/exoplayer/source/s;)V
    .locals 6

    .line 1
    iget v1, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move v5, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/source/s;->x(ILandroidx/media3/exoplayer/source/r$b;Lf2/i;Lf2/j;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic r(Landroidx/media3/exoplayer/source/r$b;Lf2/j;Landroidx/media3/exoplayer/source/s;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    invoke-interface {p3, v0, p1, p2}, Landroidx/media3/exoplayer/source/s;->w(ILandroidx/media3/exoplayer/source/r$b;Lf2/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public A(Lf2/i;Lf2/j;Ljava/io/IOException;Z)V
    .locals 7

    .line 1
    new-instance v6, Lf2/o;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lf2/o;-><init>(Landroidx/media3/exoplayer/source/s$a;Lf2/i;Lf2/j;Ljava/io/IOException;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v6}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public B(Lf2/i;II)V
    .locals 12

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    move v11, p3

    .line 19
    invoke-virtual/range {v0 .. v11}, Landroidx/media3/exoplayer/source/s$a;->C(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public C(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJI)V
    .locals 11

    .line 1
    new-instance v10, Lf2/j;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move/from16 v2, p11

    .line 25
    .line 26
    invoke-virtual {p0, p1, v10, v2}, Landroidx/media3/exoplayer/source/s$a;->D(Lf2/i;Lf2/j;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public D(Lf2/i;Lf2/j;I)V
    .locals 1

    .line 1
    new-instance v0, Lf2/m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lf2/m;-><init>(Landroidx/media3/exoplayer/source/s$a;Lf2/i;Lf2/j;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public E(Landroidx/media3/exoplayer/source/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Landroidx/media3/exoplayer/source/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/source/s$a$a;->b:Landroidx/media3/exoplayer/source/s;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public F(IJJ)V
    .locals 11

    .line 1
    new-instance v10, Lf2/j;

    .line 2
    .line 3
    invoke-static {p2, p3}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v0, v10

    .line 16
    move v2, p1

    .line 17
    invoke-direct/range {v0 .. v9}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 18
    .line 19
    .line 20
    move-object v0, p0

    .line 21
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/source/s$a;->G(Lf2/j;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public G(Lf2/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/s$a;->b:Landroidx/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/r$b;

    .line 8
    .line 9
    new-instance v1, Lf2/s;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0, p1}, Lf2/s;-><init>(Landroidx/media3/exoplayer/source/s$a;Landroidx/media3/exoplayer/source/r$b;Lf2/j;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public H(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/s$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public h(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    new-instance v1, Landroidx/media3/exoplayer/source/s$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/source/s$a$a;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public i(Landroidx/media3/common/util/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Landroidx/media3/exoplayer/source/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Landroidx/media3/exoplayer/source/s$a$a;->b:Landroidx/media3/exoplayer/source/s;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/exoplayer/source/s$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lf2/q;

    .line 24
    .line 25
    invoke-direct {v3, p1, v2}, Lf2/q;-><init>(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public j(ILandroidx/media3/common/r;ILjava/lang/Object;J)V
    .locals 11

    .line 1
    new-instance v10, Lf2/j;

    .line 2
    .line 3
    invoke-static/range {p5 .. p6}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    move-object v0, v10

    .line 14
    move v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    invoke-direct/range {v0 .. v9}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    move-object v0, p0

    .line 22
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/source/s$a;->k(Lf2/j;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public k(Lf2/j;)V
    .locals 1

    .line 1
    new-instance v0, Lf2/r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lf2/r;-><init>(Landroidx/media3/exoplayer/source/s$a;Lf2/j;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public s(Lf2/i;I)V
    .locals 11

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/s$a;->t(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public t(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V
    .locals 11

    .line 1
    new-instance v10, Lf2/j;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/s$a;->u(Lf2/i;Lf2/j;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public u(Lf2/i;Lf2/j;)V
    .locals 1

    .line 1
    new-instance v0, Lf2/p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lf2/p;-><init>(Landroidx/media3/exoplayer/source/s$a;Lf2/i;Lf2/j;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public v(Lf2/i;I)V
    .locals 11

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/s$a;->w(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public w(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V
    .locals 11

    .line 1
    new-instance v10, Lf2/j;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/s$a;->x(Lf2/i;Lf2/j;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public x(Lf2/i;Lf2/j;)V
    .locals 1

    .line 1
    new-instance v0, Lf2/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lf2/n;-><init>(Landroidx/media3/exoplayer/source/s$a;Lf2/i;Lf2/j;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/s$a;->i(Landroidx/media3/common/util/m;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public y(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 11

    .line 1
    new-instance v10, Lf2/j;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lf2/j;-><init>(IILandroidx/media3/common/r;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object/from16 v2, p11

    .line 25
    .line 26
    move/from16 v3, p12

    .line 27
    .line 28
    invoke-virtual {p0, p1, v10, v2, v3}, Landroidx/media3/exoplayer/source/s$a;->A(Lf2/i;Lf2/j;Ljava/io/IOException;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public z(Lf2/i;ILjava/io/IOException;Z)V
    .locals 13

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    move-object/from16 v11, p3

    .line 19
    .line 20
    move/from16 v12, p4

    .line 21
    .line 22
    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/source/s$a;->y(Lf2/i;IILandroidx/media3/common/r;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
