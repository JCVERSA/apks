.class public final Landroidx/media3/exoplayer/drm/k0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/k0$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/media3/exoplayer/drm/b0$c;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Landroid/media/MediaDrm;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/drm/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/drm/k0;->d:Landroidx/media3/exoplayer/drm/b0$c;

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
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroidx/media3/common/h;->b:Ljava/util/UUID;

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
    invoke-static {v0, v2}, Landroidx/media3/common/util/a;->b(ZLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 21
    .line 22
    new-instance v0, Landroid/media/MediaDrm;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/k0;->n(Ljava/util/UUID;)Ljava/util/UUID;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

    .line 32
    .line 33
    iput v1, p0, Landroidx/media3/exoplayer/drm/k0;->c:I

    .line 34
    .line 35
    sget-object v1, Landroidx/media3/common/h;->d:Ljava/util/UUID;

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
    invoke-static {}, Landroidx/media3/exoplayer/drm/k0;->w()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/k0;->q(Landroid/media/MediaDrm;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public static synthetic g(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/b0;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/k0;->v(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/drm/k0;Landroidx/media3/exoplayer/drm/b0$b;Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/drm/k0;->u(Landroidx/media3/exoplayer/drm/b0$b;Landroid/media/MediaDrm;[BII[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static i([B)[B
    .locals 7

    .line 1
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->u()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->w()S

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->w()S

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
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->w()S

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    invoke-virtual {v0, v5, v6}, Landroidx/media3/common/util/j0;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

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
    invoke-static {v4, v5}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {v4, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object p0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "<LA_URL>https://x</LA_URL>"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 13
    .line 14
    const/16 v2, 0x21

    .line 15
    .line 16
    if-lt v0, v2, :cond_2

    .line 17
    .line 18
    const-string v0, "https://default.url"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const-string v0, "version"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/k0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "1.2"

    .line 33
    .line 34
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    const-string v2, "aidl-1"

    .line 41
    .line 42
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    :cond_1
    return-object v1

    .line 49
    :cond_2
    return-object p1
.end method

.method private static k(Ljava/util/UUID;[B)[B
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/common/h;->c:Ljava/util/UUID;

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
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/a;->a([B)[B

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

.method private static l(Ljava/util/UUID;[B)[B
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/common/h;->e:Ljava/util/UUID;

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
    invoke-static {p1, p0}, Le3/p;->e([BLjava/util/UUID;)[B

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
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/k0;->i([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Le3/p;->a(Ljava/util/UUID;[B)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/k0;->o(Ljava/util/UUID;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Le3/p;->d([B)Le3/p$a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    sget-object p1, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    .line 38
    .line 39
    iget-object v2, v1, Le3/p$a;->d:[Ljava/util/UUID;

    .line 40
    .line 41
    iget-object v1, v1, Le3/p$a;->c:[B

    .line 42
    .line 43
    invoke-static {p1, v2, v1}, Le3/p;->b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_2
    sget v1, Landroidx/media3/common/util/a1;->a:I

    .line 48
    .line 49
    const/16 v2, 0x17

    .line 50
    .line 51
    if-ge v1, v2, :cond_3

    .line 52
    .line 53
    sget-object v1, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    const-string v0, "Amazon"

    .line 68
    .line 69
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 78
    .line 79
    const-string v1, "AFTB"

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_4

    .line 86
    .line 87
    const-string v1, "AFTS"

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    const-string v1, "AFTM"

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    const-string v1, "AFTT"

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    :cond_4
    invoke-static {p1, p0}, Le3/p;->e([BLjava/util/UUID;)[B

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eqz p0, :cond_5

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_5
    return-object p1
.end method

.method private static m(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Landroidx/media3/common/h;->c:Ljava/util/UUID;

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

.method private static n(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/k0;->o(Ljava/util/UUID;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/media3/common/h;->b:Ljava/util/UUID;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method private static o(Ljava/util/UUID;)Z
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static q(Landroid/media/MediaDrm;)V
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

.method private static s(Ljava/util/UUID;Ljava/util/List;)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 8

    .line 1
    sget-object v0, Landroidx/media3/common/h;->d:Ljava/util/UUID;

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
    check-cast p0, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget p0, Landroidx/media3/common/util/a1;->a:I

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
    check-cast p0, Landroidx/media3/common/DrmInitData$SchemeData;

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
    check-cast v4, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 49
    .line 50
    iget-object v5, v4, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 51
    .line 52
    invoke-static {v5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, [B

    .line 57
    .line 58
    iget-object v6, v4, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v7, p0, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    iget-object v4, v4, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v6, p0, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    invoke-static {v5}, Le3/p;->c([B)Z

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
    check-cast v4, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 104
    .line 105
    iget-object v4, v4, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 106
    .line 107
    invoke-static {v4}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, v1}, Landroidx/media3/common/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media3/common/DrmInitData$SchemeData;

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
    check-cast v1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 138
    .line 139
    iget-object v3, v1, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 140
    .line 141
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, [B

    .line 146
    .line 147
    invoke-static {v3}, Le3/p;->g([B)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    sget v4, Landroidx/media3/common/util/a1;->a:I

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
    check-cast p0, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 173
    .line 174
    return-object p0
.end method

.method private t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "version"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/drm/k0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "v5."

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string v1, "14."

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    const-string v1, "15."

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const-string v1, "16.0"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    .line 53
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 54
    .line 55
    sget-object v1, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    return v0
.end method

.method private synthetic u(Landroidx/media3/exoplayer/drm/b0$b;Landroid/media/MediaDrm;[BII[B)V
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
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/drm/b0$b;->a(Landroidx/media3/exoplayer/drm/b0;[BII[B)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic v(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/b0;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/k0;->x(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/k0;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

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
    invoke-static {v0, p0}, Landroidx/media3/common/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Landroidx/media3/exoplayer/drm/y;

    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/y;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method private static w()Z
    .locals 2

    .line 1
    const-string v0, "ASUS_Z00AD"

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

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

.method public static x(Ljava/util/UUID;)Landroidx/media3/exoplayer/drm/k0;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/drm/k0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/drm/k0;-><init>(Ljava/util/UUID;)V
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
    new-instance v0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :goto_1
    new-instance v0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

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

.method public bridge synthetic b([B)Landroidx/media3/decoder/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/drm/k0;->p([B)Landroidx/media3/exoplayer/drm/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c([BLjava/lang/String;)Z
    .locals 3

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/k0;->t()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

    .line 14
    .line 15
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/d0;->a(Landroid/media/MediaDrm;[B)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {v0, p2, p1}, Landroidx/media3/exoplayer/drm/k0$a;->a(Landroid/media/MediaDrm;Ljava/lang/String;I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :try_start_0
    new-instance v1, Landroid/media/MediaCrypto;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 28
    .line 29
    invoke-static {v2}, Landroidx/media3/exoplayer/drm/k0;->n(Ljava/util/UUID;)Ljava/util/UUID;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-virtual {v1, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_1
    .catch Landroid/media/MediaCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    move-object v0, v1

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-object v0, v1

    .line 48
    goto :goto_0

    .line 49
    :catchall_1
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :catch_1
    :goto_0
    :try_start_2
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 52
    .line 53
    sget-object p2, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    xor-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    return p1

    .line 67
    :goto_2
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 70
    .line 71
    .line 72
    :cond_2
    throw p1
.end method

.method public closeSession([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/b0$a;
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-static {v0, p2}, Landroidx/media3/exoplayer/drm/k0;->s(Ljava/util/UUID;Ljava/util/List;)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 10
    .line 11
    iget-object v1, p2, Landroidx/media3/common/DrmInitData$SchemeData;->data:[B

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, [B

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/drm/k0;->l(Ljava/util/UUID;[B)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 24
    .line 25
    iget-object v2, p2, Landroidx/media3/common/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/drm/k0;->m(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

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
    iget-object p3, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    invoke-static {p3, p4}, Landroidx/media3/exoplayer/drm/k0;->k(Ljava/util/UUID;[B)[B

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
    invoke-direct {p0, p4}, Landroidx/media3/exoplayer/drm/k0;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    iget-object v0, p2, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    iget-object p4, p2, Landroidx/media3/common/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 81
    .line 82
    :cond_1
    sget p2, Landroidx/media3/common/util/a1;->a:I

    .line 83
    .line 84
    const/16 v0, 0x17

    .line 85
    .line 86
    if-lt p2, v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const/high16 p1, -0x80000000

    .line 94
    .line 95
    :goto_1
    new-instance p2, Landroidx/media3/exoplayer/drm/b0$a;

    .line 96
    .line 97
    invoke-direct {p2, p3, p4, p1}, Landroidx/media3/exoplayer/drm/b0$a;-><init>([BLjava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    return-object p2
.end method

.method public e(Landroidx/media3/exoplayer/drm/b0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

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
    new-instance v1, Landroidx/media3/exoplayer/drm/f0;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/drm/f0;-><init>(Landroidx/media3/exoplayer/drm/k0;Landroidx/media3/exoplayer/drm/b0$b;)V

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

.method public f([BLx1/f4;)V
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/drm/k0$a;->b(Landroid/media/MediaDrm;[BLx1/f4;)V
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
    invoke-static {p1, p2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public getProvisionRequest()Landroidx/media3/exoplayer/drm/b0$d;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/media3/exoplayer/drm/b0$d;

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
    invoke-direct {v1, v2, v0}, Landroidx/media3/exoplayer/drm/b0$d;-><init>([BLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public openSession()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

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

.method public p([B)Landroidx/media3/exoplayer/drm/c0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/drm/c0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/exoplayer/drm/k0;->n(Ljava/util/UUID;)Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/drm/c0;-><init>(Ljava/util/UUID;[B)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/h;->c:Ljava/util/UUID;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/k0;->a:Ljava/util/UUID;

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
    invoke-static {p2}, Landroidx/media3/exoplayer/drm/a;->b([B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

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

.method public r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

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

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/drm/k0;->c:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/drm/k0;->c:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/k0;->b:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
