.class final Landroidx/media3/exoplayer/hls/e$c;
.super Lg2/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final e:Ljava/util/List;

.field private final f:J

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-direct {p0, v2, v3, v0, v1}, Lg2/b;-><init>(JJ)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/e$c;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-wide p2, p0, Landroidx/media3/exoplayer/hls/e$c;->f:J

    .line 16
    .line 17
    iput-object p4, p0, Landroidx/media3/exoplayer/hls/e$c;->e:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lg2/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/e$c;->f:J

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/e$c;->e:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Lg2/b;->d()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    long-to-int v3, v3

    .line 13
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 18
    .line 19
    iget-wide v2, v2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    return-wide v0
.end method

.method public b()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lg2/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/e$c;->e:Ljava/util/List;

    .line 5
    .line 6
    invoke-virtual {p0}, Lg2/b;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    long-to-int v1, v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/c$g;

    .line 16
    .line 17
    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/e$c;->f:J

    .line 18
    .line 19
    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 20
    .line 21
    add-long/2addr v1, v3

    .line 22
    iget-wide v3, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    .line 23
    .line 24
    add-long/2addr v1, v3

    .line 25
    return-wide v1
.end method
