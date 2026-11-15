.class public final Lmab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmab$b;,
        Lmab$a;
    }
.end annotation


# static fields
.field public static final t:Luk3;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Lqw7;

.field public final e:Landroid/util/SparseIntArray;

.field public final f:Lnab$c;

.field public final g:Landroid/util/SparseArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Landroid/util/SparseBooleanArray;

.field public final j:Liab;

.field public k:Lhab;

.field public l:Lqk3;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lnab;

.field public r:I

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljab;

    invoke-direct {v0}, Ljab;-><init>()V

    sput-object v0, Lmab;->t:Luk3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmab;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x1b8a0

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lmab;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 3
    new-instance v0, Lpoa;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lpoa;-><init>(J)V

    new-instance v1, Lr62;

    invoke-direct {v1, p2}, Lr62;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, p3}, Lmab;-><init>(ILpoa;Lnab$c;I)V

    return-void
.end method

.method public constructor <init>(ILpoa;Lnab$c;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnab$c;

    iput-object p3, p0, Lmab;->f:Lnab$c;

    .line 6
    iput p4, p0, Lmab;->b:I

    .line 7
    iput p1, p0, Lmab;->a:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmab;->c:Ljava/util/List;

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmab;->c:Ljava/util/List;

    .line 11
    :goto_1
    new-instance p1, Lqw7;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lqw7;-><init>([BI)V

    iput-object p1, p0, Lmab;->d:Lqw7;

    .line 12
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lmab;->h:Landroid/util/SparseBooleanArray;

    .line 13
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lmab;->i:Landroid/util/SparseBooleanArray;

    .line 14
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lmab;->g:Landroid/util/SparseArray;

    .line 15
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lmab;->e:Landroid/util/SparseIntArray;

    .line 16
    new-instance p1, Liab;

    invoke-direct {p1, p4}, Liab;-><init>(I)V

    iput-object p1, p0, Lmab;->j:Liab;

    .line 17
    sget-object p1, Lqk3;->C1:Lqk3;

    iput-object p1, p0, Lmab;->l:Lqk3;

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lmab;->s:I

    .line 19
    invoke-virtual {p0}, Lmab;->x()V

    return-void
.end method

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Lmab;->v()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lmab;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lmab;->g:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic f(Lmab;)I
    .locals 0

    iget p0, p0, Lmab;->m:I

    return p0
.end method

.method public static synthetic g(Lmab;)Z
    .locals 0

    iget-boolean p0, p0, Lmab;->n:Z

    return p0
.end method

.method public static synthetic h(Lmab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmab;->n:Z

    return p1
.end method

.method public static synthetic i(Lmab;I)I
    .locals 0

    iput p1, p0, Lmab;->m:I

    return p1
.end method

.method public static synthetic j(Lmab;)I
    .locals 2

    iget v0, p0, Lmab;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmab;->m:I

    return v0
.end method

.method public static synthetic k(Lmab;)I
    .locals 0

    iget p0, p0, Lmab;->a:I

    return p0
.end method

.method public static synthetic l(Lmab;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmab;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(Lmab;I)I
    .locals 0

    iput p1, p0, Lmab;->s:I

    return p1
.end method

.method public static synthetic n(Lmab;)Lnab;
    .locals 0

    iget-object p0, p0, Lmab;->q:Lnab;

    return-object p0
.end method

.method public static synthetic o(Lmab;Lnab;)Lnab;
    .locals 0

    iput-object p1, p0, Lmab;->q:Lnab;

    return-object p1
.end method

.method public static synthetic p(Lmab;)Lnab$c;
    .locals 0

    iget-object p0, p0, Lmab;->f:Lnab$c;

    return-object p0
.end method

.method public static synthetic q(Lmab;)Lqk3;
    .locals 0

    iget-object p0, p0, Lmab;->l:Lqk3;

    return-object p0
.end method

.method public static synthetic r(Lmab;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lmab;->h:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic s(Lmab;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lmab;->i:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private static synthetic v()[Lnk3;
    .locals 3

    new-instance v0, Lmab;

    invoke-direct {v0}, Lmab;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private w(J)V
    .locals 9

    iget-boolean v0, p0, Lmab;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmab;->o:Z

    iget-object v0, p0, Lmab;->j:Liab;

    invoke-virtual {v0}, Liab;->b()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lhab;

    iget-object v1, p0, Lmab;->j:Liab;

    invoke-virtual {v1}, Liab;->c()Lpoa;

    move-result-object v2

    iget-object v1, p0, Lmab;->j:Liab;

    invoke-virtual {v1}, Liab;->b()J

    move-result-wide v3

    iget v7, p0, Lmab;->s:I

    iget v8, p0, Lmab;->b:I

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Lhab;-><init>(Lpoa;JJII)V

    iput-object v0, p0, Lmab;->k:Lhab;

    iget-object p0, p0, Lmab;->l:Lqk3;

    invoke-virtual {v0}, Lre0;->b()Lja9;

    move-result-object p1

    invoke-interface {p0, p1}, Lqk3;->d(Lja9;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmab;->l:Lqk3;

    new-instance p2, Lja9$b;

    iget-object p0, p0, Lmab;->j:Liab;

    invoke-virtual {p0}, Liab;->b()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lja9$b;-><init>(J)V

    invoke-interface {p1, p2}, Lqk3;->d(Lja9;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 0

    iput-object p1, p0, Lmab;->l:Lqk3;

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Lpk3;->getLength()J

    move-result-wide v3

    iget-boolean v5, v0, Lmab;->n:Z

    const-wide/16 v6, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_2

    cmp-long v5, v3, v6

    if-eqz v5, :cond_0

    iget v5, v0, Lmab;->a:I

    if-eq v5, v8, :cond_0

    iget-object v5, v0, Lmab;->j:Liab;

    invoke-virtual {v5}, Liab;->d()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, v0, Lmab;->j:Liab;

    iget v0, v0, Lmab;->s:I

    invoke-virtual {v3, v1, v2, v0}, Liab;->e(Lpk3;Lid8;I)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {v0, v3, v4}, Lmab;->w(J)V

    iget-boolean v5, v0, Lmab;->p:Z

    if-eqz v5, :cond_1

    iput-boolean v10, v0, Lmab;->p:Z

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v11, v12, v11, v12}, Lmab;->seek(JJ)V

    invoke-interface/range {p1 .. p1}, Lpk3;->getPosition()J

    move-result-wide v13

    cmp-long v5, v13, v11

    if-eqz v5, :cond_1

    iput-wide v11, v2, Lid8;->a:J

    return v9

    :cond_1
    iget-object v5, v0, Lmab;->k:Lhab;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lre0;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, v0, Lmab;->k:Lhab;

    invoke-virtual {v0, v1, v2}, Lre0;->c(Lpk3;Lid8;)I

    move-result v0

    return v0

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lmab;->t(Lpk3;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, -0x1

    return v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmab;->u()I

    move-result v1

    iget-object v2, v0, Lmab;->d:Lqw7;

    invoke-virtual {v2}, Lqw7;->f()I

    move-result v2

    if-le v1, v2, :cond_4

    return v10

    :cond_4
    iget-object v5, v0, Lmab;->d:Lqw7;

    invoke-virtual {v5}, Lqw7;->n()I

    move-result v5

    const/high16 v11, 0x800000

    and-int/2addr v11, v5

    if-eqz v11, :cond_5

    iget-object v0, v0, Lmab;->d:Lqw7;

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    return v10

    :cond_5
    const/high16 v11, 0x400000

    and-int/2addr v11, v5

    if-eqz v11, :cond_6

    move v11, v9

    goto :goto_0

    :cond_6
    move v11, v10

    :goto_0
    const v12, 0x1fff00

    and-int/2addr v12, v5

    shr-int/lit8 v12, v12, 0x8

    and-int/lit8 v13, v5, 0x20

    if-eqz v13, :cond_7

    move v13, v9

    goto :goto_1

    :cond_7
    move v13, v10

    :goto_1
    and-int/lit8 v14, v5, 0x10

    if-eqz v14, :cond_8

    iget-object v14, v0, Lmab;->g:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnab;

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    :goto_2
    if-nez v14, :cond_9

    iget-object v0, v0, Lmab;->d:Lqw7;

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    return v10

    :cond_9
    iget v15, v0, Lmab;->a:I

    if-eq v15, v8, :cond_b

    and-int/lit8 v5, v5, 0xf

    iget-object v15, v0, Lmab;->e:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v15, v12, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    iget-object v7, v0, Lmab;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v12, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v6, v5, :cond_a

    iget-object v0, v0, Lmab;->d:Lqw7;

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    return v10

    :cond_a
    add-int/2addr v6, v9

    and-int/lit8 v6, v6, 0xf

    if-eq v5, v6, :cond_b

    invoke-interface {v14}, Lnab;->seek()V

    :cond_b
    if-eqz v13, :cond_d

    iget-object v5, v0, Lmab;->d:Lqw7;

    invoke-virtual {v5}, Lqw7;->C()I

    move-result v5

    iget-object v6, v0, Lmab;->d:Lqw7;

    invoke-virtual {v6}, Lqw7;->C()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_c

    move v6, v8

    goto :goto_3

    :cond_c
    move v6, v10

    :goto_3
    or-int/2addr v11, v6

    iget-object v6, v0, Lmab;->d:Lqw7;

    sub-int/2addr v5, v9

    invoke-virtual {v6, v5}, Lqw7;->P(I)V

    :cond_d
    iget-boolean v5, v0, Lmab;->n:Z

    invoke-virtual {v0, v12}, Lmab;->y(I)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v0, Lmab;->d:Lqw7;

    invoke-virtual {v6, v1}, Lqw7;->N(I)V

    iget-object v6, v0, Lmab;->d:Lqw7;

    invoke-interface {v14, v6, v11}, Lnab;->a(Lqw7;I)V

    iget-object v6, v0, Lmab;->d:Lqw7;

    invoke-virtual {v6, v2}, Lqw7;->N(I)V

    :cond_e
    iget v2, v0, Lmab;->a:I

    if-eq v2, v8, :cond_f

    if-nez v5, :cond_f

    iget-boolean v2, v0, Lmab;->n:Z

    if-eqz v2, :cond_f

    const-wide/16 v5, -0x1

    cmp-long v2, v3, v5

    if-eqz v2, :cond_f

    iput-boolean v9, v0, Lmab;->p:Z

    :cond_f
    iget-object v0, v0, Lmab;->d:Lqw7;

    invoke-virtual {v0, v1}, Lqw7;->O(I)V

    return v10
.end method

.method public c(Lpk3;)Z
    .locals 5

    iget-object p0, p0, Lmab;->d:Lqw7;

    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object p0

    const/16 v0, 0x3ac

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lpk3;->peekFully([BII)V

    move v0, v1

    :goto_0
    const/16 v2, 0xbc

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v0

    aget-byte v3, p0, v3

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Lpk3;->skipFully(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 9

    iget p1, p0, Lmab;->a:I

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Lzi;->g(Z)V

    iget-object p1, p0, Lmab;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move p2, v1

    :goto_1
    const-wide/16 v2, 0x0

    if-ge p2, p1, :cond_5

    iget-object v4, p0, Lmab;->c:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpoa;

    invoke-virtual {v4}, Lpoa;->e()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {v4}, Lpoa;->c()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    cmp-long v2, v5, p3

    if-eqz v2, :cond_2

    move v5, v0

    goto :goto_3

    :cond_2
    move v5, v1

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v4, p3, p4}, Lpoa;->g(J)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    cmp-long p1, p3, v2

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmab;->k:Lhab;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3, p4}, Lre0;->h(J)V

    :cond_6
    iget-object p1, p0, Lmab;->d:Lqw7;

    invoke-virtual {p1, v1}, Lqw7;->K(I)V

    iget-object p1, p0, Lmab;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v1

    :goto_4
    iget-object p2, p0, Lmab;->g:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    iget-object p2, p0, Lmab;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnab;

    invoke-interface {p2}, Lnab;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    iput v1, p0, Lmab;->r:I

    return-void
.end method

.method public final t(Lpk3;)Z
    .locals 6

    iget-object v0, p0, Lmab;->d:Lqw7;

    invoke-virtual {v0}, Lqw7;->d()[B

    move-result-object v0

    iget-object v1, p0, Lmab;->d:Lqw7;

    invoke-virtual {v1}, Lqw7;->e()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lmab;->d:Lqw7;

    invoke-virtual {v1}, Lqw7;->a()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v4, p0, Lmab;->d:Lqw7;

    invoke-virtual {v4}, Lqw7;->e()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v4, p0, Lmab;->d:Lqw7;

    invoke-virtual {v4, v0, v1}, Lqw7;->M([BI)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lmab;->d:Lqw7;

    invoke-virtual {v1}, Lqw7;->a()I

    move-result v1

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lmab;->d:Lqw7;

    invoke-virtual {v1}, Lqw7;->f()I

    move-result v1

    rsub-int v4, v1, 0x24b8

    invoke-interface {p1, v0, v1, v4}, Lpk3;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return v2

    :cond_2
    iget-object v5, p0, Lmab;->d:Lqw7;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Lqw7;->N(I)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final u()I
    .locals 4

    iget-object v0, p0, Lmab;->d:Lqw7;

    invoke-virtual {v0}, Lqw7;->e()I

    move-result v0

    iget-object v1, p0, Lmab;->d:Lqw7;

    invoke-virtual {v1}, Lqw7;->f()I

    move-result v1

    iget-object v2, p0, Lmab;->d:Lqw7;

    invoke-virtual {v2}, Lqw7;->d()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Loab;->a([BII)I

    move-result v2

    iget-object v3, p0, Lmab;->d:Lqw7;

    invoke-virtual {v3, v2}, Lqw7;->O(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_1

    iget v1, p0, Lmab;->r:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lmab;->r:I

    iget p0, p0, Lmab;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/16 p0, 0x178

    if-gt v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Cannot find sync byte. Most likely not a Transport Stream."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lmab;->r:I

    :cond_2
    :goto_0
    return v3
.end method

.method public final x()V
    .locals 7

    iget-object v0, p0, Lmab;->h:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lmab;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lmab;->f:Lnab$c;

    invoke-interface {v0}, Lnab$c;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lmab;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnab;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmab;->g:Landroid/util/SparseArray;

    new-instance v1, Lca9;

    new-instance v3, Lmab$a;

    invoke-direct {v3, p0}, Lmab$a;-><init>(Lmab;)V

    invoke-direct {v1, v3}, Lca9;-><init>(Lba9;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmab;->q:Lnab;

    return-void
.end method

.method public final y(I)Z
    .locals 2

    iget v0, p0, Lmab;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lmab;->n:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lmab;->i:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
