.class public Landroidx/media3/exoplayer/offline/DownloadRequest$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:Landroidx/media3/exoplayer/offline/DownloadRequest$ByteRange;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->b:Landroid/net/Uri;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->h:Landroidx/media3/exoplayer/offline/DownloadRequest$ByteRange;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 11

    .line 1
    new-instance v10, Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->b:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->d:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :goto_0
    move-object v4, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->e:[B

    .line 21
    .line 22
    iget-object v6, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->f:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v7, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->g:[B

    .line 25
    .line 26
    iget-object v8, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->h:Landroidx/media3/exoplayer/offline/DownloadRequest$ByteRange;

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    move-object v0, v10

    .line 30
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/offline/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;[BLjava/lang/String;[BLandroidx/media3/exoplayer/offline/DownloadRequest$ByteRange;Landroidx/media3/exoplayer/offline/DownloadRequest$a;)V

    .line 31
    .line 32
    .line 33
    return-object v10
.end method

.method public b(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c([B)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->g:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public d([B)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->e:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public f(Ljava/util/List;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
