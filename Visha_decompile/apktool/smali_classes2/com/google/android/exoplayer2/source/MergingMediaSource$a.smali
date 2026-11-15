.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource$a;
.super Lm54;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:[J

.field public final f:[J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/a0;Ljava/util/Map;)V
    .locals 11

    invoke-direct {p0, p1}, Lm54;-><init>(Lcom/google/android/exoplayer2/a0;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->f:[J

    new-instance v1, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->f:[J

    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/a0$d;->o:J

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->m()I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->e:[J

    new-instance v1, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/a0;->k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;

    iget-object v3, v1, Lcom/google/android/exoplayer2/a0$b;->c:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->e:[J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v3, v1, Lcom/google/android/exoplayer2/a0$b;->e:J

    :goto_2
    aput-wide v3, v5, v2

    iget-wide v5, v1, Lcom/google/android/exoplayer2/a0$b;->e:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->f:[J

    iget v8, v1, Lcom/google/android/exoplayer2/a0$b;->d:I

    aget-wide v9, v7, v8

    sub-long/2addr v5, v3

    sub-long/2addr v9, v5

    aput-wide v9, v7, v8

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lm54;->k(ILcom/google/android/exoplayer2/a0$b;Z)Lcom/google/android/exoplayer2/a0$b;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->e:[J

    aget-wide p0, p0, p1

    iput-wide p0, p2, Lcom/google/android/exoplayer2/a0$b;->e:J

    return-object p2
.end method

.method public s(ILcom/google/android/exoplayer2/a0$d;J)Lcom/google/android/exoplayer2/a0$d;
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lm54;->s(ILcom/google/android/exoplayer2/a0$d;J)Lcom/google/android/exoplayer2/a0$d;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->f:[J

    aget-wide p0, p0, p1

    iput-wide p0, p2, Lcom/google/android/exoplayer2/a0$d;->o:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, p3

    if-eqz v0, :cond_1

    iget-wide v0, p2, Lcom/google/android/exoplayer2/a0$d;->n:J

    cmp-long p3, v0, p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide p0, p2, Lcom/google/android/exoplayer2/a0$d;->n:J

    :goto_1
    iput-wide p0, p2, Lcom/google/android/exoplayer2/a0$d;->n:J

    return-object p2
.end method
