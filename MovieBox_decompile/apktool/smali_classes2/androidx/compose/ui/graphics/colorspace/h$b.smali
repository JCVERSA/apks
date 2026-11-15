.class public final Landroidx/compose/ui/graphics/colorspace/h$b;
.super Landroidx/compose/ui/graphics/colorspace/h;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final h:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private final i:Landroidx/compose/ui/graphics/colorspace/Rgb;

.field private final j:[F


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/colorspace/h;-><init>(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->h:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 4
    iput-object p2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/h$b;->b(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->j:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/h$b;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    return-void
.end method

.method private final b(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/colorspace/d;->f(Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/y;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->G()[F

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->G()[F

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    sget-object v8, Landroidx/compose/ui/graphics/colorspace/k;->a:Landroidx/compose/ui/graphics/colorspace/k;

    .line 60
    .line 61
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/k;->b()Landroidx/compose/ui/graphics/colorspace/y;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-static {v7, v9}, Landroidx/compose/ui/graphics/colorspace/d;->f(Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/y;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    const-string v9, "copyOf(this, size)"

    .line 70
    .line 71
    if-nez v7, :cond_1

    .line 72
    .line 73
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/a;->b:Landroidx/compose/ui/graphics/colorspace/a$d;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/a$d;->a()Landroidx/compose/ui/graphics/colorspace/a;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/a;->b()[F

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/k;->c()[F

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    array-length v10, v7

    .line 88
    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v5, v7}, Landroidx/compose/ui/graphics/colorspace/d;->e([F[F[F)[F

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v3, p1}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/k;->b()Landroidx/compose/ui/graphics/colorspace/y;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {p1, v7}, Landroidx/compose/ui/graphics/colorspace/d;->f(Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/y;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/a;->b:Landroidx/compose/ui/graphics/colorspace/a$d;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/a$d;->a()Landroidx/compose/ui/graphics/colorspace/a;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/a;->b()[F

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/k;->c()[F

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    array-length v7, v4

    .line 136
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v6, v4}, Landroidx/compose/ui/graphics/colorspace/d;->e([F[F[F)[F

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Landroidx/compose/ui/graphics/colorspace/d;->k([F)[F

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    :cond_2
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/n;->a:Landroidx/compose/ui/graphics/colorspace/n$a;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/n$a;->a()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-static {p3, p1}, Landroidx/compose/ui/graphics/colorspace/n;->e(II)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_3

    .line 170
    .line 171
    aget p1, v5, v2

    .line 172
    .line 173
    aget p2, v6, v2

    .line 174
    .line 175
    div-float/2addr p1, p2

    .line 176
    aget p2, v5, v1

    .line 177
    .line 178
    aget p3, v6, v1

    .line 179
    .line 180
    div-float/2addr p2, p3

    .line 181
    aget p3, v5, v0

    .line 182
    .line 183
    aget v5, v6, v0

    .line 184
    .line 185
    div-float/2addr p3, v5

    .line 186
    const/4 v5, 0x3

    .line 187
    new-array v5, v5, [F

    .line 188
    .line 189
    aput p1, v5, v2

    .line 190
    .line 191
    aput p2, v5, v1

    .line 192
    .line 193
    aput p3, v5, v0

    .line 194
    .line 195
    invoke-static {v5, v3}, Landroidx/compose/ui/graphics/colorspace/d;->m([F[F)[F

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    :cond_3
    invoke-static {v4, v3}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    return-object p1
.end method


# virtual methods
.method public a(J)J
    .locals 6

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->r(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->q(J)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->o(J)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->n(J)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->h:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->E()Landroidx/compose/ui/graphics/colorspace/j;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    float-to-double v3, v0

    .line 24
    invoke-interface {p2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    double-to-float p2, v3

    .line 29
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->h:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->E()Landroidx/compose/ui/graphics/colorspace/j;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    float-to-double v3, v1

    .line 36
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    double-to-float v0, v0

    .line 41
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->h:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->E()Landroidx/compose/ui/graphics/colorspace/j;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    float-to-double v2, v2

    .line 48
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    double-to-float v1, v1

    .line 53
    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->j:[F

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    aget v3, v2, v3

    .line 57
    .line 58
    mul-float/2addr v3, p2

    .line 59
    const/4 v4, 0x3

    .line 60
    aget v4, v2, v4

    .line 61
    .line 62
    mul-float/2addr v4, v0

    .line 63
    add-float/2addr v3, v4

    .line 64
    const/4 v4, 0x6

    .line 65
    aget v4, v2, v4

    .line 66
    .line 67
    mul-float/2addr v4, v1

    .line 68
    add-float/2addr v3, v4

    .line 69
    const/4 v4, 0x1

    .line 70
    aget v4, v2, v4

    .line 71
    .line 72
    mul-float/2addr v4, p2

    .line 73
    const/4 v5, 0x4

    .line 74
    aget v5, v2, v5

    .line 75
    .line 76
    mul-float/2addr v5, v0

    .line 77
    add-float/2addr v4, v5

    .line 78
    const/4 v5, 0x7

    .line 79
    aget v5, v2, v5

    .line 80
    .line 81
    mul-float/2addr v5, v1

    .line 82
    add-float/2addr v4, v5

    .line 83
    const/4 v5, 0x2

    .line 84
    aget v5, v2, v5

    .line 85
    .line 86
    mul-float/2addr v5, p2

    .line 87
    const/4 p2, 0x5

    .line 88
    aget p2, v2, p2

    .line 89
    .line 90
    mul-float/2addr p2, v0

    .line 91
    add-float/2addr v5, p2

    .line 92
    const/16 p2, 0x8

    .line 93
    .line 94
    aget p2, v2, p2

    .line 95
    .line 96
    mul-float/2addr p2, v1

    .line 97
    add-float/2addr v5, p2

    .line 98
    iget-object p2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->I()Landroidx/compose/ui/graphics/colorspace/j;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    float-to-double v0, v3

    .line 105
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    double-to-float p2, v0

    .line 110
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->I()Landroidx/compose/ui/graphics/colorspace/j;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    float-to-double v1, v4

    .line 117
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    double-to-float v0, v0

    .line 122
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 123
    .line 124
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->I()Landroidx/compose/ui/graphics/colorspace/j;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    float-to-double v2, v5

    .line 129
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/j;->a(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    double-to-float v1, v1

    .line 134
    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/h$b;->i:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 135
    .line 136
    invoke-static {p2, v0, v1, p1, v2}, Landroidx/compose/ui/graphics/w1;->a(FFFFLandroidx/compose/ui/graphics/colorspace/c;)J

    .line 137
    .line 138
    .line 139
    move-result-wide p1

    .line 140
    return-wide p1
.end method
