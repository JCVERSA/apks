.class public final Li8j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly2f;

.field public final b:Le4f;

.field public final c:Lqaj;

.field public final d:Lolg;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Ll3j;

.field public i:Ld8j;

.field public j:Ld8j;

.field public k:Ld8j;

.field public l:Ld8j;

.field public m:Ld8j;

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:J

.field public q:Ljava/util/List;

.field public final r:Lq6j;


# direct methods
.method public constructor <init>(Lqaj;Lolg;Lq6j;Ll3j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li8j;->c:Lqaj;

    iput-object p2, p0, Li8j;->d:Lolg;

    iput-object p3, p0, Li8j;->r:Lq6j;

    iput-object p4, p0, Li8j;->h:Ll3j;

    new-instance p1, Ly2f;

    invoke-direct {p1}, Ly2f;-><init>()V

    iput-object p1, p0, Li8j;->a:Ly2f;

    new-instance p1, Le4f;

    invoke-direct {p1}, Le4f;-><init>()V

    iput-object p1, p0, Li8j;->b:Le4f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Li8j;->q:Ljava/util/List;

    return-void
.end method

.method public static synthetic E(Li8j;Ll4i;Lbnj;)V
    .locals 0

    iget-object p0, p0, Li8j;->c:Lqaj;

    invoke-virtual {p1}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lqaj;->r(Ljava/util/List;Lbnj;)V

    return-void
.end method

.method public static K(JJ)Z
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static i(Lw4f;Ljava/lang/Object;JJLe4f;Ly2f;)Lbnj;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p7

    invoke-virtual {p0, p1, v4}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget v5, v4, Ly2f;->c:I

    const-wide/16 v6, 0x0

    move-object v8, p6

    invoke-virtual {p0, v5, p6, v6, v7}, Lw4f;->e(ILe4f;J)Le4f;

    invoke-virtual {p0, p1}, Lw4f;->a(Ljava/lang/Object;)I

    invoke-virtual/range {p7 .. p7}, Ly2f;->b()I

    invoke-virtual {p0, p1, v4}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    invoke-virtual {v4, p2, p3}, Ly2f;->d(J)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    invoke-virtual {v4, p2, p3}, Ly2f;->c(J)I

    move-result v0

    new-instance v2, Lbnj;

    move-wide v6, p4

    invoke-direct {v2, p1, p4, p5, v0}, Lbnj;-><init>(Ljava/lang/Object;JI)V

    return-object v2

    :cond_0
    move-wide v6, p4

    invoke-virtual {v4, v5}, Ly2f;->e(I)I

    move-result v3

    new-instance v8, Lbnj;

    move-object v0, v8

    move-object v1, p1

    move v2, v5

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lbnj;-><init>(Ljava/lang/Object;IIJ)V

    return-object v8
.end method

.method public static final m(Lbnj;)Z
    .locals 1

    invoke-virtual {p0}, Lbnj;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lbnj;->e:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A()Ld8j;
    .locals 0

    iget-object p0, p0, Li8j;->j:Ld8j;

    return-object p0
.end method

.method public final B(JLo9j;)Lf8j;
    .locals 8

    iget-object v0, p0, Li8j;->l:Ld8j;

    if-nez v0, :cond_0

    iget-object v2, p3, Lo9j;->a:Lw4f;

    iget-object v3, p3, Lo9j;->b:Lbnj;

    iget-wide v4, p3, Lo9j;->c:J

    iget-wide v6, p3, Lo9j;->s:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Li8j;->f(Lw4f;Lbnj;JJ)Lf8j;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lo9j;->a:Lw4f;

    invoke-virtual {p0, p3, v0, p1, p2}, Li8j;->e(Lw4f;Ld8j;J)Lf8j;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final C(Lw4f;Lf8j;)Lf8j;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lf8j;->a:Lbnj;

    invoke-static {v3}, Li8j;->m(Lbnj;)Z

    move-result v12

    invoke-virtual {v0, v1, v3}, Li8j;->l(Lw4f;Lbnj;)Z

    move-result v13

    invoke-virtual {v0, v1, v3, v12}, Li8j;->k(Lw4f;Lbnj;Z)Z

    move-result v14

    iget-object v4, v3, Lbnj;->a:Ljava/lang/Object;

    iget-object v0, v0, Li8j;->a:Ly2f;

    invoke-virtual {v1, v4, v0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    invoke-virtual {v3}, Lbnj;->b()Z

    move-result v1

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_0

    iget v1, v3, Lbnj;->e:I

    if-ne v1, v4, :cond_1

    :cond_0
    move-wide v9, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ly2f;->g(I)J

    move-wide v9, v5

    :goto_0
    invoke-virtual {v3}, Lbnj;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v3, Lbnj;->b:I

    iget v5, v3, Lbnj;->c:I

    invoke-virtual {v0, v1, v5}, Ly2f;->f(II)J

    move-result-wide v5

    :goto_1
    move-wide/from16 v18, v5

    move-wide v6, v9

    move-wide/from16 v8, v18

    goto :goto_2

    :cond_2
    cmp-long v1, v9, v7

    if-eqz v1, :cond_3

    move-wide v8, v5

    move-wide v6, v8

    goto :goto_2

    :cond_3
    iget-wide v5, v0, Ly2f;->d:J

    goto :goto_1

    :goto_2
    invoke-virtual {v3}, Lbnj;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v3, Lbnj;->b:I

    invoke-virtual {v0, v1}, Ly2f;->k(I)Z

    goto :goto_3

    :cond_4
    iget v1, v3, Lbnj;->e:I

    if-eq v1, v4, :cond_5

    invoke-virtual {v0, v1}, Ly2f;->k(I)Z

    :cond_5
    :goto_3
    new-instance v15, Lf8j;

    iget-wide v4, v2, Lf8j;->b:J

    iget-wide v10, v2, Lf8j;->c:J

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v15

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v10

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-direct/range {v0 .. v14}, Lf8j;-><init>(Lbnj;JJJJZZZZZ)V

    return-object v15
.end method

.method public final D(Lw4f;Ljava/lang/Object;J)Lbnj;
    .locals 10

    iget-object v7, p0, Li8j;->a:Ly2f;

    invoke-virtual {p1, p2, v7}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v0

    iget v0, v0, Ly2f;->c:I

    iget-object v1, p0, Li8j;->o:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1, v1, v7, v2}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v1

    iget v1, v1, Ly2f;->c:I

    if-ne v1, v0, :cond_1

    iget-wide v0, p0, Li8j;->p:J

    :cond_0
    :goto_0
    move-wide v4, v0

    goto :goto_3

    :cond_1
    iget-object v1, p0, Li8j;->i:Ld8j;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, v1, Ld8j;->b:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v1, Ld8j;->g:Lf8j;

    iget-object v0, v0, Lf8j;->a:Lbnj;

    iget-wide v0, v0, Lbnj;->d:J

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ld8j;->g()Ld8j;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Li8j;->i:Ld8j;

    :goto_2
    if-eqz v1, :cond_5

    iget-object v4, v1, Ld8j;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {p1, v4, v7, v2}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v4

    iget v4, v4, Ly2f;->c:I

    if-ne v4, v0, :cond_4

    iget-object v0, v1, Ld8j;->g:Lf8j;

    iget-object v0, v0, Lf8j;->a:Lbnj;

    iget-wide v0, v0, Lbnj;->d:J

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ld8j;->g()Ld8j;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Li8j;->d(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Li8j;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Li8j;->e:J

    iget-object v2, p0, Li8j;->i:Ld8j;

    if-nez v2, :cond_0

    iput-object p2, p0, Li8j;->o:Ljava/lang/Object;

    iput-wide v0, p0, Li8j;->p:J

    goto :goto_0

    :goto_3
    invoke-virtual {p1, p2, v7}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    iget v0, v7, Ly2f;->c:I

    iget-object v6, p0, Li8j;->b:Le4f;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v6, v1, v2}, Lw4f;->e(ILe4f;J)Le4f;

    invoke-virtual {p1, p2}, Lw4f;->a(Ljava/lang/Object;)I

    move-result p0

    move-object v1, p2

    :goto_4
    iget p2, v6, Le4f;->m:I

    if-lt p0, p2, :cond_8

    const/4 p2, 0x1

    invoke-virtual {p1, p0, v7, p2}, Lw4f;->d(ILy2f;Z)Ly2f;

    invoke-virtual {v7}, Ly2f;->b()I

    iget-wide v8, v7, Ly2f;->d:J

    invoke-virtual {v7, v8, v9}, Ly2f;->d(J)I

    move-result p2

    if-eq p2, v3, :cond_7

    iget-object p2, v7, Ly2f;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p2

    :cond_7
    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    :cond_8
    move-object v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Li8j;->i(Lw4f;Ljava/lang/Object;JJLe4f;Ly2f;)Lbnj;

    move-result-object p0

    return-object p0
.end method

.method public final F()V
    .locals 3

    iget v0, p0, Li8j;->n:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li8j;->i:Ld8j;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Ld8j;->b:Ljava/lang/Object;

    iput-object v1, p0, Li8j;->o:Ljava/lang/Object;

    iget-object v1, v0, Ld8j;->g:Lf8j;

    iget-object v1, v1, Lf8j;->a:Lbnj;

    iget-wide v1, v1, Lbnj;->d:J

    iput-wide v1, p0, Li8j;->p:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld8j;->o()V

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Li8j;->i:Ld8j;

    iput-object v0, p0, Li8j;->l:Ld8j;

    iput-object v0, p0, Li8j;->j:Ld8j;

    iput-object v0, p0, Li8j;->k:Ld8j;

    const/4 v0, 0x0

    iput v0, p0, Li8j;->n:I

    invoke-virtual {p0}, Li8j;->j()V

    return-void
.end method

.method public final G()V
    .locals 3

    iget-object v0, p0, Li8j;->m:Ld8j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld8j;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Li8j;->m:Ld8j;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8j;

    invoke-virtual {v1}, Ld8j;->t()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Li8j;->m:Ld8j;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final H(J)V
    .locals 0

    iget-object p0, p0, Li8j;->l:Ld8j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Ld8j;->n(J)V

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 3

    iget-object v0, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld8j;

    invoke-virtual {v2}, Ld8j;->o()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Li8j;->q:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Li8j;->m:Ld8j;

    invoke-virtual {p0}, Li8j;->G()V

    :cond_1
    return-void
.end method

.method public final J(Lw4f;Ll3j;)V
    .locals 0

    iput-object p2, p0, Li8j;->h:Ll3j;

    iget-wide p1, p2, Ll3j;->a:J

    invoke-virtual {p0}, Li8j;->I()V

    return-void
.end method

.method public final L(Lzmj;)Z
    .locals 0

    iget-object p0, p0, Li8j;->l:Ld8j;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ld8j;->a:Lzmj;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final M(Lzmj;)Z
    .locals 0

    iget-object p0, p0, Li8j;->m:Ld8j;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ld8j;->a:Lzmj;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a()Z
    .locals 8

    iget-object v0, p0, Li8j;->l:Ld8j;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, v0, Ld8j;->g:Lf8j;

    iget-boolean v2, v2, Lf8j;->j:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ld8j;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li8j;->l:Ld8j;

    iget-object v0, v0, Ld8j;->g:Lf8j;

    iget-wide v4, v0, Lf8j;->e:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget p0, p0, Li8j;->n:I

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public final b(Lw4f;)I
    .locals 7

    iget-object v0, p0, Li8j;->i:Ld8j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, v0, Ld8j;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Li8j;->a:Ly2f;

    iget-object v4, p0, Li8j;->b:Le4f;

    iget v5, p0, Li8j;->f:I

    iget-boolean v6, p0, Li8j;->g:Z

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lw4f;->i(ILy2f;Le4f;IZ)I

    move-result v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Ld8j;->g:Lf8j;

    iget-boolean v1, v1, Lf8j;->h:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v1, Ld8j;->b:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Li8j;->n(Ld8j;)I

    move-result v1

    iget-object v2, v0, Ld8j;->g:Lf8j;

    invoke-virtual {p0, p1, v2}, Li8j;->C(Lw4f;Lf8j;)Lf8j;

    move-result-object p0

    iput-object p0, v0, Ld8j;->g:Lf8j;

    return v1
.end method

.method public final c(Lw4f;Ljava/lang/Object;I)J
    .locals 0

    iget-object p0, p0, Li8j;->a:Ly2f;

    invoke-virtual {p1, p2, p0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    invoke-virtual {p0, p3}, Ly2f;->g(I)J

    iget-object p0, p0, Ly2f;->g:Lewe;

    invoke-virtual {p0, p3}, Lewe;->a(I)Ld5e;

    move-result-object p0

    iget-wide p0, p0, Ld5e;->h:J

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final d(Ljava/lang/Object;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8j;

    iget-object v2, v1, Ld8j;->b:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Ld8j;->g:Lf8j;

    iget-object p0, p0, Lf8j;->a:Lbnj;

    iget-wide p0, p0, Lbnj;->d:J

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final e(Lw4f;Ld8j;J)Lf8j;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v11, v10, Ld8j;->g:Lf8j;

    invoke-virtual/range {p2 .. p2}, Ld8j;->e()J

    move-result-wide v1

    iget-wide v5, v11, Lf8j;->e:J

    add-long/2addr v1, v5

    iget-boolean v3, v11, Lf8j;->h:Z

    sub-long v7, v1, p3

    const/4 v12, -0x1

    const-wide/16 v1, 0x0

    if-eqz v3, :cond_6

    iget-object v6, v11, Lf8j;->a:Lbnj;

    iget-object v5, v6, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v9, v5}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v3

    iget v4, v0, Li8j;->f:I

    iget-boolean v13, v0, Li8j;->g:Z

    iget-object v14, v0, Li8j;->b:Le4f;

    iget-object v15, v0, Li8j;->a:Ly2f;

    move-object/from16 v1, p1

    move v2, v3

    move-object v3, v15

    move/from16 v20, v4

    move-object v4, v14

    move-object/from16 v21, v5

    move/from16 v5, v20

    move-object/from16 v22, v6

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lw4f;->i(ILy2f;Le4f;IZ)I

    move-result v1

    if-ne v1, v12, :cond_0

    :goto_0
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v9, v1, v15, v2}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v2

    iget v4, v2, Ly2f;->c:I

    iget-object v2, v15, Ly2f;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, v22

    iget-wide v5, v3, Lbnj;->d:J

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v4, v14, v12, v13}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v3

    iget v3, v3, Le4f;->m:I

    if-ne v3, v1, :cond_4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v15

    invoke-virtual/range {v1 .. v8}, Lw4f;->m(Le4f;Ly2f;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Ld8j;->g()Ld8j;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v5, v1, Ld8j;->b:Ljava/lang/Object;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v1, v1, Ld8j;->g:Lf8j;

    iget-object v1, v1, Lf8j;->a:Lbnj;

    iget-wide v5, v1, Lbnj;->d:J

    :cond_2
    :goto_1
    move-wide/from16 v18, v3

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Li8j;->d(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_2

    iget-wide v5, v0, Li8j;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    iput-wide v7, v0, Li8j;->e:J

    goto :goto_1

    :cond_4
    move-wide/from16 v18, v12

    :goto_2
    move-object/from16 v1, p1

    move-wide/from16 v3, v18

    move-object v7, v14

    move-object v8, v15

    invoke-static/range {v1 .. v8}, Li8j;->i(Lw4f;Ljava/lang/Object;JJLe4f;Ly2f;)Lbnj;

    move-result-object v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v12, v3

    if-eqz v1, :cond_5

    iget-wide v5, v11, Lf8j;->c:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    move-object/from16 v1, v21

    invoke-virtual {v9, v1, v15}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v1

    invoke-virtual {v1}, Ly2f;->b()I

    iget-object v1, v15, Ly2f;->g:Lewe;

    iget v1, v1, Lewe;->c:I

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide/from16 v5, v18

    invoke-virtual/range {v0 .. v6}, Li8j;->f(Lw4f;Lbnj;JJ)Lf8j;

    move-result-object v13

    goto/16 :goto_4

    :cond_6
    move-wide v13, v1

    iget-object v10, v11, Lf8j;->a:Lbnj;

    iget-object v15, v10, Lbnj;->a:Ljava/lang/Object;

    iget-object v3, v0, Li8j;->a:Ly2f;

    invoke-virtual {v9, v15, v3}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    invoke-virtual {v10}, Lbnj;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v5, v10, Lbnj;->b:I

    invoke-virtual {v3, v5}, Ly2f;->a(I)I

    move-result v1

    if-ne v1, v12, :cond_7

    goto/16 :goto_0

    :cond_7
    iget v1, v10, Lbnj;->c:I

    iget-object v2, v3, Ly2f;->g:Lewe;

    invoke-virtual {v2, v5}, Lewe;->a(I)Ld5e;

    move-result-object v2

    invoke-virtual {v2, v1}, Ld5e;->a(I)I

    move-result v4

    if-gez v4, :cond_8

    iget-wide v6, v11, Lf8j;->c:J

    iget-wide v10, v10, Lbnj;->d:J

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v5

    move-wide v5, v6

    move-wide v7, v10

    move v9, v12

    invoke-virtual/range {v0 .. v9}, Li8j;->g(Lw4f;Ljava/lang/Object;IIJJZ)Lf8j;

    move-result-object v13

    goto/16 :goto_4

    :cond_8
    iget-wide v1, v11, Lf8j;->c:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v1, v11

    if-nez v4, :cond_a

    iget-object v2, v0, Li8j;->b:Le4f;

    iget v4, v3, Ly2f;->c:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-object/from16 v1, p1

    move v11, v5

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v8}, Lw4f;->m(Le4f;Ly2f;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_a
    move v11, v5

    move-wide v5, v1

    :goto_3
    invoke-virtual {v0, v9, v15, v11}, Li8j;->c(Lw4f;Ljava/lang/Object;I)J

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v7, v10, Lbnj;->d:J

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Li8j;->h(Lw4f;Ljava/lang/Object;JJJZ)Lf8j;

    move-result-object v13

    goto :goto_4

    :cond_b
    iget v4, v10, Lbnj;->e:I

    if-eq v4, v12, :cond_c

    invoke-virtual {v3, v4}, Ly2f;->j(I)Z

    :cond_c
    invoke-virtual {v3, v4}, Ly2f;->e(I)I

    move-result v7

    invoke-virtual {v3, v4}, Ly2f;->k(I)Z

    invoke-virtual {v3, v4}, Ly2f;->a(I)I

    move-result v1

    if-eq v7, v1, :cond_d

    iget-wide v10, v10, Lbnj;->d:J

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v4

    move v4, v7

    move-wide v7, v10

    move v9, v12

    invoke-virtual/range {v0 .. v9}, Li8j;->g(Lw4f;Ljava/lang/Object;IIJJZ)Lf8j;

    move-result-object v13

    goto :goto_4

    :cond_d
    invoke-virtual {v0, v9, v15, v4}, Li8j;->c(Lw4f;Ljava/lang/Object;I)J

    iget-wide v7, v10, Lbnj;->d:J

    const/4 v10, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Li8j;->h(Lw4f;Ljava/lang/Object;JJJZ)Lf8j;

    move-result-object v13

    :goto_4
    return-object v13
.end method

.method public final f(Lw4f;Lbnj;JJ)Lf8j;
    .locals 10

    move-object v0, p2

    iget-object v2, v0, Lbnj;->a:Ljava/lang/Object;

    move-object v1, p0

    iget-object v3, v1, Li8j;->a:Ly2f;

    move-object v4, p1

    invoke-virtual {p1, v2, v3}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    invoke-virtual {p2}, Lbnj;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lbnj;->b:I

    iget v5, v0, Lbnj;->c:I

    iget-wide v7, v0, Lbnj;->d:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v5

    move-wide v5, p3

    invoke-virtual/range {v0 .. v9}, Li8j;->g(Lw4f;Ljava/lang/Object;IIJJZ)Lf8j;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v7, v0, Lbnj;->d:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p5

    move-wide v5, p3

    invoke-virtual/range {v0 .. v9}, Li8j;->h(Lw4f;Ljava/lang/Object;JJJZ)Lf8j;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lw4f;Ljava/lang/Object;IIJJZ)Lf8j;
    .locals 18

    new-instance v6, Lbnj;

    move-object v0, v6

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lbnj;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v0, v6, Lbnj;->a:Ljava/lang/Object;

    iget v1, v6, Lbnj;->b:I

    iget v2, v6, Lbnj;->c:I

    move-object/from16 v3, p0

    iget-object v3, v3, Li8j;->a:Ly2f;

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v3}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ly2f;->f(II)J

    move-result-wide v8

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ly2f;->e(I)I

    move-result v0

    move/from16 v2, p4

    if-ne v2, v0, :cond_0

    invoke-virtual {v3}, Ly2f;->h()J

    :cond_0
    invoke-virtual {v3, v1}, Ly2f;->k(I)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v8, v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    cmp-long v0, v8, v1

    if-gtz v0, :cond_1

    const-wide/16 v3, -0x1

    add-long/2addr v3, v8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v2, v1

    :goto_0
    new-instance v15, Lf8j;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v15

    move-object v1, v6

    move-wide/from16 v4, p5

    move-wide v6, v10

    move v10, v12

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v0 .. v14}, Lf8j;-><init>(Lbnj;JJJJZZZZZ)V

    return-object v15
.end method

.method public final h(Lw4f;Ljava/lang/Object;JJJZ)Lf8j;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Li8j;->a:Ly2f;

    invoke-virtual {v1, v2, v5}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    invoke-virtual {v5, v3, v4}, Ly2f;->c(J)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v6}, Ly2f;->j(I)Z

    :cond_0
    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Ly2f;->b()I

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6}, Ly2f;->k(I)Z

    :goto_0
    new-instance v9, Lbnj;

    move-wide/from16 v10, p7

    invoke-direct {v9, v2, v10, v11, v6}, Lbnj;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v9}, Li8j;->m(Lbnj;)Z

    move-result v2

    invoke-virtual {v0, v1, v9}, Li8j;->l(Lw4f;Lbnj;)Z

    move-result v21

    invoke-virtual {v0, v1, v9, v2}, Li8j;->k(Lw4f;Lbnj;Z)Z

    move-result v22

    if-eq v6, v7, :cond_2

    invoke-virtual {v5, v6}, Ly2f;->k(I)Z

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    if-eq v6, v7, :cond_3

    invoke-virtual {v5, v6}, Ly2f;->g(I)J

    move-wide v6, v10

    goto :goto_1

    :cond_3
    move-wide v6, v0

    :goto_1
    cmp-long v8, v6, v0

    if-eqz v8, :cond_4

    move-wide v14, v10

    move-wide/from16 v16, v14

    goto :goto_2

    :cond_4
    iget-wide v12, v5, Ly2f;->d:J

    move-wide v14, v6

    move-wide/from16 v16, v12

    :goto_2
    cmp-long v0, v16, v0

    if-eqz v0, :cond_5

    cmp-long v0, v3, v16

    if-ltz v0, :cond_5

    const-wide/16 v0, -0x1

    add-long v0, v16, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v10, v0

    goto :goto_3

    :cond_5
    move-wide v10, v3

    :goto_3
    new-instance v0, Lf8j;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v8, v0

    move-wide/from16 v12, p5

    move/from16 v20, v2

    invoke-direct/range {v8 .. v22}, Lf8j;-><init>(Lbnj;JJJJZZZZZ)V

    return-object v0
.end method

.method public final j()V
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzfww;->zzd:I

    new-instance v0, Ll4i;

    invoke-direct {v0}, Ll4i;-><init>()V

    iget-object v1, p0, Li8j;->i:Ld8j;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Ld8j;->g:Lf8j;

    iget-object v2, v2, Lf8j;->a:Lbnj;

    invoke-virtual {v0, v2}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    invoke-virtual {v1}, Ld8j;->g()Ld8j;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Li8j;->j:Ld8j;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Ld8j;->g:Lf8j;

    iget-object v1, v1, Lf8j;->a:Lbnj;

    :goto_1
    iget-object v2, p0, Li8j;->d:Lolg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzky;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzky;-><init>(Li8j;Ll4i;Lbnj;)V

    invoke-interface {v2, v3}, Lolg;->f(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k(Lw4f;Lbnj;Z)Z
    .locals 6

    iget-object p2, p2, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Li8j;->a:Ly2f;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object v0

    iget v0, v0, Ly2f;->c:I

    iget-object v3, p0, Li8j;->b:Le4f;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object v0

    iget-boolean v0, v0, Le4f;->h:Z

    if-nez v0, :cond_0

    iget v4, p0, Li8j;->f:I

    iget-boolean v5, p0, Li8j;->g:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lw4f;->i(ILy2f;Le4f;IZ)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method

.method public final l(Lw4f;Lbnj;)Z
    .locals 4

    invoke-static {p2}, Li8j;->m(Lbnj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p2, p2, Lbnj;->a:Ljava/lang/Object;

    iget-object v0, p0, Li8j;->a:Ly2f;

    invoke-virtual {p1, p2, v0}, Lw4f;->n(Ljava/lang/Object;Ly2f;)Ly2f;

    move-result-object v0

    iget v0, v0, Ly2f;->c:I

    invoke-virtual {p1, p2}, Lw4f;->a(Ljava/lang/Object;)I

    move-result p2

    iget-object p0, p0, Li8j;->b:Le4f;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, p0, v2, v3}, Lw4f;->e(ILe4f;J)Le4f;

    move-result-object p0

    iget p0, p0, Le4f;->n:I

    if-ne p0, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final n(Ld8j;)I
    .locals 2

    invoke-static {p1}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Li8j;->l:Ld8j;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Li8j;->l:Ld8j;

    :goto_0
    invoke-virtual {p1}, Ld8j;->g()Ld8j;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ld8j;->g()Ld8j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Li8j;->j:Ld8j;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Li8j;->i:Ld8j;

    iput-object v0, p0, Li8j;->j:Ld8j;

    iput-object v0, p0, Li8j;->k:Ld8j;

    const/4 v1, 0x3

    :cond_1
    iget-object v0, p0, Li8j;->k:Ld8j;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Li8j;->j:Ld8j;

    iput-object v0, p0, Li8j;->k:Ld8j;

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Ld8j;->o()V

    iget v0, p0, Li8j;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li8j;->n:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Li8j;->l:Ld8j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld8j;->p(Ld8j;)V

    invoke-virtual {p0}, Li8j;->j()V

    return v1
.end method

.method public final o(Lw4f;JJJ)I
    .locals 14

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Li8j;->i:Ld8j;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_a

    iget-object v5, v2, Ld8j;->g:Lf8j;

    if-nez v3, :cond_0

    invoke-virtual {p0, p1, v5}, Li8j;->C(Lw4f;Lf8j;)Lf8j;

    move-result-object v3

    move-wide/from16 v6, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v6, p2

    invoke-virtual {p0, p1, v3, v6, v7}, Li8j;->e(Lw4f;Ld8j;J)Lf8j;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-wide v9, v5, Lf8j;->b:J

    iget-wide v11, v8, Lf8j;->b:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_9

    iget-object v9, v5, Lf8j;->a:Lbnj;

    iget-object v10, v8, Lf8j;->a:Lbnj;

    invoke-virtual {v9, v10}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v3, v8

    :goto_1
    iget-wide v8, v5, Lf8j;->c:J

    invoke-virtual {v3, v8, v9}, Lf8j;->a(J)Lf8j;

    move-result-object v8

    iput-object v8, v2, Ld8j;->g:Lf8j;

    iget-wide v8, v5, Lf8j;->e:J

    iget-wide v10, v3, Lf8j;->e:J

    invoke-static {v8, v9, v10, v11}, Li8j;->K(JJ)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ld8j;->r()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v10, v5

    if-nez v1, :cond_1

    const-wide v5, 0x7fffffffffffffffL

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ld8j;->e()J

    move-result-wide v5

    add-long/2addr v5, v10

    :goto_2
    iget-object v1, v0, Li8j;->j:Ld8j;

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v3, 0x1

    if-ne v2, v1, :cond_3

    iget-object v1, v2, Ld8j;->g:Lf8j;

    iget-boolean v1, v1, Lf8j;->g:Z

    cmp-long v1, p4, v7

    if-eqz v1, :cond_2

    cmp-long v1, p4, v5

    if-ltz v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iget-object v9, v0, Li8j;->k:Ld8j;

    if-ne v2, v9, :cond_5

    cmp-long v7, p6, v7

    if-eqz v7, :cond_4

    cmp-long v5, p6, v5

    if-ltz v5, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    invoke-virtual {p0, v2}, Li8j;->n(Ld8j;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    if-eqz v4, :cond_7

    or-int/lit8 v0, v1, 0x2

    return v0

    :cond_7
    return v1

    :cond_8
    invoke-virtual {v2}, Ld8j;->g()Ld8j;

    move-result-object v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v3}, Li8j;->n(Ld8j;)I

    move-result v0

    return v0

    :cond_a
    return v4
.end method

.method public final p(Lw4f;I)I
    .locals 0

    iput p2, p0, Li8j;->f:I

    invoke-virtual {p0, p1}, Li8j;->b(Lw4f;)I

    move-result p0

    return p0
.end method

.method public final q(Lw4f;Z)I
    .locals 0

    iput-boolean p2, p0, Li8j;->g:Z

    invoke-virtual {p0, p1}, Li8j;->b(Lw4f;)I

    move-result p0

    return p0
.end method

.method public final r()Ld8j;
    .locals 3

    iget-object v0, p0, Li8j;->i:Ld8j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Li8j;->j:Ld8j;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v2

    iput-object v2, p0, Li8j;->j:Ld8j;

    :cond_1
    iget-object v2, p0, Li8j;->k:Ld8j;

    if-ne v0, v2, :cond_2

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v2

    iput-object v2, p0, Li8j;->k:Ld8j;

    :cond_2
    invoke-virtual {v0}, Ld8j;->o()V

    iget v0, p0, Li8j;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li8j;->n:I

    if-nez v0, :cond_3

    iput-object v1, p0, Li8j;->l:Ld8j;

    iget-object v0, p0, Li8j;->i:Ld8j;

    iget-object v1, v0, Ld8j;->b:Ljava/lang/Object;

    iput-object v1, p0, Li8j;->o:Ljava/lang/Object;

    iget-object v0, v0, Ld8j;->g:Lf8j;

    iget-object v0, v0, Lf8j;->a:Lbnj;

    iget-wide v0, v0, Lbnj;->d:J

    iput-wide v0, p0, Li8j;->p:J

    :cond_3
    iget-object v0, p0, Li8j;->i:Ld8j;

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v0

    iput-object v0, p0, Li8j;->i:Ld8j;

    invoke-virtual {p0}, Li8j;->j()V

    iget-object p0, p0, Li8j;->i:Ld8j;

    return-object p0
.end method

.method public final s()Ld8j;
    .locals 1

    iget-object v0, p0, Li8j;->k:Ld8j;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v0

    iput-object v0, p0, Li8j;->k:Ld8j;

    invoke-virtual {p0}, Li8j;->j()V

    iget-object p0, p0, Li8j;->k:Ld8j;

    invoke-static {p0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final t()Ld8j;
    .locals 2

    iget-object v0, p0, Li8j;->k:Ld8j;

    iget-object v1, p0, Li8j;->j:Ld8j;

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ld8j;->g()Ld8j;

    move-result-object v0

    iput-object v0, p0, Li8j;->k:Ld8j;

    :cond_0
    iget-object v0, p0, Li8j;->j:Ld8j;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ld8j;->g()Ld8j;

    move-result-object v0

    iput-object v0, p0, Li8j;->j:Ld8j;

    invoke-virtual {p0}, Li8j;->j()V

    iget-object p0, p0, Li8j;->j:Ld8j;

    invoke-static {p0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final u(Lf8j;)Ld8j;
    .locals 9

    iget-object v0, p0, Li8j;->l:Ld8j;

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld8j;->e()J

    move-result-wide v1

    iget-object v0, v0, Ld8j;->g:Lf8j;

    iget-wide v3, v0, Lf8j;->e:J

    add-long/2addr v1, v3

    iget-wide v3, p1, Lf8j;->b:J

    sub-long v0, v1, v3

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld8j;

    iget-object v3, v3, Ld8j;->g:Lf8j;

    iget-wide v5, v3, Lf8j;->e:J

    iget-wide v7, p1, Lf8j;->e:J

    invoke-static {v5, v6, v7, v8}, Li8j;->K(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v5, v3, Lf8j;->b:J

    iget-wide v7, p1, Lf8j;->b:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    iget-object v3, v3, Lf8j;->a:Lbnj;

    iget-object v5, p1, Lf8j;->a:Lbnj;

    invoke-virtual {v3, v5}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld8j;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_2
    if-nez v2, :cond_3

    iget-object v2, p0, Li8j;->r:Lq6j;

    iget-object v2, v2, Lq6j;->a:Lcom/google/android/gms/internal/ads/vb;

    invoke-static {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/vb;->i0(Lcom/google/android/gms/internal/ads/vb;Lf8j;J)Ld8j;

    move-result-object v2

    goto :goto_3

    :cond_3
    iput-object p1, v2, Ld8j;->g:Lf8j;

    invoke-virtual {v2, v0, v1}, Ld8j;->q(J)V

    :goto_3
    iget-object p1, p0, Li8j;->l:Ld8j;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Ld8j;->p(Ld8j;)V

    goto :goto_4

    :cond_4
    iput-object v2, p0, Li8j;->i:Ld8j;

    iput-object v2, p0, Li8j;->j:Ld8j;

    iput-object v2, p0, Li8j;->k:Ld8j;

    :goto_4
    iput-object v4, p0, Li8j;->o:Ljava/lang/Object;

    iput-object v2, p0, Li8j;->l:Ld8j;

    iget p1, p0, Li8j;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li8j;->n:I

    invoke-virtual {p0}, Li8j;->j()V

    return-object v2
.end method

.method public final v()Ld8j;
    .locals 0

    iget-object p0, p0, Li8j;->l:Ld8j;

    return-object p0
.end method

.method public final w()Ld8j;
    .locals 0

    iget-object p0, p0, Li8j;->i:Ld8j;

    return-object p0
.end method

.method public final x(Lzmj;)Ld8j;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Li8j;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8j;

    iget-object v2, v1, Ld8j;->a:Lzmj;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final y()Ld8j;
    .locals 0

    iget-object p0, p0, Li8j;->m:Ld8j;

    return-object p0
.end method

.method public final z()Ld8j;
    .locals 0

    iget-object p0, p0, Li8j;->k:Ld8j;

    return-object p0
.end method
