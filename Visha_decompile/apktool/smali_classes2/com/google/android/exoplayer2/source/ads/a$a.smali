.class public final Lcom/google/android/exoplayer2/source/ads/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final i:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final b:J

.field public final c:I

.field public final d:[Landroid/net/Uri;

.field public final e:[I

.field public final f:[J

.field public final g:J

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv6;

    invoke-direct {v0}, Lv6;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/a$a;->i:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 11

    const/4 v0, 0x0

    .line 1
    new-array v5, v0, [I

    new-array v6, v0, [Landroid/net/Uri;

    new-array v7, v0, [J

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method public constructor <init>(JI[I[Landroid/net/Uri;[JJZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    array-length v0, p4

    array-length v1, p5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    .line 5
    iput p3, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    .line 7
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    .line 8
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    .line 9
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    .line 10
    iput-boolean p9, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/a$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/a$a;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p0

    return-object p0
.end method

.method public static b([JI)[J
    .locals 3

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method

.method public static c([II)[I
    .locals 2

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method public static d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/a$a;
    .locals 12

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    new-instance p0, Lcom/google/android/exoplayer2/source/ads/a$a;

    if-nez v2, :cond_0

    new-array v2, v0, [I

    :cond_0
    move-object v7, v2

    if-nez v1, :cond_1

    new-array v1, v0, [Landroid/net/Uri;

    goto :goto_0

    :cond_1
    new-array v2, v0, [Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    :goto_0
    if-nez v6, :cond_2

    new-array v0, v0, [J

    move-object v8, v0

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    move-object v2, p0

    move-object v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object p0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/a$a;->f(I)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/ads/a$a;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    if-nez v2, :cond_1

    aget v1, v1, p1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public g()Z
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/a$a;->e()I

    move-result v0

    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public j(I)Lcom/google/android/exoplayer2/source/ads/a$a;
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/a$a;->c([II)[I

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ads/a$a;->b([JI)[J

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/net/Uri;

    new-instance v0, Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public k(II)Lcom/google/android/exoplayer2/source/ads/a$a;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    invoke-static {v3}, Lzi;->a(Z)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/source/ads/a$a;->c([II)[I

    move-result-object v11

    aget v3, v11, v2

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_2

    if-ne v3, v1, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    invoke-static {v5}, Lzi;->a(Z)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    array-length v4, v3

    array-length v5, v11

    if-ne v4, v5, :cond_4

    :goto_2
    move-object v13, v3

    goto :goto_3

    :cond_4
    array-length v4, v11

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/source/ads/a$a;->b([JI)[J

    move-result-object v3

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    array-length v4, v3

    array-length v5, v11

    if-ne v4, v5, :cond_5

    :goto_4
    move-object v12, v3

    goto :goto_5

    :cond_5
    array-length v4, v11

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/Uri;

    goto :goto_4

    :goto_5
    aput v1, v11, v2

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    iget v10, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    move-object v7, v1

    move/from16 v16, v0

    invoke-direct/range {v7 .. v16}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v1
.end method

.method public l(Landroid/net/Uri;I)Lcom/google/android/exoplayer2/source/ads/a$a;
    .locals 12

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->c([II)[I

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    array-length v1, v0

    array-length v2, v6

    if-ne v1, v2, :cond_0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    array-length v1, v6

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->b([JI)[J

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    array-length v1, v6

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/net/Uri;

    aput-object p1, v7, p2

    const/4 p1, 0x1

    aput p1, v6, p2

    new-instance p1, Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object p1
.end method

.method public m()Lcom/google/android/exoplayer2/source/ads/a$a;
    .locals 13

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    new-array v7, v2, [I

    new-array v8, v2, [Landroid/net/Uri;

    new-array v9, v2, [J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    array-length v6, v0

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    :goto_0
    if-ge v2, v6, :cond_3

    aget v0, v7, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    aput v0, v7, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->d:[Landroid/net/Uri;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a$a;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->h:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
