.class Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;
.super Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final e:Ljava/util/List;

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Z

.field private m:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SmoothStreamingMedia"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->k:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 11
    .line 12
    new-instance p1, Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->e:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->e:Ljava/util/List;

    .line 6
    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 30
    .line 31
    :cond_2
    :goto_1
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->e:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    new-array v15, v3, [Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->e:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v4, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    new-instance v4, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 23
    .line 24
    new-instance v5, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 25
    .line 26
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 27
    .line 28
    iget-object v7, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;->a:Ljava/util/UUID;

    .line 29
    .line 30
    const-string v8, "video/mp4"

    .line 31
    .line 32
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;->b:[B

    .line 33
    .line 34
    invoke-direct {v5, v7, v8, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 35
    .line 36
    .line 37
    new-array v6, v2, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 38
    .line 39
    aput-object v5, v6, v1

    .line 40
    .line 41
    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    .line 42
    .line 43
    .line 44
    move v5, v1

    .line 45
    :goto_0
    if-ge v5, v3, :cond_2

    .line 46
    .line 47
    aget-object v6, v15, v5

    .line 48
    .line 49
    iget v7, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->a:I

    .line 50
    .line 51
    const/4 v8, 0x2

    .line 52
    if-eq v7, v8, :cond_0

    .line 53
    .line 54
    if-ne v7, v2, :cond_1

    .line 55
    .line 56
    :cond_0
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/p1;

    .line 57
    .line 58
    move v7, v1

    .line 59
    :goto_1
    array-length v8, v6

    .line 60
    if-ge v7, v8, :cond_1

    .line 61
    .line 62
    aget-object v8, v6, v7

    .line 63
    .line 64
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8, v4}, Lcom/google/android/exoplayer2/p1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1$b;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    aput-object v8, v6, v7

    .line 77
    .line 78
    add-int/2addr v7, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    add-int/2addr v5, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 83
    .line 84
    iget v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->f:I

    .line 85
    .line 86
    iget v6, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->g:I

    .line 87
    .line 88
    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->h:J

    .line 89
    .line 90
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:J

    .line 91
    .line 92
    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->j:J

    .line 93
    .line 94
    iget v13, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->k:I

    .line 95
    .line 96
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->l:Z

    .line 97
    .line 98
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->m:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 99
    .line 100
    move-object v4, v1

    .line 101
    move-object v3, v15

    .line 102
    move-object v15, v2

    .line 103
    move-object/from16 v16, v3

    .line 104
    .line 105
    invoke-direct/range {v4 .. v16}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;-><init>(IIJJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;)V

    .line 106
    .line 107
    .line 108
    return-object v1
.end method

.method public n(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 1
    const-string v0, "MajorVersion"

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->f:I

    .line 8
    .line 9
    const-string v0, "MinorVersion"

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->g:I

    .line 16
    .line 17
    const-wide/32 v0, 0x989680

    .line 18
    .line 19
    .line 20
    const-string v2, "TimeScale"

    .line 21
    .line 22
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->h:J

    .line 27
    .line 28
    const-string v0, "Duration"

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->i:J

    .line 35
    .line 36
    const-string v0, "DVRWindowLength"

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->j:J

    .line 45
    .line 46
    const-string v0, "LookaheadCount"

    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->k:I

    .line 54
    .line 55
    const-string v0, "IsLive"

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->l:Z

    .line 63
    .line 64
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$d;->h:J

    .line 65
    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$a;->p(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
