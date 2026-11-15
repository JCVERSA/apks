.class public final Landroidx/media3/container/ObuParser$d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/ObuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:I


# direct methods
.method private constructor <init>(Landroidx/media3/container/ObuParser$c;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroidx/media3/container/ObuParser$c;->a:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Landroidx/media3/container/ObuParser$c;->b:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/media3/container/ObuParser$c;->b:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroidx/media3/common/util/i0;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Landroidx/media3/common/util/i0;-><init>([B)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->r(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$d;->a:Z

    .line 47
    .line 48
    invoke-static {v3}, Landroidx/media3/container/ObuParser;->a(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-static {p1}, Landroidx/media3/container/ObuParser$d;->b(Landroidx/media3/common/util/i0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$d;->b:Z

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    const/16 v3, 0x2f

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iput-boolean v1, p0, Landroidx/media3/container/ObuParser$d;->b:Z

    .line 75
    .line 76
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const/4 v4, 0x5

    .line 81
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/i0;->h(I)I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    move v6, v1

    .line 86
    :goto_2
    if-gt v6, v5, :cond_5

    .line 87
    .line 88
    const/16 v7, 0xc

    .line 89
    .line 90
    invoke-virtual {p1, v7}, Landroidx/media3/common/util/i0;->r(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/i0;->h(I)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x7

    .line 98
    if-le v7, v8, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->q()V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-boolean v7, p0, Landroidx/media3/container/ObuParser$d;->b:Z

    .line 104
    .line 105
    invoke-static {v7}, Landroidx/media3/container/ObuParser;->a(Z)V

    .line 106
    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->r(I)V

    .line 117
    .line 118
    .line 119
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->h(I)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->h(I)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    add-int/2addr v3, v2

    .line 131
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    .line 132
    .line 133
    .line 134
    add-int/2addr v4, v2

    .line 135
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/i0;->r(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    iput-boolean v3, p0, Landroidx/media3/container/ObuParser$d;->c:Z

    .line 143
    .line 144
    invoke-static {v3}, Landroidx/media3/container/ObuParser;->a(Z)V

    .line 145
    .line 146
    .line 147
    const/4 v3, 0x3

    .line 148
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/i0;->r(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/i0;->r(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    const/4 v4, 0x2

    .line 161
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/i0;->r(I)V

    .line 162
    .line 163
    .line 164
    :cond_6
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_7

    .line 169
    .line 170
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$d;->d:Z

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    iput-boolean v4, p0, Landroidx/media3/container/ObuParser$d;->d:Z

    .line 178
    .line 179
    :goto_3
    iget-boolean v4, p0, Landroidx/media3/container/ObuParser$d;->d:Z

    .line 180
    .line 181
    if-eqz v4, :cond_9

    .line 182
    .line 183
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-eqz v4, :cond_8

    .line 188
    .line 189
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$d;->e:Z

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_8
    invoke-virtual {p1}, Landroidx/media3/common/util/i0;->g()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    iput-boolean v4, p0, Landroidx/media3/container/ObuParser$d;->e:Z

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    iput-boolean v2, p0, Landroidx/media3/container/ObuParser$d;->e:Z

    .line 200
    .line 201
    :goto_4
    if-eqz v0, :cond_a

    .line 202
    .line 203
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/i0;->h(I)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    add-int/2addr p1, v2

    .line 208
    iput p1, p0, Landroidx/media3/container/ObuParser$d;->f:I

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_a
    iput v1, p0, Landroidx/media3/container/ObuParser$d;->f:I

    .line 212
    .line 213
    :goto_5
    return-void
.end method

.method public static a(Landroidx/media3/container/ObuParser$c;)Landroidx/media3/container/ObuParser$d;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroidx/media3/container/ObuParser$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/media3/container/ObuParser$d;-><init>(Landroidx/media3/container/ObuParser$c;)V
    :try_end_0
    .catch Landroidx/media3/container/ObuParser$NotYetImplementedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    const/4 p0, 0x0

    .line 8
    return-object p0
.end method

.method private static b(Landroidx/media3/common/util/i0;)V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/i0;->r(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/common/util/i0;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/media3/container/ObuParser;->b(Landroidx/media3/common/util/i0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
