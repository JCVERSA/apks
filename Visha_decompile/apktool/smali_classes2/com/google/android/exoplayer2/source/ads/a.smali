.class public final Lcom/google/android/exoplayer2/source/ads/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/a$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/google/android/exoplayer2/source/ads/a;

.field public static final i:Lcom/google/android/exoplayer2/source/ads/a$a;

.field public static final j:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:[Lcom/google/android/exoplayer2/source/ads/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v8, Lcom/google/android/exoplayer2/source/ads/a;

    const/4 v9, 0x0

    new-array v2, v9, [Lcom/google/android/exoplayer2/source/ads/a$a;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    sput-object v8, Lcom/google/android/exoplayer2/source/ads/a;->h:Lcom/google/android/exoplayer2/source/ads/a;

    new-instance v0, Lcom/google/android/exoplayer2/source/ads/a$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(J)V

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/source/ads/a$a;->j(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/a;->i:Lcom/google/android/exoplayer2/source/ads/a$a;

    new-instance v0, Lu6;

    invoke-direct {v0}, Lu6;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/a;->j:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;[J)V
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/ads/a;->b([J)[Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    .line 6
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    .line 7
    array-length p1, p2

    add-int/2addr p1, p7

    iput p1, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    .line 9
    iput p7, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/a;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p0

    return-object p0
.end method

.method public static b([J)[Lcom/google/android/exoplayer2/source/ads/a$a;
    .locals 6

    array-length v0, p0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/ads/a$a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-wide v4, p0, v2

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/source/ads/a$a;-><init>(J)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 11

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/a;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/google/android/exoplayer2/source/ads/a$a;

    move-object v5, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/ads/a$a;

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/google/android/exoplayer2/source/ads/a$a;->i:Lcom/google/android/exoplayer2/e$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/ads/a$a;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/a;->i(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/a;->i(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/a;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    new-instance p0, Lcom/google/android/exoplayer2/source/ads/a;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object p0
.end method

.method private static i(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(I)Lcom/google/android/exoplayer2/source/ads/a$a;
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    if-ge p1, v0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/source/ads/a;->i:Lcom/google/android/exoplayer2/source/ads/a$a;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public e(JJ)I
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v4

    if-eqz v2, :cond_0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    goto :goto_1

    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    :goto_0
    iget p4, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-ge p3, p4, :cond_3

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p4

    iget-wide v4, p4, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    cmp-long p4, v4, v0

    if-eqz p4, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p4

    iget-wide v4, p4, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    cmp-long p4, v4, p1

    if-lez p4, :cond_2

    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/ads/a$a;->i()Z

    move-result p4

    if-nez p4, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-ge p3, p0, :cond_4

    move v3, p3

    :cond_4
    :goto_1
    return v3
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

    const-class v3, Lcom/google/android/exoplayer2/source/ads/a;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f(JJ)I
    .locals 7

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ads/a;->h(JJI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/a$a;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public g(II)Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p0

    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    aget p0, p0, p2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final h(JJI)Z
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    cmp-long p0, v4, v0

    const/4 p5, 0x1

    if-nez p0, :cond_3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p3, v0

    if-eqz p0, :cond_1

    cmp-long p0, p1, p3

    if-gez p0, :cond_2

    :cond_1
    move v3, p5

    :cond_2
    return v3

    :cond_3
    cmp-long p0, p1, v4

    if-gez p0, :cond_4

    move v3, p5

    :cond_4
    return v3
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public j(II)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 9

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v1, v0, p1

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    if-ne v1, p2, :cond_1

    return-object p0

    :cond_1
    array-length v1, v0

    invoke-static {v0, v1}, Lblb;->x0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/ads/a$a;->j(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p2

    aput-object p2, v3, p1

    new-instance p1, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object p1
.end method

.method public k(II)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lblb;->x0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v0, v3, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/a$a;->k(II)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p2

    aput-object p2, v3, p1

    new-instance p1, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object p1
.end method

.method public l(J)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 9

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object v0
.end method

.method public m(IILandroid/net/Uri;)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lblb;->x0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v0, v3, p1

    invoke-virtual {v0, p3, p2}, Lcom/google/android/exoplayer2/source/ads/a$a;->l(Landroid/net/Uri;I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p2

    aput-object p2, v3, p1

    new-instance p1, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object p1
.end method

.method public n(J)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 9

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    move-object v1, v0

    move-wide v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object v0
.end method

.method public o(II)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lblb;->x0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v0, v3, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/a$a;->k(II)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p2

    aput-object p2, v3, p1

    new-instance p1, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object p1
.end method

.method public p(II)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lblb;->x0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v0, v3, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/ads/a$a;->k(II)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p2

    aput-object p2, v3, p1

    new-instance p1, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object p1
.end method

.method public q(I)Lcom/google/android/exoplayer2/source/ads/a;
    .locals 9

    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v1, v0

    invoke-static {v0, v1}, Lblb;->x0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v0, v3, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/a$a;->m()Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object v0

    aput-object v0, v3, p1

    new-instance p1, Lcom/google/android/exoplayer2/source/ads/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    iget v8, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/ads/a;-><init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/source/ads/a$a;JJI)V

    return-object p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/ads/a$a;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/a;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a;->i(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a;->i(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/a;->i(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/a;->f:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ads/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v3, v3

    const-string v4, "])"

    if-ge v2, v3, :cond_8

    const-string v3, "adGroup(timeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v3, v3, v2

    iget-wide v5, v3, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ads=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    array-length v5, v5

    const-string v6, ", "

    const/4 v7, 0x1

    if-ge v3, v5, :cond_6

    const-string v5, "ad(state="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    aget v5, v5, v3

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    const/4 v8, 0x4

    if-eq v5, v8, :cond_0

    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v5, 0x21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v5, 0x53

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v5, 0x52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v5, 0x5f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, ", durationUs="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/a$a;->f:[J

    aget-wide v8, v5, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/a;->g:[Lcom/google/android/exoplayer2/source/ads/a$a;

    array-length v3, v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
