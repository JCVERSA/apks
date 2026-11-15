.class public final Lpk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpk4$b;,
        Lpk4$a;
    }
.end annotation


# static fields
.field public static final l:[F


# instance fields
.field public final a:Lekb;

.field public final b:Lqw7;

.field public final c:[Z

.field public final d:Lpk4$a;

.field public final e:Lzx6;

.field public f:Lpk4$b;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Lfva;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lpk4;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lekb;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpk4;->a:Lekb;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lpk4;->c:[Z

    new-instance v0, Lpk4$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lpk4$a;-><init>(I)V

    iput-object v0, p0, Lpk4;->d:Lpk4$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lpk4;->k:J

    if-eqz p1, :cond_0

    new-instance p1, Lzx6;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lzx6;-><init>(II)V

    iput-object p1, p0, Lpk4;->e:Lzx6;

    new-instance p1, Lqw7;

    invoke-direct {p1}, Lqw7;-><init>()V

    iput-object p1, p0, Lpk4;->b:Lqw7;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lpk4;->e:Lzx6;

    iput-object p1, p0, Lpk4;->b:Lqw7;

    :goto_0
    return-void
.end method

.method public static d(Lpk4$a;ILjava/lang/String;)Lcom/google/android/exoplayer2/k;
    .locals 8

    iget-object v0, p0, Lpk4$a;->e:[B

    iget p0, p0, Lpk4$a;->c:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance v0, Lpw7;

    invoke-direct {v0, p0}, Lpw7;-><init>([B)V

    invoke-virtual {v0, p1}, Lpw7;->s(I)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lpw7;->s(I)V

    invoke-virtual {v0}, Lpw7;->q()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lpw7;->r(I)V

    invoke-virtual {v0}, Lpw7;->g()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lpw7;->r(I)V

    invoke-virtual {v0, v3}, Lpw7;->r(I)V

    :cond_0
    invoke-virtual {v0, p1}, Lpw7;->h(I)I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v4, "Invalid aspect ratio"

    const-string v5, "H263Reader"

    const/16 v6, 0xf

    if-ne p1, v6, :cond_2

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result p1

    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v5, v4}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float v1, v1

    div-float v2, p1, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lpk4;->l:[F

    array-length v7, v1

    if-ge p1, v7, :cond_3

    aget v2, v1, p1

    goto :goto_0

    :cond_3
    invoke-static {v5, v4}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lpw7;->g()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_4

    invoke-virtual {v0, v1}, Lpw7;->r(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lpw7;->r(I)V

    invoke-virtual {v0}, Lpw7;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, v6}, Lpw7;->r(I)V

    invoke-virtual {v0}, Lpw7;->q()V

    invoke-virtual {v0, v6}, Lpw7;->r(I)V

    invoke-virtual {v0}, Lpw7;->q()V

    invoke-virtual {v0, v6}, Lpw7;->r(I)V

    invoke-virtual {v0}, Lpw7;->q()V

    invoke-virtual {v0, v3}, Lpw7;->r(I)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Lpw7;->r(I)V

    invoke-virtual {v0}, Lpw7;->q()V

    invoke-virtual {v0, v6}, Lpw7;->r(I)V

    invoke-virtual {v0}, Lpw7;->q()V

    :cond_4
    invoke-virtual {v0, v1}, Lpw7;->h(I)I

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Unhandled video object layer shape"

    invoke-static {v5, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lpw7;->q()V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Lpw7;->h(I)I

    move-result p1

    invoke-virtual {v0}, Lpw7;->q()V

    invoke-virtual {v0}, Lpw7;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_6

    const-string p1, "Invalid vop_increment_time_resolution"

    invoke-static {v5, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_1
    if-lez p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v1}, Lpw7;->r(I)V

    :cond_8
    :goto_2
    invoke-virtual {v0}, Lpw7;->q()V

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Lpw7;->h(I)I

    move-result v1

    invoke-virtual {v0}, Lpw7;->q()V

    invoke-virtual {v0, p1}, Lpw7;->h(I)I

    move-result p1

    invoke-virtual {v0}, Lpw7;->q()V

    invoke-virtual {v0}, Lpw7;->q()V

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p2

    const-string/jumbo v0, "video/mp4v-es"

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/k$b;->j0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/k$b;->Q(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/k$b;->a0(F)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lqw7;)V
    .locals 13

    iget-object v0, p0, Lpk4;->f:Lpk4$b;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lpk4;->i:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lqw7;->e()I

    move-result v0

    invoke-virtual {p1}, Lqw7;->f()I

    move-result v1

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v2

    iget-wide v3, p0, Lpk4;->g:J

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lpk4;->g:J

    iget-object v3, p0, Lpk4;->i:Lfva;

    invoke-virtual {p1}, Lqw7;->a()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lfva;->d(Lqw7;I)V

    :goto_0
    iget-object v3, p0, Lpk4;->c:[Z

    invoke-static {v2, v0, v1, v3}, Lay6;->c([BII[Z)I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-boolean p1, p0, Lpk4;->j:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lpk4;->d:Lpk4$a;

    invoke-virtual {p1, v2, v0, v1}, Lpk4$a;->a([BII)V

    :cond_0
    iget-object p1, p0, Lpk4;->f:Lpk4$b;

    invoke-virtual {p1, v2, v0, v1}, Lpk4$b;->a([BII)V

    iget-object p0, p0, Lpk4;->e:Lzx6;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2, v0, v1}, Lzx6;->a([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v4

    add-int/lit8 v5, v3, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sub-int v6, v3, v0

    iget-boolean v7, p0, Lpk4;->j:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_5

    if-lez v6, :cond_3

    iget-object v7, p0, Lpk4;->d:Lpk4$a;

    invoke-virtual {v7, v2, v0, v3}, Lpk4$a;->a([BII)V

    :cond_3
    if-gez v6, :cond_4

    neg-int v7, v6

    goto :goto_1

    :cond_4
    move v7, v9

    :goto_1
    iget-object v10, p0, Lpk4;->d:Lpk4$a;

    invoke-virtual {v10, v4, v7}, Lpk4$a;->b(II)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lpk4;->i:Lfva;

    iget-object v10, p0, Lpk4;->d:Lpk4$a;

    iget v11, v10, Lpk4$a;->d:I

    iget-object v12, p0, Lpk4;->h:Ljava/lang/String;

    invoke-static {v12}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lpk4;->d(Lpk4$a;ILjava/lang/String;)Lcom/google/android/exoplayer2/k;

    move-result-object v10

    invoke-interface {v7, v10}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iput-boolean v8, p0, Lpk4;->j:Z

    :cond_5
    iget-object v7, p0, Lpk4;->f:Lpk4$b;

    invoke-virtual {v7, v2, v0, v3}, Lpk4$b;->a([BII)V

    iget-object v7, p0, Lpk4;->e:Lzx6;

    if-eqz v7, :cond_8

    if-lez v6, :cond_6

    invoke-virtual {v7, v2, v0, v3}, Lzx6;->a([BII)V

    goto :goto_2

    :cond_6
    neg-int v9, v6

    :goto_2
    iget-object v0, p0, Lpk4;->e:Lzx6;

    invoke-virtual {v0, v9}, Lzx6;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lpk4;->e:Lzx6;

    iget-object v6, v0, Lzx6;->d:[B

    iget v0, v0, Lzx6;->e:I

    invoke-static {v6, v0}, Lay6;->q([BI)I

    move-result v0

    iget-object v6, p0, Lpk4;->b:Lqw7;

    invoke-static {v6}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqw7;

    iget-object v7, p0, Lpk4;->e:Lzx6;

    iget-object v7, v7, Lzx6;->d:[B

    invoke-virtual {v6, v7, v0}, Lqw7;->M([BI)V

    iget-object v0, p0, Lpk4;->a:Lekb;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekb;

    iget-wide v6, p0, Lpk4;->k:J

    iget-object v9, p0, Lpk4;->b:Lqw7;

    invoke-virtual {v0, v6, v7, v9}, Lekb;->a(JLqw7;)V

    :cond_7
    const/16 v0, 0xb2

    if-ne v4, v0, :cond_8

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v0

    add-int/lit8 v6, v3, 0x2

    aget-byte v0, v0, v6

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Lpk4;->e:Lzx6;

    invoke-virtual {v0, v4}, Lzx6;->e(I)V

    :cond_8
    sub-int v0, v1, v3

    iget-wide v6, p0, Lpk4;->g:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget-object v3, p0, Lpk4;->f:Lpk4$b;

    iget-boolean v8, p0, Lpk4;->j:Z

    invoke-virtual {v3, v6, v7, v0, v8}, Lpk4$b;->b(JIZ)V

    iget-object v0, p0, Lpk4;->f:Lpk4$b;

    iget-wide v6, p0, Lpk4;->k:J

    invoke-virtual {v0, v4, v6, v7}, Lpk4$b;->c(IJ)V

    move v0, v5

    goto/16 :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lqk3;Lnab$d;)V
    .locals 2

    invoke-virtual {p2}, Lnab$d;->a()V

    invoke-virtual {p2}, Lnab$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpk4;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object v0

    iput-object v0, p0, Lpk4;->i:Lfva;

    new-instance v1, Lpk4$b;

    invoke-direct {v1, v0}, Lpk4$b;-><init>(Lfva;)V

    iput-object v1, p0, Lpk4;->f:Lpk4$b;

    iget-object p0, p0, Lpk4;->a:Lekb;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lekb;->b(Lqk3;Lnab$d;)V

    :cond_0
    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lpk4;->k:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Lpk4;->c:[Z

    invoke-static {v0}, Lay6;->a([Z)V

    iget-object v0, p0, Lpk4;->d:Lpk4$a;

    invoke-virtual {v0}, Lpk4$a;->c()V

    iget-object v0, p0, Lpk4;->f:Lpk4$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpk4$b;->d()V

    :cond_0
    iget-object v0, p0, Lpk4;->e:Lzx6;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzx6;->d()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpk4;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lpk4;->k:J

    return-void
.end method
