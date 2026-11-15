.class public final Lj7e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le7e;

.field public final b:Lv6e;

.field public final c:Ldbh;

.field public final d:Ldbh;

.field public final e:Lztg;

.field public f:J

.field public g:Lzhf;

.field public h:J

.field public final i:Lc6e;


# direct methods
.method public constructor <init>(Lc6e;Le7e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj7e;->i:Lc6e;

    iput-object p2, p0, Lj7e;->a:Le7e;

    new-instance p1, Lv6e;

    invoke-direct {p1}, Lv6e;-><init>()V

    iput-object p1, p0, Lj7e;->b:Lv6e;

    new-instance p1, Ldbh;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ldbh;-><init>(I)V

    iput-object p1, p0, Lj7e;->c:Ldbh;

    new-instance p1, Ldbh;

    invoke-direct {p1, p2}, Ldbh;-><init>(I)V

    iput-object p1, p0, Lj7e;->d:Ldbh;

    new-instance p1, Lztg;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lztg;-><init>(I)V

    iput-object p1, p0, Lj7e;->e:Lztg;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lj7e;->f:J

    sget-object p1, Lzhf;->d:Lzhf;

    iput-object p1, p0, Lj7e;->g:Lzhf;

    return-void
.end method

.method public static e(Ldbh;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ldbh;->a()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    :goto_1
    invoke-virtual {p0}, Ldbh;->a()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Ldbh;->b()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ldbh;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lj7e;->e:Lztg;

    invoke-virtual {v0}, Lztg;->c()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lj7e;->f:J

    iget-object v0, p0, Lj7e;->d:Ldbh;

    invoke-virtual {v0}, Ldbh;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lj7e;->e(Ldbh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lj7e;->h:J

    :cond_0
    iget-object p0, p0, Lj7e;->c:Ldbh;

    invoke-virtual {p0}, Ldbh;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lj7e;->e(Ldbh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzhf;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ldbh;->d(JLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final b(IJ)V
    .locals 4

    iget-object v0, p0, Lj7e;->e:Lztg;

    invoke-virtual {v0}, Lztg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj7e;->a:Le7e;

    invoke-virtual {v0, p1}, Le7e;->f(I)V

    iput-wide p2, p0, Lj7e;->h:J

    return-void

    :cond_0
    iget-object p1, p0, Lj7e;->d:Ldbh;

    iget-wide v0, p0, Lj7e;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Ldbh;->d(JLjava/lang/Object;)V

    return-void
.end method

.method public final c(II)V
    .locals 4

    iget-wide v0, p0, Lj7e;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    iget-object p0, p0, Lj7e;->c:Ldbh;

    new-instance v2, Lzhf;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, p1, p2, v3}, Lzhf;-><init>(IIF)V

    invoke-virtual {p0, v0, v1, v2}, Ldbh;->d(JLjava/lang/Object;)V

    return-void
.end method

.method public final d(JJ)V
    .locals 17

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lj7e;->e:Lztg;

    invoke-virtual {v1}, Lztg;->d()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lj7e;->d:Ldbh;

    invoke-virtual {v1}, Lztg;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ldbh;->c(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v15, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Lj7e;->h:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lj7e;->h:J

    iget-object v2, v0, Lj7e;->a:Le7e;

    invoke-virtual {v2, v15}, Le7e;->f(I)V

    :cond_1
    iget-object v2, v0, Lj7e;->a:Le7e;

    iget-wide v10, v0, Lj7e;->h:J

    iget-object v14, v0, Lj7e;->b:Lv6e;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v2

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v16, v14

    invoke-virtual/range {v3 .. v14}, Le7e;->a(JJJJZZLv6e;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-eq v3, v15, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lztg;->b()J

    iget-object v0, v0, Lj7e;->i:Lc6e;

    iget-object v0, v0, Lc6e;->b:Le6e;

    invoke-static {v0}, Le6e;->h(Le6e;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    invoke-virtual {v1}, Lztg;->b()J

    move-result-wide v4

    iget-object v1, v0, Lj7e;->c:Ldbh;

    invoke-virtual {v1, v4, v5}, Ldbh;->c(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzhf;

    if-eqz v1, :cond_4

    sget-object v6, Lzhf;->d:Lzhf;

    invoke-virtual {v1, v6}, Lzhf;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lj7e;->g:Lzhf;

    invoke-virtual {v1, v6}, Lzhf;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iput-object v1, v0, Lj7e;->g:Lzhf;

    iget-object v6, v0, Lj7e;->i:Lc6e;

    invoke-virtual {v6, v1}, Lc6e;->a(Lzhf;)V

    :cond_4
    if-nez v3, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    goto :goto_1

    :cond_5
    invoke-virtual/range {v16 .. v16}, Lv6e;->d()J

    move-result-wide v6

    :goto_1
    iget-object v1, v0, Lj7e;->i:Lc6e;

    invoke-virtual {v2}, Le7e;->n()Z

    move-result v8

    move-wide v2, v6

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lc6e;->b(JJZ)V

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method
