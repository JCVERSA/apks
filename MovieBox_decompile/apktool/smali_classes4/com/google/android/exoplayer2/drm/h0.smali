.class public final Lcom/google/android/exoplayer2/drm/h0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/h0$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/exoplayer2/drm/c0$c;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Landroid/media/MediaDrm;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/exoplayer2/drm/h0;->d:Lcom/google/android/exoplayer2/drm/c0$c;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/l;->b:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    const-string v2, "Use C.CLEARKEY_UUID instead"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 21
    .line 22
    new-instance v0, Landroid/media/MediaDrm;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/h0;->m(Ljava/util/UUID;)Ljava/util/UUID;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 32
    .line 33
    iput v1, p0, Lcom/google/android/exoplayer2/drm/h0;->c:I

    .line 34
    .line 35
    sget-object v1, Lcom/google/android/exoplayer2/l;->d:Ljava/util/UUID;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/exoplayer2/drm/h0;->t()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/h0;->o(Landroid/media/MediaDrm;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public static synthetic g(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/c0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/h0;->s(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/drm/h0;Lcom/google/android/exoplayer2/drm/c0$b;Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/drm/h0;->r(Lcom/google/android/exoplayer2/drm/c0$b;Landroid/media/MediaDrm;[BII[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static i([B)[B
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/d0;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->s()S

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->s()S

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const-string v4, "FrameworkMediaDrm"

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v2, v5, :cond_3

    .line 22
    .line 23
    if-eq v3, v5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->s()S

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sget-object v6, Lcom/google/common/base/c;->e:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/util/d0;->B(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v5, "<LA_URL>"

    .line 37
    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    const-string p0, "</DATA>"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 v5, -0x1

    .line 52
    if-ne p0, v5, :cond_2

    .line 53
    .line 54
    const-string v5, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    .line 55
    .line 56
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-virtual {v0, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v5, "<LA_URL>https://x</LA_URL>"

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    add-int/lit8 v1, v1, 0x34

    .line 89
    .line 90
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    int-to-short v1, v2

    .line 103
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    int-to-short v1, v3

    .line 107
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    mul-int/lit8 v1, v1, 0x2

    .line 115
    .line 116
    int-to-short v1, v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :cond_3
    :goto_0
    const-string v0, "Unexpected record count or type. Skipping LA_URL workaround."

    .line 133
    .line 134
    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object p0
.end method

.method private static j(Ljava/util/UUID;[B)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/l;->c:Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/a;->a([B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    return-object p1
.end method

.method private static k(Ljava/util/UUID;[B)[B
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/l;->e:Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {p1, p0}, Lq9/l;->e([BLjava/util/UUID;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p1, v1

    .line 17
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/h0;->i([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Lq9/l;->a(Ljava/util/UUID;[B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    sget v1, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 26
    .line 27
    const/16 v2, 0x17

    .line 28
    .line 29
    if-ge v1, v2, :cond_2

    .line 30
    .line 31
    sget-object v1, Lcom/google/android/exoplayer2/l;->d:Ljava/util/UUID;

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    const-string v0, "Amazon"

    .line 46
    .line 47
    sget-object v1, Lcom/google/android/exoplayer2/util/p0;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    sget-object v0, Lcom/google/android/exoplayer2/util/p0;->d:Ljava/lang/String;

    .line 56
    .line 57
    const-string v1, "AFTB"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    const-string v1, "AFTS"

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    const-string v1, "AFTM"

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    const-string v1, "AFTT"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    :cond_3
    invoke-static {p1, p0}, Lq9/l;->e([BLjava/util/UUID;)[B

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    if-eqz p0, :cond_4

    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_4
    return-object p1
.end method

.method private static l(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/l;->c:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string p0, "video/mp4"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const-string p0, "audio/mp4"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    :cond_0
    const-string p0, "cenc"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    return-object p1
.end method

.method private static m(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/l;->c:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/google/android/exoplayer2/l;->b:Ljava/util/UUID;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method private static o(Landroid/media/MediaDrm;)V
    .locals 2

    .line 1
    const-string v0, "securityLevel"

    .line 2
    .line 3
    const-string v1, "L3"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static q(Ljava/util/UUID;Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/l;->d:Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget p0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-lt p0, v1, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-le p0, v2, :cond_3

    .line 29
    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 35
    .line 36
    move v1, v0

    .line 37
    move v3, v1

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ge v1, v4, :cond_1

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 49
    .line 50
    iget-object v5, v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 51
    .line 52
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, [B

    .line 57
    .line 58
    iget-object v6, v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v7, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    iget-object v4, v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    invoke-static {v5}, Lq9/l;->c([B)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    array-length v4, v5

    .line 85
    add-int/2addr v3, v4

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-array v1, v3, [B

    .line 90
    .line 91
    move v2, v0

    .line 92
    move v3, v2

    .line 93
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-ge v2, v4, :cond_2

    .line 98
    .line 99
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 104
    .line 105
    iget-object v4, v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 106
    .line 107
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, [B

    .line 112
    .line 113
    array-length v5, v4

    .line 114
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    .line 116
    .line 117
    add-int/2addr v3, v5

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->copyWithData([B)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_3
    move p0, v0

    .line 127
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-ge p0, v1, :cond_6

    .line 132
    .line 133
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 138
    .line 139
    iget-object v3, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 140
    .line 141
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, [B

    .line 146
    .line 147
    invoke-static {v3}, Lq9/l;->g([B)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    sget v4, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 152
    .line 153
    const/16 v5, 0x17

    .line 154
    .line 155
    if-ge v4, v5, :cond_4

    .line 156
    .line 157
    if-nez v3, :cond_4

    .line 158
    .line 159
    return-object v1

    .line 160
    :cond_4
    if-lt v4, v5, :cond_5

    .line 161
    .line 162
    if-ne v3, v2, :cond_5

    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_5
    add-int/lit8 p0, p0, 0x1

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 173
    .line 174
    return-object p0
.end method

.method private synthetic r(Lcom/google/android/exoplayer2/drm/c0$b;Landroid/media/MediaDrm;[BII[B)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p0

    .line 3
    move-object v2, p3

    .line 4
    move v3, p4

    .line 5
    move v4, p5

    .line 6
    move-object v5, p6

    .line 7
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/c0$b;->a(Lcom/google/android/exoplayer2/drm/c0;[BII[B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic s(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/c0;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/h0;->u(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "."

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "FrameworkMediaDrm"

    .line 29
    .line 30
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Lcom/google/android/exoplayer2/drm/z;

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/z;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method private static t()Z
    .locals 2

    .line 1
    const-string v0, "ASUS_Z00AD"

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/util/p0;->d:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static u(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/h0;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/h0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/h0;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    goto :goto_0

    .line 9
    :catch_1
    move-exception p0

    .line 10
    goto :goto_1

    .line 11
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public bridge synthetic b([B)Lcom/google/android/exoplayer2/decoder/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/h0;->n([B)Lcom/google/android/exoplayer2/drm/d0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c([BLjava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/drm/h0$a;->a(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 17
    .line 18
    invoke-direct {v0, v1, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 26
    .line 27
    .line 28
    return p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :catch_0
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method public closeSession([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/c0$a;
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/drm/h0;->q(Ljava/util/UUID;Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 10
    .line 11
    iget-object v1, p2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, [B

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/h0;->k(Ljava/util/UUID;[B)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 24
    .line 25
    iget-object v2, p2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/drm/h0;->l(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v0

    .line 32
    move-object v3, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p2, 0x0

    .line 35
    move-object v2, p2

    .line 36
    move-object v3, v2

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 38
    .line 39
    move-object v1, p1

    .line 40
    move v4, p3

    .line 41
    move-object v5, p4

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p3, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/drm/h0;->j(Ljava/util/UUID;[B)[B

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    const-string v0, "https://x"

    .line 61
    .line 62
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const-string p4, ""

    .line 69
    .line 70
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    iget-object v0, p2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    iget-object p4, p2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 87
    .line 88
    :cond_2
    sget p2, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 89
    .line 90
    const/16 v0, 0x17

    .line 91
    .line 92
    if-lt p2, v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const/high16 p1, -0x80000000

    .line 100
    .line 101
    :goto_1
    new-instance p2, Lcom/google/android/exoplayer2/drm/c0$a;

    .line 102
    .line 103
    invoke-direct {p2, p3, p4, p1}, Lcom/google/android/exoplayer2/drm/c0$a;-><init>([BLjava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    return-object p2
.end method

.method public e(Lcom/google/android/exoplayer2/drm/c0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/drm/f0;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/f0;-><init>(Lcom/google/android/exoplayer2/drm/h0;Lcom/google/android/exoplayer2/drm/c0$b;)V

    .line 10
    .line 11
    .line 12
    move-object p1, v1

    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public f([BLg9/u1;)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/h0$a;->b(Landroid/media/MediaDrm;[BLg9/u1;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string p1, "FrameworkMediaDrm"

    .line 14
    .line 15
    const-string p2, "setLogSessionId failed."

    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer2/drm/c0$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/exoplayer2/drm/c0$d;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/c0$d;-><init>([BLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public n([B)Lcom/google/android/exoplayer2/drm/d0;
    .locals 3

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/exoplayer2/l;->d:Ljava/util/UUID;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "securityLevel"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/h0;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "L3"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/drm/d0;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/h0;->m(Ljava/util/UUID;)Ljava/util/UUID;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/exoplayer2/drm/d0;-><init>(Ljava/util/UUID;[BZ)V

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public openSession()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public provideKeyResponse([B[B)[B
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/l;->c:Ljava/util/UUID;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h0;->a:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/a;->b([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public provideProvisionResponse([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/h0;->c:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/drm/h0;->c:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

.method public restoreKeys([B[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
