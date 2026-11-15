.class public final Lkn9;
.super Lcom/google/android/exoplayer2/a0;
.source "SourceFile"


# static fields
.field public static final q:Ljava/lang/Object;

.field public static final r:Lcom/google/android/exoplayer2/n;


# instance fields
.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Ljava/lang/Object;

.field public final o:Lcom/google/android/exoplayer2/n;

.field public final p:Lcom/google/android/exoplayer2/n$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkn9;->q:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/exoplayer2/n$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$c;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n$c;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n$c;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object v0

    sput-object v0, Lkn9;->r:Lcom/google/android/exoplayer2/n;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/n$g;)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/a0;-><init>()V

    move-wide v1, p1

    .line 5
    iput-wide v1, v0, Lkn9;->d:J

    move-wide v1, p3

    .line 6
    iput-wide v1, v0, Lkn9;->e:J

    move-wide v1, p5

    .line 7
    iput-wide v1, v0, Lkn9;->f:J

    move-wide v1, p7

    .line 8
    iput-wide v1, v0, Lkn9;->g:J

    move-wide v1, p9

    .line 9
    iput-wide v1, v0, Lkn9;->h:J

    move-wide v1, p11

    .line 10
    iput-wide v1, v0, Lkn9;->i:J

    move-wide/from16 v1, p13

    .line 11
    iput-wide v1, v0, Lkn9;->j:J

    move/from16 v1, p15

    .line 12
    iput-boolean v1, v0, Lkn9;->k:Z

    move/from16 v1, p16

    .line 13
    iput-boolean v1, v0, Lkn9;->l:Z

    move/from16 v1, p17

    .line 14
    iput-boolean v1, v0, Lkn9;->m:Z

    move-object/from16 v1, p18

    .line 15
    iput-object v1, v0, Lkn9;->n:Ljava/lang/Object;

    .line 16
    invoke-static/range {p19 .. p19}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/n;

    iput-object v1, v0, Lkn9;->o:Lcom/google/android/exoplayer2/n;

    move-object/from16 v1, p20

    .line 17
    iput-object v1, v0, Lkn9;->p:Lcom/google/android/exoplayer2/n$g;

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/n;)V
    .locals 21

    move-object/from16 v15, p13

    if-eqz p11, :cond_0

    .line 2
    iget-object v0, v15, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    :goto_0
    move-object/from16 v20, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    .line 3
    invoke-direct/range {v0 .. v20}, Lkn9;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/n$g;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/n;)V
    .locals 14

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 1
    invoke-direct/range {v0 .. v13}, Lkn9;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/n;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Lkn9;->q:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lzi;->c(III)I

    if-eqz p3, :cond_0

    sget-object p1, Lkn9;->q:Ljava/lang/Object;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-wide v4, p0, Lkn9;->g:J

    iget-wide p0, p0, Lkn9;->i:J

    neg-long v6, p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/a0$b;->v(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p0

    return-object p0
.end method

.method public m()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public q(I)Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lzi;->c(III)I

    sget-object p0, Lkn9;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public s(ILcom/google/android/exoplayer2/a0$d;J)Lcom/google/android/exoplayer2/a0$d;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    invoke-static {v3, v1, v2}, Lzi;->c(III)I

    iget-wide v1, v0, Lkn9;->j:J

    iget-boolean v14, v0, Lkn9;->l:Z

    if-eqz v14, :cond_1

    iget-boolean v3, v0, Lkn9;->m:Z

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lkn9;->h:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    :goto_0
    move-wide/from16 v16, v5

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v1

    :goto_1
    sget-object v4, Lcom/google/android/exoplayer2/a0$d;->s:Ljava/lang/Object;

    iget-object v5, v0, Lkn9;->o:Lcom/google/android/exoplayer2/n;

    iget-object v6, v0, Lkn9;->n:Ljava/lang/Object;

    iget-wide v7, v0, Lkn9;->d:J

    iget-wide v9, v0, Lkn9;->e:J

    iget-wide v11, v0, Lkn9;->f:J

    iget-boolean v13, v0, Lkn9;->k:Z

    iget-object v15, v0, Lkn9;->p:Lcom/google/android/exoplayer2/n$g;

    iget-wide v1, v0, Lkn9;->h:J

    move-wide/from16 v18, v1

    const/16 v21, 0x0

    iget-wide v0, v0, Lkn9;->i:J

    move-wide/from16 v22, v0

    const/16 v20, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v23}, Lcom/google/android/exoplayer2/a0$d;->k(Ljava/lang/Object;Lcom/google/android/exoplayer2/n;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/n$g;JJIIJ)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
