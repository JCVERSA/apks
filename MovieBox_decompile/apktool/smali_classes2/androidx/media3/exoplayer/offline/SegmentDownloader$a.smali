.class final Landroidx/media3/exoplayer/offline/SegmentDownloader$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/datasource/cache/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/offline/o$a;

.field private final b:J

.field private final c:I

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/o$a;JIJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->a:Landroidx/media3/exoplayer/offline/o$a;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->b:J

    .line 7
    .line 8
    iput p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->c:I

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->d:J

    .line 11
    .line 12
    iput p7, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->e:I

    .line 13
    .line 14
    return-void
.end method

.method private b()F
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->b:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    const/high16 v3, 0x42c80000    # 100.0f

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v2, v0, v4

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-wide v4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->d:J

    .line 18
    .line 19
    long-to-float v2, v4

    .line 20
    mul-float/2addr v2, v3

    .line 21
    long-to-float v0, v0

    .line 22
    div-float/2addr v2, v0

    .line 23
    return v2

    .line 24
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->c:I

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->e:I

    .line 29
    .line 30
    int-to-float v1, v1

    .line 31
    mul-float/2addr v1, v3

    .line 32
    int-to-float v0, v0

    .line 33
    div-float/2addr v1, v0

    .line 34
    return v1

    .line 35
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 36
    .line 37
    return v0
.end method


# virtual methods
.method public a(JJJ)V
    .locals 6

    .line 1
    iget-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->d:J

    .line 2
    .line 3
    add-long v3, p1, p5

    .line 4
    .line 5
    iput-wide v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->d:J

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->a:Landroidx/media3/exoplayer/offline/o$a;

    .line 8
    .line 9
    iget-wide v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->b:J

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->b()F

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/o$a;->onProgress(JJF)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->e:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->e:I

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->a:Landroidx/media3/exoplayer/offline/o$a;

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->b:J

    .line 10
    .line 11
    iget-wide v4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->d:J

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$a;->b()F

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/offline/o$a;->onProgress(JJF)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
