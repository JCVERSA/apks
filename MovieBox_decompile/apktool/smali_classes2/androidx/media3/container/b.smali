.class public final Landroidx/media3/container/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/common/x$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p4}, Landroidx/media3/container/b;->d(Ljava/lang/String;[BI)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/media3/container/b;->b:[B

    .line 10
    .line 11
    iput p3, p0, Landroidx/media3/container/b;->c:I

    .line 12
    .line 13
    iput p4, p0, Landroidx/media3/container/b;->d:I

    .line 14
    .line 15
    return-void
.end method

.method private static c(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "track types = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x2c

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/common/base/g;->g(C)Lcom/google/common/base/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/g;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private static d(Ljava/lang/String;[BI)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    sparse-switch v4, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :sswitch_0
    const-string v4, "auxiliary.tracks.map"

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v0

    .line 26
    goto :goto_0

    .line 27
    :sswitch_1
    const-string v4, "auxiliary.tracks.offset"

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x3

    .line 37
    goto :goto_0

    .line 38
    :sswitch_2
    const-string v4, "auxiliary.tracks.length"

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v3, 0x2

    .line 48
    goto :goto_0

    .line 49
    :sswitch_3
    const-string v4, "auxiliary.tracks.interleaved"

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v3, v2

    .line 59
    goto :goto_0

    .line 60
    :sswitch_4
    const-string v4, "com.android.capture.fps"

    .line 61
    .line 62
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move v3, v1

    .line 70
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :pswitch_0
    if-nez p2, :cond_5

    .line 75
    .line 76
    move v1, v2

    .line 77
    :cond_5
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_1
    const/16 p0, 0x4e

    .line 82
    .line 83
    if-ne p2, p0, :cond_6

    .line 84
    .line 85
    array-length p0, p1

    .line 86
    const/16 p1, 0x8

    .line 87
    .line 88
    if-ne p0, p1, :cond_6

    .line 89
    .line 90
    move v1, v2

    .line 91
    :cond_6
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :pswitch_2
    const/16 p0, 0x4b

    .line 96
    .line 97
    if-ne p2, p0, :cond_8

    .line 98
    .line 99
    array-length p0, p1

    .line 100
    if-ne p0, v2, :cond_8

    .line 101
    .line 102
    aget-byte p0, p1, v1

    .line 103
    .line 104
    if-eqz p0, :cond_7

    .line 105
    .line 106
    if-ne p0, v2, :cond_8

    .line 107
    .line 108
    :cond_7
    move v1, v2

    .line 109
    :cond_8
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :pswitch_3
    const/16 p0, 0x17

    .line 114
    .line 115
    if-ne p2, p0, :cond_9

    .line 116
    .line 117
    array-length p0, p1

    .line 118
    if-ne p0, v0, :cond_9

    .line 119
    .line 120
    move v1, v2

    .line 121
    :cond_9
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    .line 122
    .line 123
    .line 124
    :goto_1
    return-void

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x7438daab -> :sswitch_4
        -0x100eb5d5 -> :sswitch_3
        0x3c4d37e4 -> :sswitch_2
        0x41766191 -> :sswitch_1
        0x7755f91e -> :sswitch_0
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public synthetic a(Landroidx/media3/common/v$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/w;->c(Landroidx/media3/common/x$a;Landroidx/media3/common/v$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "auxiliary.tracks.map"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "Metadata is not an auxiliary tracks map"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/media3/common/util/a;->h(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget-byte v0, v0, v1

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v0, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/media3/container/b;->b:[B

    .line 28
    .line 29
    add-int/lit8 v4, v2, 0x2

    .line 30
    .line 31
    aget-byte v3, v3, v4

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroidx/media3/container/b;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroidx/media3/container/b;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Landroidx/media3/container/b;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/media3/container/b;->b:[B

    .line 30
    .line 31
    iget-object v3, p1, Landroidx/media3/container/b;->b:[B

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget v2, p0, Landroidx/media3/container/b;->c:I

    .line 40
    .line 41
    iget v3, p1, Landroidx/media3/container/b;->c:I

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget v2, p0, Landroidx/media3/container/b;->d:I

    .line 46
    .line 47
    iget p1, p1, Landroidx/media3/container/b;->d:I

    .line 48
    .line 49
    if-ne v2, p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v0, v1

    .line 53
    :goto_0
    return v0

    .line 54
    :cond_3
    :goto_1
    return v1
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/w;->a(Landroidx/media3/common/x$a;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Landroidx/media3/common/r;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/media3/common/w;->b(Landroidx/media3/common/x$a;)Landroidx/media3/common/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x20f

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    mul-int/lit8 v1, v1, 0x1f

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x1f

    .line 20
    .line 21
    iget v0, p0, Landroidx/media3/container/b;->c:I

    .line 22
    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    .line 26
    iget v0, p0, Landroidx/media3/container/b;->d:I

    .line 27
    .line 28
    add-int/2addr v1, v0

    .line 29
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/container/b;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/16 v1, 0x17

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/16 v1, 0x43

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x4b

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x4e

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/container/b;->b:[B

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>([B)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->O()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    aget-byte v0, v0, v1

    .line 45
    .line 46
    invoke-static {v0}, Landroidx/media3/container/a;->a(B)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    .line 56
    .line 57
    invoke-static {v0}, Lcom/google/common/primitives/Ints;->g([B)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    .line 67
    .line 68
    invoke-static {v0}, Lcom/google/common/primitives/Ints;->g([B)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    .line 82
    .line 83
    invoke-static {v0}, Landroidx/media3/common/util/a1;->H([B)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    iget-object v0, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, "auxiliary.tracks.map"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/media3/container/b;->b()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Landroidx/media3/container/b;->c(Ljava/util/List;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    :goto_0
    iget-object v0, p0, Landroidx/media3/container/b;->b:[B

    .line 108
    .line 109
    invoke-static {v0}, Landroidx/media3/common/util/a1;->u1([B)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v2, "mdta: key="

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Landroidx/media3/container/b;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, ", value="

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0
.end method
