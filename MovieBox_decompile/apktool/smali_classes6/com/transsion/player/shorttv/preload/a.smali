.class public final Lcom/transsion/player/shorttv/preload/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroidx/media3/exoplayer/offline/DownloadRequest;

.field private d:J

.field private e:J

.field private f:J

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/media3/exoplayer/offline/DownloadRequest;JJJZ)V
    .locals 1

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "request"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 24
    .line 25
    iput-wide p4, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    .line 26
    .line 27
    iput-wide p6, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    .line 28
    .line 29
    iput-wide p8, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    .line 30
    .line 31
    iput-boolean p10, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e()Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 2
    .line 3
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
    instance-of v1, p1, Lcom/transsion/player/shorttv/preload/a;

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
    check-cast p1, Lcom/transsion/player/shorttv/preload/a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-wide v3, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    .line 47
    .line 48
    iget-wide v5, p1, Lcom/transsion/player/shorttv/preload/a;->d:J

    .line 49
    .line 50
    cmp-long v1, v3, v5

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget-wide v3, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    .line 56
    .line 57
    iget-wide v5, p1, Lcom/transsion/player/shorttv/preload/a;->e:J

    .line 58
    .line 59
    cmp-long v1, v3, v5

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-wide v3, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    .line 65
    .line 66
    iget-wide v5, p1, Lcom/transsion/player/shorttv/preload/a;->f:J

    .line 67
    .line 68
    cmp-long v1, v3, v5

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    return v2

    .line 73
    :cond_7
    iget-boolean v1, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    .line 74
    .line 75
    iget-boolean p1, p1, Lcom/transsion/player/shorttv/preload/a;->g:Z

    .line 76
    .line 77
    if-eq v1, p1, :cond_8

    .line 78
    .line 79
    return v2

    .line 80
    :cond_8
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public final h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/media3/exoplayer/offline/DownloadRequest;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-wide v1, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    .line 55
    .line 56
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public final i(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/player/shorttv/preload/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/player/shorttv/preload/a;->c:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/player/shorttv/preload/a;->d:J

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/transsion/player/shorttv/preload/a;->e:J

    .line 10
    .line 11
    iget-wide v7, p0, Lcom/transsion/player/shorttv/preload/a;->f:J

    .line 12
    .line 13
    iget-boolean v9, p0, Lcom/transsion/player/shorttv/preload/a;->g:Z

    .line 14
    .line 15
    new-instance v10, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v11, "VideoDownloadBean(id="

    .line 21
    .line 22
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", url="

    .line 29
    .line 30
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", request="

    .line 37
    .line 38
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", contentLength="

    .line 45
    .line 46
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", downloadLength="

    .line 53
    .line 54
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", maxLength="

    .line 61
    .line 62
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", isAdd="

    .line 69
    .line 70
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
