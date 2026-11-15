.class public final Landroidx/compose/ui/graphics/vector/VectorComponent;
.super Landroidx/compose/ui/graphics/vector/i;
.source "source.java"


# instance fields
.field private final b:Landroidx/compose/ui/graphics/vector/GroupComponent;

.field private c:Ljava/lang/String;

.field private d:Z

.field private final e:Landroidx/compose/ui/graphics/vector/a;

.field private f:Lkotlin/jvm/functions/Function0;

.field private final g:Landroidx/compose/runtime/i1;

.field private h:Landroidx/compose/ui/graphics/v1;

.field private final i:Landroidx/compose/runtime/i1;

.field private j:J

.field private k:F

.field private l:F

.field private final m:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 6
    .line 7
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorComponent$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Landroidx/compose/ui/graphics/vector/VectorComponent$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->d(Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    .line 21
    .line 22
    new-instance p1, Landroidx/compose/ui/graphics/vector/a;

    .line 23
    .line 24
    invoke-direct {p1}, Landroidx/compose/ui/graphics/vector/a;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/a;

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/ui/graphics/vector/VectorComponent$invalidateCallback$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComponent$invalidateCallback$1;

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->f:Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    invoke-static {v0, v0, p1, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/i1;

    .line 39
    .line 40
    sget-object v1, Ly/m;->b:Ly/m$a;

    .line 41
    .line 42
    invoke-virtual {v1}, Ly/m$a;->b()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Ly/m;->c(J)Ly/m;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2, v0, p1, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/i1;

    .line 55
    .line 56
    invoke-virtual {v1}, Ly/m$a;->a()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    .line 61
    .line 62
    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    .line 64
    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->k:F

    .line 65
    .line 66
    iput p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->l:F

    .line 67
    .line 68
    new-instance p1, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorComponent;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->m:Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/ui/graphics/vector/VectorComponent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/ui/graphics/vector/VectorComponent;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->k:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Landroidx/compose/ui/graphics/vector/VectorComponent;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->l:F

    .line 2
    .line 3
    return p0
.end method

.method private final h()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->f:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Lz/g;)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->i(Lz/g;FLandroidx/compose/ui/graphics/v1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final i(Lz/g;FLandroidx/compose/ui/graphics/v1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->g()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x10

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->k()Landroidx/compose/ui/graphics/v1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/k;->f(Landroidx/compose/ui/graphics/v1;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {p3}, Landroidx/compose/ui/graphics/vector/k;->f(Landroidx/compose/ui/graphics/v1;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->a()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_0
    move v2, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->b()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    .line 57
    .line 58
    invoke-interface {p1}, Lz/g;->i()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    invoke-static {v0, v1, v3, v4}, Ly/m;->f(JJ)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->j()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->a()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v2, v0}, Landroidx/compose/ui/graphics/f4;->i(II)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    sget-object v3, Landroidx/compose/ui/graphics/v1;->b:Landroidx/compose/ui/graphics/v1$a;

    .line 91
    .line 92
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->g()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    const/4 v7, 0x2

    .line 99
    const/4 v8, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/graphics/v1$a;->b(Landroidx/compose/ui/graphics/v1$a;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/v1;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    const/4 v0, 0x0

    .line 107
    :goto_2
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->h:Landroidx/compose/ui/graphics/v1;

    .line 108
    .line 109
    invoke-interface {p1}, Lz/g;->i()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    invoke-static {v0, v1}, Ly/m;->i(J)F

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->m()J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    invoke-static {v3, v4}, Ly/m;->i(J)F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    div-float/2addr v0, v1

    .line 126
    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->k:F

    .line 127
    .line 128
    invoke-interface {p1}, Lz/g;->i()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    invoke-static {v0, v1}, Ly/m;->g(J)F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->m()J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    invoke-static {v3, v4}, Ly/m;->g(J)F

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    div-float/2addr v0, v1

    .line 145
    iput v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->l:F

    .line 146
    .line 147
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/a;

    .line 148
    .line 149
    invoke-interface {p1}, Lz/g;->i()J

    .line 150
    .line 151
    .line 152
    move-result-wide v3

    .line 153
    invoke-static {v3, v4}, Ly/m;->i(J)F

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    float-to-double v3, v0

    .line 158
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v3

    .line 162
    double-to-float v0, v3

    .line 163
    float-to-int v0, v0

    .line 164
    invoke-interface {p1}, Lz/g;->i()J

    .line 165
    .line 166
    .line 167
    move-result-wide v3

    .line 168
    invoke-static {v3, v4}, Ly/m;->g(J)F

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    float-to-double v3, v3

    .line 173
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 174
    .line 175
    .line 176
    move-result-wide v3

    .line 177
    double-to-float v3, v3

    .line 178
    float-to-int v3, v3

    .line 179
    invoke-static {v0, v3}, Lo0/u;->a(II)J

    .line 180
    .line 181
    .line 182
    move-result-wide v3

    .line 183
    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    iget-object v7, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->m:Lkotlin/jvm/functions/Function1;

    .line 188
    .line 189
    move-object v5, p1

    .line 190
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/a;->b(IJLo0/e;Landroidx/compose/ui/unit/LayoutDirection;Lkotlin/jvm/functions/Function1;)V

    .line 191
    .line 192
    .line 193
    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->d:Z

    .line 195
    .line 196
    invoke-interface {p1}, Lz/g;->i()J

    .line 197
    .line 198
    .line 199
    move-result-wide v0

    .line 200
    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->j:J

    .line 201
    .line 202
    :cond_3
    if-eqz p3, :cond_4

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->k()Landroidx/compose/ui/graphics/v1;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    if-eqz p3, :cond_5

    .line 210
    .line 211
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->k()Landroidx/compose/ui/graphics/v1;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    goto :goto_3

    .line 216
    :cond_5
    iget-object p3, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->h:Landroidx/compose/ui/graphics/v1;

    .line 217
    .line 218
    :goto_3
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/a;

    .line 219
    .line 220
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/graphics/vector/a;->c(Lz/g;FLandroidx/compose/ui/graphics/v1;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->e:Landroidx/compose/ui/graphics/vector/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/a;->d()Landroidx/compose/ui/graphics/e4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/graphics/e4;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/f4;->b:Landroidx/compose/ui/graphics/f4$a;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/f4$a;->b()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    return v0
.end method

.method public final k()Landroidx/compose/ui/graphics/v1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/graphics/v1;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l()Landroidx/compose/ui/graphics/vector/GroupComponent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->b:Landroidx/compose/ui/graphics/vector/GroupComponent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly/m;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly/m;->m()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final n(Landroidx/compose/ui/graphics/v1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final q(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/i1;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ly/m;->c(J)Ly/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Params: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "\tname: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "\n"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "\tviewportWidth: "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->m()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {v2, v3}, Ly/m;->i(J)F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, "\tviewportHeight: "

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/VectorComponent;->m()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-static {v2, v3}, Ly/m;->g(J)F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method
