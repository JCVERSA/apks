.class public final Lcom/google/android/exoplayer2/source/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h;
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/r$c;,
        Lcom/google/android/exoplayer2/source/r$b;
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/exoplayer2/upstream/b;

.field public final c:Lcom/google/android/exoplayer2/upstream/a$a;

.field public final d:Lu5b;

.field public final e:Lcom/google/android/exoplayer2/upstream/f;

.field public final f:Lcom/google/android/exoplayer2/source/j$a;

.field public final g:Leva;

.field public final h:Ljava/util/ArrayList;

.field public final i:J

.field public final j:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final k:Lcom/google/android/exoplayer2/k;

.field public final l:Z

.field public m:Z

.field public n:[B

.field public o:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/upstream/a$a;Lu5b;Lcom/google/android/exoplayer2/k;JLcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/source/j$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->b:Lcom/google/android/exoplayer2/upstream/b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/r;->c:Lcom/google/android/exoplayer2/upstream/a$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/r;->d:Lu5b;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/r;->k:Lcom/google/android/exoplayer2/k;

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/r;->i:J

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/r;->e:Lcom/google/android/exoplayer2/upstream/f;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/r;->f:Lcom/google/android/exoplayer2/source/j$a;

    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/r;->l:Z

    new-instance p1, Leva;

    new-instance p2, Lzua;

    filled-new-array {p4}, [Lcom/google/android/exoplayer2/k;

    move-result-object p3

    invoke-direct {p2, p3}, Lzua;-><init>([Lcom/google/android/exoplayer2/k;)V

    filled-new-array {p2}, [Lzua;

    move-result-object p2

    invoke-direct {p1, p2}, Leva;-><init>([Lzua;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->g:Leva;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->h:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/r;)Lcom/google/android/exoplayer2/source/j$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r;->f:Lcom/google/android/exoplayer2/source/j$a;

    return-object p0
.end method


# virtual methods
.method public a([Lqi3;[Z[Lh19;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    aput-object v2, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/exoplayer2/source/r$b;

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/source/r$b;-><init>(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/source/r$a;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method

.method public c(JLka9;)J
    .locals 0

    return-wide p1
.end method

.method public continueLoading(J)Z
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/r;->m:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/r;->c:Lcom/google/android/exoplayer2/upstream/a$a;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/a$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/a;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/r;->d:Lu5b;

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    :cond_1
    new-instance v2, Lcom/google/android/exoplayer2/source/r$c;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/r;->b:Lcom/google/android/exoplayer2/upstream/b;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/source/r$c;-><init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/upstream/a;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/r;->e:Lcom/google/android/exoplayer2/upstream/f;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/upstream/f;->getMinimumLoadableRetryCount(I)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->n(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/r;->f:Lcom/google/android/exoplayer2/source/j$a;

    new-instance v12, Lin5;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/source/r$c;->a:J

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/r;->b:Lcom/google/android/exoplayer2/upstream/b;

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lin5;-><init>(JLcom/google/android/exoplayer2/upstream/b;J)V

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/r;->k:Lcom/google/android/exoplayer2/k;

    const-wide/16 v18, 0x0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/r;->i:J

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v20, v0

    invoke-virtual/range {v11 .. v21}, Lcom/google/android/exoplayer2/source/j$a;->u(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    return v4

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/r$c;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/r$c;->a(Lcom/google/android/exoplayer2/source/r$c;)Lox9;

    move-result-object v2

    new-instance v15, Lin5;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/r$c;->a:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/r$c;->b:Lcom/google/android/exoplayer2/upstream/b;

    invoke-virtual {v2}, Lox9;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lox9;->e()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lox9;->c()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lin5;-><init>(JLcom/google/android/exoplayer2/upstream/b;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/r;->e:Lcom/google/android/exoplayer2/upstream/f;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/r$c;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f;->onLoadTaskConcluded(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/r;->f:Lcom/google/android/exoplayer2/source/j$a;

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/r;->i:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/j$a;->o(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic e(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/r$c;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/r;->d(Lcom/google/android/exoplayer2/source/r$c;JJZ)V

    return-void
.end method

.method public bridge synthetic f(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/r$c;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/r;->i(Lcom/google/android/exoplayer2/source/r$c;JJ)V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/source/h$a;J)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/h$a;->d(Lcom/google/android/exoplayer2/source/h;)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/r;->m:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/r;->m:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public getTrackGroups()Leva;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r;->g:Leva;

    return-object p0
.end method

.method public bridge synthetic h(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/r$c;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/r;->j(Lcom/google/android/exoplayer2/source/r$c;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p0

    return-object p0
.end method

.method public i(Lcom/google/android/exoplayer2/source/r$c;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/r$c;->a(Lcom/google/android/exoplayer2/source/r$c;)Lox9;

    move-result-object v2

    invoke-virtual {v2}, Lox9;->c()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/google/android/exoplayer2/source/r;->o:I

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/r$c;->b(Lcom/google/android/exoplayer2/source/r$c;)[B

    move-result-object v2

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/r;->n:[B

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/r;->m:Z

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/r$c;->a(Lcom/google/android/exoplayer2/source/r$c;)Lox9;

    move-result-object v2

    new-instance v15, Lin5;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/r$c;->a:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/r$c;->b:Lcom/google/android/exoplayer2/upstream/b;

    invoke-virtual {v2}, Lox9;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lox9;->e()Ljava/util/Map;

    move-result-object v8

    iget v2, v0, Lcom/google/android/exoplayer2/source/r;->o:I

    int-to-long v13, v2

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lin5;-><init>(JLcom/google/android/exoplayer2/upstream/b;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/r;->e:Lcom/google/android/exoplayer2/upstream/f;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/r$c;->a:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f;->onLoadTaskConcluded(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/r;->f:Lcom/google/android/exoplayer2/source/j$a;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/r;->k:Lcom/google/android/exoplayer2/k;

    const-wide/16 v10, 0x0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/r;->i:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/j$a;->q(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p0

    return p0
.end method

.method public j(Lcom/google/android/exoplayer2/source/r$c;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    move/from16 v2, p7

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/r$c;->a(Lcom/google/android/exoplayer2/source/r$c;)Lox9;

    move-result-object v3

    new-instance v4, Lin5;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/r$c;->a:J

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/r$c;->b:Lcom/google/android/exoplayer2/upstream/b;

    invoke-virtual {v3}, Lox9;->d()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual {v3}, Lox9;->e()Ljava/util/Map;

    move-result-object v19

    invoke-virtual {v3}, Lox9;->c()J

    move-result-wide v24

    move-object v14, v4

    move-wide v15, v5

    move-object/from16 v17, v7

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    invoke-direct/range {v14 .. v25}, Lin5;-><init>(JLcom/google/android/exoplayer2/upstream/b;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v3, Lih6;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/r;->k:Lcom/google/android/exoplayer2/k;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/r;->i:J

    invoke-static {v6, v7}, Lblb;->P0(J)J

    move-result-wide v34

    const/16 v27, 0x1

    const/16 v28, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    invoke-direct/range {v26 .. v35}, Lih6;-><init>(IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/r;->e:Lcom/google/android/exoplayer2/upstream/f;

    new-instance v6, Lcom/google/android/exoplayer2/upstream/f$a;

    invoke-direct {v6, v4, v3, v13, v2}, Lcom/google/android/exoplayer2/upstream/f$a;-><init>(Lin5;Lih6;Ljava/io/IOException;I)V

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/upstream/f;->a(Lcom/google/android/exoplayer2/upstream/f$a;)J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/r;->e:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v9, v8}, Lcom/google/android/exoplayer2/upstream/f;->getMinimumLoadableRetryCount(I)I

    move-result v9

    if-lt v2, v9, :cond_0

    goto :goto_0

    :cond_0
    move v2, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v8

    :goto_1
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/source/r;->l:Z

    if-eqz v9, :cond_2

    if-eqz v2, :cond_2

    const-string v2, "SingleSampleMediaPeriod"

    const-string v3, "Loading failed, treating as end-of-stream."

    invoke-static {v2, v3, v13}, Lop5;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v8, v0, Lcom/google/android/exoplayer2/source/r;->m:Z

    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    :goto_2
    move-object v15, v2

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v7, v5, v6}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v2

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    goto :goto_2

    :goto_3
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    move-result v16

    xor-int/lit8 v14, v16, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/r;->f:Lcom/google/android/exoplayer2/source/j$a;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/r;->k:Lcom/google/android/exoplayer2/k;

    const-wide/16 v9, 0x0

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/r;->i:J

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object v3, v4

    move v4, v5

    move v5, v7

    move v7, v8

    move-object/from16 v8, v17

    move-object/from16 v13, p6

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/j$a;->s(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/r;->e:Lcom/google/android/exoplayer2/upstream/f;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/r$c;->a:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/f;->onLoadTaskConcluded(J)V

    :cond_4
    return-object v15
.end method

.method public k()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/r;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->l()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 0

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/r;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/r$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/r$b;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method
