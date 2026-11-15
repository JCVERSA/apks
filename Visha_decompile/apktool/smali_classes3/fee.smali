.class public final Lfee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leee;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>([J[JJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfee;->a:[J

    iput-object p2, p0, Lfee;->b:[J

    iput-wide p3, p0, Lfee;->c:J

    iput-wide p7, p0, Lfee;->d:J

    iput p9, p0, Lfee;->e:I

    return-void
.end method

.method public static b(JJLu9e;Lu4h;)Lfee;
    .locals 24

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lu4h;->m(I)V

    invoke-virtual/range {p5 .. p5}, Lu4h;->A()I

    move-result v4

    iget v5, v2, Lu9e;->c:I

    int-to-long v5, v5

    int-to-long v7, v4

    invoke-virtual/range {p5 .. p5}, Lu4h;->A()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v9, v2, Lu9e;->d:I

    iget v10, v2, Lu9e;->g:I

    int-to-long v10, v10

    int-to-long v12, v4

    mul-long/2addr v12, v10

    const-wide/16 v10, -0x1

    add-long/2addr v12, v10

    invoke-static {v12, v13, v9}, Lkfh;->O(JI)J

    move-result-wide v17

    invoke-virtual/range {p5 .. p5}, Lu4h;->K()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Lu4h;->K()I

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lu4h;->K()I

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Lu4h;->m(I)V

    iget v14, v2, Lu9e;->c:I

    int-to-long v14, v14

    add-long v14, p2, v14

    new-array v10, v4, [J

    new-array v11, v4, [J

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_0
    if-ge v13, v4, :cond_5

    int-to-long v2, v13

    mul-long v2, v2, v17

    int-to-long v0, v4

    div-long/2addr v2, v0

    aput-wide v2, v10, v13

    aput-wide v14, v11, v13

    const/4 v0, 0x1

    if-eq v12, v0, :cond_4

    const/4 v0, 0x2

    if-eq v12, v0, :cond_3

    const/4 v1, 0x3

    if-eq v12, v1, :cond_2

    const/4 v1, 0x4

    if-eq v12, v1, :cond_1

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lu4h;->J()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lu4h;->I()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p5 .. p5}, Lu4h;->K()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    invoke-virtual/range {p5 .. p5}, Lu4h;->G()I

    move-result v1

    :goto_2
    int-to-long v2, v9

    int-to-long v0, v1

    mul-long/2addr v0, v2

    add-long/2addr v14, v0

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto :goto_0

    :cond_5
    add-long v0, p2, v5

    add-long/2addr v7, v0

    const-wide/16 v4, -0x1

    move-wide/from16 v2, p0

    cmp-long v4, v2, v4

    const-string v5, "VbriSeeker"

    const-string v6, ", "

    if-eqz v4, :cond_6

    cmp-long v4, v2, v7

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VBRI data size mismatch: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    cmp-long v2, v7, v14

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VBRI bytes and ToC mismatch (using max): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\nSeeking will be inaccurate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide/from16 v21, v2

    goto :goto_3

    :cond_7
    move-wide/from16 v21, v7

    :goto_3
    new-instance v2, Lfee;

    move-object/from16 v3, p4

    iget v3, v3, Lu9e;->f:I

    move-object v14, v2

    move-object v15, v10

    move-object/from16 v16, v11

    move-wide/from16 v19, v0

    move/from16 v23, v3

    invoke-direct/range {v14 .. v23}, Lfee;-><init>([J[JJJJI)V

    return-object v2
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 8

    iget-object v0, p0, Lfee;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lkfh;->y([JJZZ)I

    move-result v2

    new-instance v3, Llae;

    aget-wide v4, v0, v2

    iget-object p0, p0, Lfee;->b:[J

    aget-wide v6, p0, v2

    invoke-direct {v3, v4, v5, v6, v7}, Llae;-><init>(JJ)V

    iget-wide v4, v3, Llae;->a:J

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    new-instance p1, Llae;

    aget-wide v0, v0, v2

    aget-wide v4, p0, v2

    invoke-direct {p1, v0, v1, v4, v5}, Llae;-><init>(JJ)V

    new-instance p0, Lz9e;

    invoke-direct {p0, v3, p1}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lz9e;

    invoke-direct {p0, v3, v3}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0
.end method

.method public final c(J)J
    .locals 2

    iget-object v0, p0, Lfee;->b:[J

    iget-object p0, p0, Lfee;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lkfh;->y([JJZZ)I

    move-result p1

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lfee;->c:J

    return-wide v0
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Lfee;->e:I

    return p0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lfee;->d:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
