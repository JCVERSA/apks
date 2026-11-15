.class public final Lcom/yandex/mobile/ads/impl/o72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z70;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/o72$a;,
        Lcom/yandex/mobile/ads/impl/o72$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/p52;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/ag1;

.field private final e:Landroid/util/SparseIntArray;

.field private final f:Lcom/yandex/mobile/ads/impl/p72$c;

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/mobile/ads/impl/p72;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/SparseBooleanArray;

.field private final i:Landroid/util/SparseBooleanArray;

.field private final j:Lcom/yandex/mobile/ads/impl/n72;

.field private k:Lcom/yandex/mobile/ads/impl/m72;

.field private l:Lcom/yandex/mobile/ads/impl/b80;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/yandex/mobile/ads/impl/p72;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbpd;

    invoke-direct {v0}, Lbpd;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    new-instance p1, Lcom/yandex/mobile/ads/impl/p52;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/p52;-><init>(J)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/t00;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/t00;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/o72;-><init>(Lcom/yandex/mobile/ads/impl/p52;Lcom/yandex/mobile/ads/impl/t00;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p52;Lcom/yandex/mobile/ads/impl/t00;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/mobile/ads/impl/p72$c;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o72;->f:Lcom/yandex/mobile/ads/impl/p72$c;

    const p2, 0x1b8a0

    .line 4
    iput p2, p0, Lcom/yandex/mobile/ads/impl/o72;->b:I

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/yandex/mobile/ads/impl/o72;->a:I

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->c:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/ag1;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I[B)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    .line 8
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->h:Landroid/util/SparseBooleanArray;

    .line 9
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->i:Landroid/util/SparseBooleanArray;

    .line 10
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->g:Landroid/util/SparseArray;

    .line 11
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->e:Landroid/util/SparseIntArray;

    .line 12
    new-instance p1, Lcom/yandex/mobile/ads/impl/n72;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/n72;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->j:Lcom/yandex/mobile/ads/impl/n72;

    .line 13
    sget-object p1, Lcom/yandex/mobile/ads/impl/b80;->a:Lcom/yandex/mobile/ads/impl/b80;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->l:Lcom/yandex/mobile/ads/impl/b80;

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/yandex/mobile/ads/impl/o72;->s:I

    .line 15
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/o72;->b()V

    return-void
.end method

.method private static a()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 3

    .line 84
    new-instance v0, Lcom/yandex/mobile/ads/impl/o72;

    const/4 v1, 0x0

    .line 85
    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/o72;-><init>(I)V

    const/4 v2, 0x1

    .line 86
    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/z70;

    aput-object v0, v2, v1

    return-object v2
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o72;->h:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o72;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o72;->f:Lcom/yandex/mobile/ads/impl/p72$c;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/p72$c;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/o72;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/p72;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/o72;->g:Landroid/util/SparseArray;

    new-instance v1, Lcom/yandex/mobile/ads/impl/dx1;

    new-instance v3, Lcom/yandex/mobile/ads/impl/o72$a;

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/o72$a;-><init>(Lcom/yandex/mobile/ads/impl/o72;)V

    invoke-direct {v1, v3}, Lcom/yandex/mobile/ads/impl/dx1;-><init>(Lcom/yandex/mobile/ads/impl/cx1;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/o72;->q:Lcom/yandex/mobile/ads/impl/p72;

    return-void
.end method

.method public static synthetic c()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/o72;->a()[Lcom/yandex/mobile/ads/impl/z70;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/o72;)I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/o72;->a:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/yandex/mobile/ads/impl/o72;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o72;->c:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/yandex/mobile/ads/impl/o72;)Lcom/yandex/mobile/ads/impl/p72$c;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o72;->f:Lcom/yandex/mobile/ads/impl/p72$c;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/yandex/mobile/ads/impl/o72;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o72;->g:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/yandex/mobile/ads/impl/o72;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o72;->h:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/yandex/mobile/ads/impl/o72;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o72;->i:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/yandex/mobile/ads/impl/o72;)Lcom/yandex/mobile/ads/impl/b80;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o72;->l:Lcom/yandex/mobile/ads/impl/b80;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/yandex/mobile/ads/impl/o72;)I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/o72;->m:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/yandex/mobile/ads/impl/o72;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/o72;->n:Z

    return p0
.end method

.method public static bridge synthetic m(Lcom/yandex/mobile/ads/impl/o72;)Lcom/yandex/mobile/ads/impl/p72;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o72;->q:Lcom/yandex/mobile/ads/impl/p72;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/yandex/mobile/ads/impl/o72;I)V
    .locals 0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/o72;->m:I

    return-void
.end method

.method public static bridge synthetic o(Lcom/yandex/mobile/ads/impl/o72;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/o72;->n:Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/yandex/mobile/ads/impl/o72;Lcom/yandex/mobile/ads/impl/p72;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->q:Lcom/yandex/mobile/ads/impl/p72;

    return-void
.end method

.method public static bridge synthetic q(Lcom/yandex/mobile/ads/impl/o72;I)V
    .locals 0

    iput p1, p0, Lcom/yandex/mobile/ads/impl/o72;->s:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a80;Lcom/yandex/mobile/ads/impl/pj1;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2
    move-object/from16 v2, p1

    check-cast v2, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->b()J

    move-result-wide v11

    .line 3
    iget-boolean v3, v0, Lcom/yandex/mobile/ads/impl/o72;->n:Z

    const-wide/16 v13, -0x1

    const/4 v15, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_5

    cmp-long v3, v11, v13

    if-eqz v3, :cond_0

    .line 4
    iget v3, v0, Lcom/yandex/mobile/ads/impl/o72;->a:I

    if-eq v3, v15, :cond_0

    .line 5
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->j:Lcom/yandex/mobile/ads/impl/n72;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/n72;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->j:Lcom/yandex/mobile/ads/impl/n72;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/o72;->s:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/yandex/mobile/ads/impl/n72;->a(Lcom/yandex/mobile/ads/impl/wz;Lcom/yandex/mobile/ads/impl/pj1;I)I

    move-result v0

    return v0

    .line 7
    :cond_0
    iget-boolean v3, v0, Lcom/yandex/mobile/ads/impl/o72;->o:Z

    const-wide/16 v7, 0x0

    if-nez v3, :cond_2

    .line 8
    iput-boolean v10, v0, Lcom/yandex/mobile/ads/impl/o72;->o:Z

    .line 9
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->j:Lcom/yandex/mobile/ads/impl/n72;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/n72;->a()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 10
    new-instance v5, Lcom/yandex/mobile/ads/impl/m72;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->j:Lcom/yandex/mobile/ads/impl/n72;

    .line 11
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/n72;->b()Lcom/yandex/mobile/ads/impl/p52;

    move-result-object v4

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->j:Lcom/yandex/mobile/ads/impl/n72;

    .line 12
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/n72;->a()J

    move-result-wide v16

    iget v6, v0, Lcom/yandex/mobile/ads/impl/o72;->s:I

    iget v3, v0, Lcom/yandex/mobile/ads/impl/o72;->b:I

    move/from16 v18, v3

    move-object v3, v5

    move-object v13, v5

    move v14, v6

    move-wide/from16 v5, v16

    move-object/from16 p1, v2

    move-wide v1, v7

    move-wide v7, v11

    move v15, v9

    move v9, v14

    move v14, v10

    move/from16 v10, v18

    invoke-direct/range {v3 .. v10}, Lcom/yandex/mobile/ads/impl/m72;-><init>(Lcom/yandex/mobile/ads/impl/p52;JJII)V

    iput-object v13, v0, Lcom/yandex/mobile/ads/impl/o72;->k:Lcom/yandex/mobile/ads/impl/m72;

    .line 13
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->l:Lcom/yandex/mobile/ads/impl/b80;

    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/jl;->a()Lcom/yandex/mobile/ads/impl/jl$a;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    goto :goto_0

    :cond_1
    move-object/from16 p1, v2

    move-wide v1, v7

    move v15, v9

    move v14, v10

    .line 14
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->l:Lcom/yandex/mobile/ads/impl/b80;

    new-instance v4, Lcom/yandex/mobile/ads/impl/ex1$b;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/o72;->j:Lcom/yandex/mobile/ads/impl/n72;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/n72;->a()J

    move-result-wide v5

    .line 15
    invoke-direct {v4, v5, v6, v1, v2}, Lcom/yandex/mobile/ads/impl/ex1$b;-><init>(JJ)V

    .line 16
    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    goto :goto_0

    :cond_2
    move-object/from16 p1, v2

    move-wide v1, v7

    move v15, v9

    move v14, v10

    .line 17
    :goto_0
    iget-boolean v3, v0, Lcom/yandex/mobile/ads/impl/o72;->p:Z

    if-eqz v3, :cond_3

    .line 18
    iput-boolean v15, v0, Lcom/yandex/mobile/ads/impl/o72;->p:Z

    .line 19
    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/yandex/mobile/ads/impl/o72;->a(JJ)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_3

    move-wide v2, v1

    move-object/from16 v1, p2

    .line 21
    iput-wide v2, v1, Lcom/yandex/mobile/ads/impl/pj1;->a:J

    return v14

    :cond_3
    move-object/from16 v1, p2

    .line 22
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/o72;->k:Lcom/yandex/mobile/ads/impl/m72;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/jl;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/o72;->k:Lcom/yandex/mobile/ads/impl/m72;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/jl;->a(Lcom/yandex/mobile/ads/impl/wz;Lcom/yandex/mobile/ads/impl/pj1;)I

    move-result v0

    return v0

    :cond_4
    move-object/from16 v2, p1

    goto :goto_1

    :cond_5
    move v15, v9

    move v14, v10

    .line 24
    :goto_1
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v1

    .line 25
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v3

    rsub-int v3, v3, 0x24b8

    const/16 v4, 0xbc

    if-ge v3, v4, :cond_7

    .line 26
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result v3

    if-lez v3, :cond_6

    .line 27
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v5

    invoke-static {v1, v5, v1, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    :cond_6
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v5, v3, v1}, Lcom/yandex/mobile/ads/impl/ag1;->a(I[B)V

    .line 29
    :cond_7
    :goto_2
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result v3

    if-ge v3, v4, :cond_9

    .line 30
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result v3

    rsub-int v5, v3, 0x24b8

    .line 31
    invoke-virtual {v2, v1, v3, v5}, Lcom/yandex/mobile/ads/impl/wz;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    return v6

    .line 32
    :cond_8
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    add-int/2addr v3, v5

    invoke-virtual {v6, v3}, Lcom/yandex/mobile/ads/impl/ag1;->d(I)V

    goto :goto_2

    .line 33
    :cond_9
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v1

    .line 34
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result v2

    .line 35
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    .line 36
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v3

    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_a

    .line 37
    aget-byte v5, v3, v4

    const/16 v6, 0x47

    if-eq v5, v6, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 38
    :cond_a
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    add-int/lit16 v3, v4, 0xbc

    const/4 v5, 0x0

    if-le v3, v2, :cond_c

    .line 39
    iget v2, v0, Lcom/yandex/mobile/ads/impl/o72;->r:I

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    iput v4, v0, Lcom/yandex/mobile/ads/impl/o72;->r:I

    .line 40
    iget v1, v0, Lcom/yandex/mobile/ads/impl/o72;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    const/16 v1, 0x178

    if-gt v4, v1, :cond_b

    goto :goto_4

    .line 41
    :cond_b
    const-string v0, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-static {v0, v5}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 42
    :cond_c
    iput v15, v0, Lcom/yandex/mobile/ads/impl/o72;->r:I

    .line 43
    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result v1

    if-le v3, v1, :cond_e

    return v15

    .line 44
    :cond_e
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v2

    const/high16 v4, 0x800000

    and-int/2addr v4, v2

    if-eqz v4, :cond_f

    .line 45
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    return v15

    :cond_f
    const/high16 v4, 0x400000

    and-int/2addr v4, v2

    if-eqz v4, :cond_10

    move v10, v14

    goto :goto_5

    :cond_10
    move v10, v15

    :goto_5
    const v4, 0x1fff00

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x8

    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_11

    move v6, v14

    goto :goto_6

    :cond_11
    move v6, v15

    :goto_6
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_12

    .line 46
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/o72;->g:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/mobile/ads/impl/p72;

    :cond_12
    if-nez v5, :cond_13

    .line 47
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    return v15

    .line 48
    :cond_13
    iget v7, v0, Lcom/yandex/mobile/ads/impl/o72;->a:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_15

    and-int/lit8 v2, v2, 0xf

    .line 49
    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/o72;->e:Landroid/util/SparseIntArray;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v4, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 50
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/o72;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v2, :cond_14

    .line 51
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    return v15

    :cond_14
    add-int/2addr v7, v14

    and-int/lit8 v7, v7, 0xf

    if-eq v2, v7, :cond_15

    .line 52
    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/p72;->a()V

    :cond_15
    if-eqz v6, :cond_17

    .line 53
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v2

    .line 54
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_16

    const/4 v9, 0x2

    goto :goto_7

    :cond_16
    move v9, v15

    :goto_7
    or-int/2addr v10, v9

    .line 55
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    sub-int/2addr v2, v14

    invoke-virtual {v6, v2}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 56
    :cond_17
    iget-boolean v2, v0, Lcom/yandex/mobile/ads/impl/o72;->n:Z

    .line 57
    iget v6, v0, Lcom/yandex/mobile/ads/impl/o72;->a:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_18

    if-nez v2, :cond_18

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/o72;->i:Landroid/util/SparseBooleanArray;

    .line 58
    invoke-virtual {v6, v4, v15}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_19

    .line 59
    :cond_18
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v4, v3}, Lcom/yandex/mobile/ads/impl/ag1;->d(I)V

    .line 60
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-interface {v5, v10, v4}, Lcom/yandex/mobile/ads/impl/p72;->a(ILcom/yandex/mobile/ads/impl/ag1;)V

    .line 61
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v4, v1}, Lcom/yandex/mobile/ads/impl/ag1;->d(I)V

    .line 62
    :cond_19
    iget v1, v0, Lcom/yandex/mobile/ads/impl/o72;->a:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1a

    if-nez v2, :cond_1a

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/o72;->n:Z

    if-eqz v1, :cond_1a

    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-eqz v1, :cond_1a

    .line 63
    iput-boolean v14, v0, Lcom/yandex/mobile/ads/impl/o72;->p:Z

    .line 64
    :cond_1a
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    return v15
.end method

.method public final a(JJ)V
    .locals 8

    .line 65
    iget p1, p0, Lcom/yandex/mobile/ads/impl/o72;->a:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    .line 66
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const-wide/16 v1, 0x0

    if-ge v0, p1, :cond_3

    .line 67
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/o72;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/p52;

    .line 68
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/p52;->c()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, p2

    :goto_1
    if-nez v4, :cond_1

    .line 69
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/p52;->a()J

    move-result-wide v4

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    cmp-long v1, v4, v1

    if-eqz v1, :cond_2

    cmp-long v1, v4, p3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    .line 70
    :goto_2
    invoke-virtual {v3, p3, p4}, Lcom/yandex/mobile/ads/impl/p52;->c(J)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    cmp-long p1, p3, v1

    if-eqz p1, :cond_4

    .line 71
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->k:Lcom/yandex/mobile/ads/impl/m72;

    if-eqz p1, :cond_4

    .line 72
    invoke-virtual {p1, p3, p4}, Lcom/yandex/mobile/ads/impl/jl;->a(J)V

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/ag1;->c(I)V

    .line 74
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, p2

    .line 75
    :goto_3
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/o72;->g:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    .line 76
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/o72;->g:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/mobile/ads/impl/p72;

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/p72;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 77
    :cond_5
    iput p2, p0, Lcom/yandex/mobile/ads/impl/o72;->r:I

    return-void

    .line 78
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o72;->l:Lcom/yandex/mobile/ads/impl/b80;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/a80;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o72;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object p0

    .line 80
    check-cast p1, Lcom/yandex/mobile/ads/impl/wz;

    const/4 v0, 0x0

    const/16 v1, 0x3ac

    .line 81
    invoke-virtual {p1, p0, v0, v1, v0}, Lcom/yandex/mobile/ads/impl/wz;->b([BIIZ)Z

    move v1, v0

    :goto_0
    const/16 v2, 0xbc

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v1

    .line 82
    aget-byte v3, p0, v3

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
