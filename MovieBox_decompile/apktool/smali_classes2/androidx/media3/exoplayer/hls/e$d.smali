.class final Landroidx/media3/exoplayer/hls/e$d;
.super Li2/c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/f0;[I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Li2/c;-><init>(Landroidx/media3/common/f0;[I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget p2, p2, v0

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Li2/c;->e(Landroidx/media3/common/r;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroidx/media3/exoplayer/hls/e$d;->i:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public f(JJJLjava/util/List;[Lg2/n;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget p3, p0, Landroidx/media3/exoplayer/hls/e$d;->i:I

    .line 6
    .line 7
    invoke-virtual {p0, p3, p1, p2}, Li2/c;->d(IJ)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p3, p0, Li2/c;->b:I

    .line 15
    .line 16
    add-int/lit8 p3, p3, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz p3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, p3, p1, p2}, Li2/c;->d(IJ)Z

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    if-nez p4, :cond_1

    .line 25
    .line 26
    iput p3, p0, Landroidx/media3/exoplayer/hls/e$d;->i:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/hls/e$d;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
