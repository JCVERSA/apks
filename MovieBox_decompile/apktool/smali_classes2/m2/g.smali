.class final Lm2/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lm2/a;


# instance fields
.field public final a:Landroidx/media3/common/r;


# direct methods
.method public constructor <init>(Landroidx/media3/common/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm2/g;->a:Landroidx/media3/common/r;

    .line 5
    .line 6
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 0

    .line 1
    sparse-switch p0, :sswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :sswitch_0
    const-string p0, "video/mjpeg"

    .line 7
    .line 8
    return-object p0

    .line 9
    :sswitch_1
    const-string p0, "video/mp43"

    .line 10
    .line 11
    return-object p0

    .line 12
    :sswitch_2
    const-string p0, "video/mp42"

    .line 13
    .line 14
    return-object p0

    .line 15
    :sswitch_3
    const-string p0, "video/avc"

    .line 16
    .line 17
    return-object p0

    .line 18
    :sswitch_4
    const-string p0, "video/mp4v-es"

    .line 19
    .line 20
    return-object p0

    .line 21
    :sswitch_data_0
    .sparse-switch
        0x30355844 -> :sswitch_4
        0x31435641 -> :sswitch_3
        0x31637661 -> :sswitch_3
        0x3234504d -> :sswitch_2
        0x3334504d -> :sswitch_1
        0x34363248 -> :sswitch_3
        0x34504d46 -> :sswitch_4
        0x44495633 -> :sswitch_4
        0x44495658 -> :sswitch_4
        0x47504a4d -> :sswitch_0
        0x58564944 -> :sswitch_4
        0x64697678 -> :sswitch_4
        0x67706a6d -> :sswitch_0
        0x78766964 -> :sswitch_4
    .end sparse-switch
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/16 v0, 0x55

    .line 5
    .line 6
    if-eq p0, v0, :cond_3

    .line 7
    .line 8
    const/16 v0, 0xff

    .line 9
    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/16 v0, 0x2000

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x2001

    .line 17
    .line 18
    if-eq p0, v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const-string p0, "audio/vnd.dts"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const-string p0, "audio/ac3"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    const-string p0, "audio/mp4a-latm"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    const-string p0, "audio/mpeg"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    const-string p0, "audio/raw"

    .line 35
    .line 36
    return-object p0
.end method

.method private static c(Landroidx/media3/common/util/j0;)Lm2/a;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Lm2/g;->a(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "Ignoring track with unsupported compression "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "StreamFormatChunk"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_0
    new-instance p0, Landroidx/media3/common/r$b;

    .line 51
    .line 52
    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 64
    .line 65
    .line 66
    new-instance v0, Lm2/g;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Lm2/g;-><init>(Landroidx/media3/common/r;)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public static d(ILandroidx/media3/common/util/j0;)Lm2/a;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Lm2/g;->c(Landroidx/media3/common/util/j0;)Lm2/a;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Lm2/g;->e(Landroidx/media3/common/util/j0;)Lm2/a;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "Ignoring strf box for unsupported track type: "

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/media3/common/util/a1;->t0(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "StreamFormatChunk"

    .line 39
    .line 40
    invoke-static {p1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method private static e(Landroidx/media3/common/util/j0;)Lm2/a;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lm2/g;->b(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Ignoring track with unsupported format tag "

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "StreamFormatChunk"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->z()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->u()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x6

    .line 44
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/j0;->X(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->z()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v3}, Landroidx/media3/common/util/a1;->i0(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x0

    .line 60
    if-lez v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->z()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v4, v5

    .line 68
    :goto_0
    new-instance v6, Landroidx/media3/common/r$b;

    .line 69
    .line 70
    invoke-direct {v6}, Landroidx/media3/common/r$b;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v7, v0}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, v2}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    .line 82
    .line 83
    .line 84
    const-string v0, "audio/raw"

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    invoke-virtual {v6, v3}, Landroidx/media3/common/r$b;->o0(I)Landroidx/media3/common/r$b;

    .line 95
    .line 96
    .line 97
    :cond_2
    const-string v0, "audio/mp4a-latm"

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    if-lez v4, :cond_3

    .line 106
    .line 107
    new-array v0, v4, [B

    .line 108
    .line 109
    invoke-virtual {p0, v0, v5, v4}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v6, p0}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    .line 117
    .line 118
    .line 119
    :cond_3
    new-instance p0, Lm2/g;

    .line 120
    .line 121
    invoke-virtual {v6}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p0, v0}, Lm2/g;-><init>(Landroidx/media3/common/r;)V

    .line 126
    .line 127
    .line 128
    return-object p0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    const v0, 0x66727473

    .line 2
    .line 3
    .line 4
    return v0
.end method
