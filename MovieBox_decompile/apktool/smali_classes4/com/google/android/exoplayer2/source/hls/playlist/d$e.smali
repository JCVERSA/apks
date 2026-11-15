.class public abstract Lcom/google/android/exoplayer2/source/hls/playlist/d$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/exoplayer2/source/hls/playlist/d$d;

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:J

.field public final k:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/d$d;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->a:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->b:Lcom/google/android/exoplayer2/source/hls/playlist/d$d;

    move-wide v1, p3

    .line 5
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->c:J

    move v1, p5

    .line 6
    iput v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->d:I

    move-wide v1, p6

    .line 7
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->e:J

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->f:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->g:Ljava/lang/String;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->h:Ljava/lang/String;

    move-wide v1, p11

    .line 11
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->i:J

    move-wide/from16 v1, p13

    .line 12
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->j:J

    move/from16 v1, p15

    .line 13
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->k:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/d$d;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/android/exoplayer2/source/hls/playlist/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/d$d;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->e:J

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->e:J

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    cmp-long p1, v0, v2

    .line 20
    .line 21
    if-gez p1, :cond_1

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/d$e;->a(Ljava/lang/Long;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
