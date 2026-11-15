.class public final Landroidx/media3/exoplayer/v2;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/v2$b;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:F

.field public final c:J


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/v2$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/v2$b;->a(Landroidx/media3/exoplayer/v2$b;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/v2;->a:J

    .line 4
    invoke-static {p1}, Landroidx/media3/exoplayer/v2$b;->b(Landroidx/media3/exoplayer/v2$b;)F

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/v2;->b:F

    .line 5
    invoke-static {p1}, Landroidx/media3/exoplayer/v2$b;->c(Landroidx/media3/exoplayer/v2$b;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/v2;->c:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/v2$b;Landroidx/media3/exoplayer/v2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/v2;-><init>(Landroidx/media3/exoplayer/v2$b;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/v2$b;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/v2$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/v2$b;-><init>(Landroidx/media3/exoplayer/v2;Landroidx/media3/exoplayer/v2$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/media3/exoplayer/v2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/v2;

    .line 12
    .line 13
    iget-wide v3, p0, Landroidx/media3/exoplayer/v2;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Landroidx/media3/exoplayer/v2;->a:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget v1, p0, Landroidx/media3/exoplayer/v2;->b:F

    .line 22
    .line 23
    iget v3, p1, Landroidx/media3/exoplayer/v2;->b:F

    .line 24
    .line 25
    cmpl-float v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-wide v3, p0, Landroidx/media3/exoplayer/v2;->c:J

    .line 30
    .line 31
    iget-wide v5, p1, Landroidx/media3/exoplayer/v2;->c:J

    .line 32
    .line 33
    cmp-long p1, v3, v5

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/v2;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/media3/exoplayer/v2;->b:F

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Landroidx/media3/exoplayer/v2;->c:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-object v0, v3, v4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object v2, v3, v0

    .line 30
    .line 31
    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method
