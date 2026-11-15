.class public final Lg2/h$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf2/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lg2/h;

.field private final b:Landroidx/media3/exoplayer/source/e0;

.field private final c:I

.field private d:Z

.field final synthetic e:Lg2/h;


# direct methods
.method public constructor <init>(Lg2/h;Lg2/h;Landroidx/media3/exoplayer/source/e0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg2/h$a;->e:Lg2/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lg2/h$a;->a:Lg2/h;

    .line 7
    .line 8
    iput-object p3, p0, Lg2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    .line 9
    .line 10
    iput p4, p0, Lg2/h$a;->c:I

    .line 11
    .line 12
    return-void
.end method

.method private a()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lg2/h$a;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 6
    .line 7
    invoke-static {v0}, Lg2/h;->l(Lg2/h;)Landroidx/media3/exoplayer/source/s$a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 12
    .line 13
    invoke-static {v0}, Lg2/h;->h(Lg2/h;)[I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v2, p0, Lg2/h$a;->c:I

    .line 18
    .line 19
    aget v2, v0, v2

    .line 20
    .line 21
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 22
    .line 23
    invoke-static {v0}, Lg2/h;->i(Lg2/h;)[Landroidx/media3/common/r;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v3, p0, Lg2/h$a;->c:I

    .line 28
    .line 29
    aget-object v3, v0, v3

    .line 30
    .line 31
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 32
    .line 33
    invoke-static {v0}, Lg2/h;->j(Lg2/h;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/source/s$a;->j(ILandroidx/media3/common/r;ILjava/lang/Object;J)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lg2/h$a;->d:Z

    .line 44
    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 2
    .line 3
    invoke-static {v0}, Lg2/h;->g(Lg2/h;)[Z

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lg2/h$a;->c:I

    .line 8
    .line 9
    aget-boolean v0, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 15
    .line 16
    invoke-static {v0}, Lg2/h;->g(Lg2/h;)[Z

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lg2/h$a;->c:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-boolean v2, v0, v1

    .line 24
    .line 25
    return-void
.end method

.method public c(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg2/h;->y()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x3

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 12
    .line 13
    invoke-static {v0}, Lg2/h;->d(Lg2/h;)Lg2/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 20
    .line 21
    invoke-static {v0}, Lg2/h;->d(Lg2/h;)Lg2/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v2, p0, Lg2/h$a;->c:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lg2/a;->g(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v2, p0, Lg2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/e0;->F()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-gt v0, v2, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    invoke-direct {p0}, Lg2/h$a;->a()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lg2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    .line 46
    .line 47
    iget-object v1, p0, Lg2/h$a;->e:Lg2/h;

    .line 48
    .line 49
    iget-boolean v1, v1, Lg2/h;->y:Z

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/source/e0;->V(Landroidx/media3/exoplayer/s2;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg2/h;->y()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lg2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    .line 10
    .line 11
    iget-object v1, p0, Lg2/h$a;->e:Lg2/h;

    .line 12
    .line 13
    iget-boolean v1, v1, Lg2/h;->y:Z

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/e0;->N(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    .line 1
    return-void
.end method

.method public skipData(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lg2/h$a;->e:Lg2/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg2/h;->y()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lg2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    .line 12
    .line 13
    iget-object v1, p0, Lg2/h$a;->e:Lg2/h;

    .line 14
    .line 15
    iget-boolean v1, v1, Lg2/h;->y:Z

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, v1}, Landroidx/media3/exoplayer/source/e0;->H(JZ)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p2, p0, Lg2/h$a;->e:Lg2/h;

    .line 22
    .line 23
    invoke-static {p2}, Lg2/h;->d(Lg2/h;)Lg2/a;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-object p2, p0, Lg2/h$a;->e:Lg2/h;

    .line 30
    .line 31
    invoke-static {p2}, Lg2/h;->d(Lg2/h;)Lg2/a;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget v0, p0, Lg2/h$a;->c:I

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Lg2/a;->g(I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget-object v0, p0, Lg2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->F()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sub-int/2addr p2, v0

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    :cond_1
    iget-object p2, p0, Lg2/h$a;->b:Landroidx/media3/exoplayer/source/e0;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/e0;->h0(I)V

    .line 57
    .line 58
    .line 59
    if-lez p1, :cond_2

    .line 60
    .line 61
    invoke-direct {p0}, Lg2/h$a;->a()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return p1
.end method
